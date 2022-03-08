class CardsController < ApplicationController
  before_action :move_to_index, except: :index

  def index

  end

  def new
    @card = Card.new
  end

  def create
    @card = Card.new(card_params)
    if @card.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end

  def card_params
    params.require(:card).permit(:card_name, :category_id, :shop, :expiration, :image).merge(user_id: current_user.id)
  end
end