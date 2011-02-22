class CardsController < ApplicationController

   def new
     @card = Card.new
   end

   def create
     @card = Card.create(params[:card])
     redirect_to card_path(@card[:uuid])
   end

   def show
     @card = Card.find(params[:id])
     @signatures = Signature.find_all_by_card_id(@card[:uuid])
     render :layout => 'card'
   end

end
