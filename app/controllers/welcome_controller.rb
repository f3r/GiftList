class WelcomeController < ApplicationController
  def index
    @items = Item.all
    if user_signed_in?
      @lists = current_user.lists.all
    end
  end
end
