class Item < ApplicationRecord
  has_one_attached :image
  belongs_to :category

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category


  validates :genre_id, numericality: { other_than: 1 , message: "can't be blank"} 
end
