require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
     @item = FactoryBot.build(:item)
  end
  describe '商品の投稿' do
    it '必須項目を入力した上で出品ができる' do
      expect(@item).to  be_valid
    end
    it 'イメージが空だと保存できない' do
      @item.image = nil
      @item.valid?
      expect(@item.errors.full_messages).to include ("Image can't be blank")
    end     
    it '商品名が空だと保存できない' do
      @item.name = ''
      @item.valid?
      expect(@item.errors.full_messages).to include ("Name can't be blank")
    end
    it '商品の説明が空だと保存できない' do
      @item.introduction = ''
      @item.valid?
      expect(@item.errors.full_messages).to include ("Introduction can't be blank")
    end
    it 'カテゴリーが空だと保存できない' do
      @item.category_id = ''
      @item.valid?
      expect(@item.errors.full_messages).to include ("Category can't be blank")
    end
    it '商品の状態が空だと保存できない' do
      @item.item_condition_id = ''
      @item.valid?
      expect(@item.errors.full_messages).to include ("Item condition can't be blank")
    end
    it '配送料の負担が空だと保存できない' do
      @item.delivery_charge_payer_id = ''
      @item.valid?
      expect(@item.errors.full_messages).to include ("Delivery charge payer can't be blank")
    end
    it '発送元の地域が空だと保存できない' do
      @item.prefecture_id = ''
      @item.valid?
      expect(@item.errors.full_messages).to include ("Prefecture can't be blank")
    end
    it '発送までの日数が空だと保存できない' do
      @item.shipping_date_id = ''
      @item.valid?
      expect(@item.errors.full_messages).to include ("Shipping date can't be blank")
    end
    it '価格が空だと保存できない' do
      @item.price = ''
      @item.valid?
      expect(@item.errors.full_messages).to include ("Price is invalid")
    end
    it '価格が数字以外だと保存できない' do
      @item.price = '百'
      @item.valid?
      expect(@item.errors.full_messages).to include ("Price is not a number")
    end
  end
end
