class Item < ApplicationRecord
  has_one_attached :image

  validates :name, presence: true
  validates :introduction, presence: true
  validates :category_id, numericality: { other_than: 1 , message: "can't be blank"} 
  validates :item_condition, numericality: { other_than: 1 , message: "can't be blank"} 
  validates :delivery_charge_payer, numericality: { other_than: 1 , message: "can't be blank"} 
  validates :prefecture, numericality: { other_than: 1 , message: "can't be blank"} 
  validates :shipping_date, numericality: { other_than: 1 , message: "can't be blank"} 
  validates :price, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 9_999_999 },format: { with: /\A[0-9]+\z/ }

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :item_condition
  belongs_to :delivery_charge_payer
  belongs_to :prefecture
  belongs_to :shipping_date

end
