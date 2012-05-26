class ItemsController < ApplicationController
  before_filter :authenticate_user!, :only => [:new,:create]
  respond_to :html
  def seasonal
    @items = Item.get_seasonal
    respond_with @items
  end

  def custom
    @items = Item.get_custom
    respond_with @items
  end

  def plants
    @items = Item.get_plants
    respond_with @items
  end

  def premier
    @items = Item.get_premier
    respond_with @items
  end

  def new
    @item = Item.new
   
    respond_with @item
  end
  
  def index
    @items = Item.all();
    respond_with @items
  end
  def show
    @item = Item.find_by_number(params[:id])
    respond_with @item
  end
  def create
    @item = Item.create(params[:item])
    if @item.save
      flash[:notice] = "Item was successfully created"
    end
    respond_with @item
  end
  
  def edit
    @item = Item.find_by_number(params[:id])
    respond_with @item
  end
  
  def update
    @item = Item.find_by_number(params[:id])
    if @item.update_attributes(params[:item])
      flash[:notice] = "Item was successfully updated"
    end
    respond_with @item
  end
  
  def destroy
    @item = Item.find_by_number(params[:id])
    @item.destroy
    flash[:notice] = "Item was successfully destroyed"
    respond_with @item
  end
  

end
