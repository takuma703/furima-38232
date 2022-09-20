class ItemsController < ApplicationController
  def index
    @items = Item.order("created_at DESC")
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def item_params
    params.require(:item).permit(
      :name,
      :introduction
      :category_id
      :item_condition_id
      :delivery_charge_payer_id
      :prefecture_id
      :price
      :shipping_date_id).merge(user_id: current_user.id)
  end
end
