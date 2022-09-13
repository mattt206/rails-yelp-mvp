class Restaurant < ApplicationRecord
  # categorias disponibles para validation
  CATEGORIES = %w[chinese italian japanese french belgian].freeze
  validates :name, :address, presence: true
  # linea para genera la validacion de solo las categorias que indiquemos
  validates :category, inclusion: { in: CATEGORIES }
  # dependdencia de las reviews con el metodo destroy
  has_many :reviews, dependent: :destroy
end
