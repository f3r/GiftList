class WelcomeController < ApplicationController
  def index
    @items = Item.all
    @lists = current_user.lists.all
  end
end
