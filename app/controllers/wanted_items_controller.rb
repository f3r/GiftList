class WantedItemsController < ApplicationController
  before_action :set_wanted_item, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @wanted_items = WantedItem.all
    respond_with(@wanted_items)
  end

  def show
    respond_with(@wanted_item)
  end

  def new
    @wanted_item = WantedItem.new
    respond_with(@wanted_item)
  end

  def edit
  end

  def create
    @wanted_item = WantedItem.new(wanted_item_params)
    @wanted_item.save
    respond_with(@wanted_item)
  end

  def update
    @wanted_item.update(wanted_item_params)
    respond_with(@wanted_item)
  end

  def destroy
    @wanted_item.destroy
    respond_with(@wanted_item)
  end

  private
    def set_wanted_item
      @wanted_item = WantedItem.find(params[:id])
    end

    def wanted_item_params
      params[:wanted_item]
    end
end
