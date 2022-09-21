class Item < ApplicationRecord
  validates :image, presence: true
  validates :name, presence: true
  validates :introduction, presence: true
  validates :category_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :item_condition_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :delivery_charge_payer_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :prefecture_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :shipping_date_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :price, numericality: { only_integer:true, greater_than_or_equal_to: 300, less_than_or_equal_to: 9_999_999 }

  has_one_attached :image
  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :item_condition
  belongs_to_active_hash :delivery_charge_payer
  belongs_to_active_hash :prefecture
  belongs_to_active_hash :shipping_date
end
