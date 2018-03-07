class Product < ActiveRecord::Base
  validates :name, presence: true
  validates :price, numericality: true

  #added in dev
end
