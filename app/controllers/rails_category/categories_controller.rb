require 'rails'

module RailsCategory
  class CategoriesController < ApplicationController
    before_action :find_item, only: [:show, :edit, :update, :destroy]
    before_action :find_all, only: [:index, :new, :edit]

    def index
    end

    def show
    end

    def new
      @item = Category.new
    end

    def create
      @item = Category.new allow_params
      if @item.save
        redirect_to @item
      else
        render :new
      end
    end

    def edit
    end

    def update
      if @item.update allow_params
        redirect_to @item
      else
        render :edit
      end
    end

    def destroy
      @item.destroy
    end

    private
    def allow_params
      params.require(:rails_category_category).permit(:name, :description, :parent_id)
    end

    def find_item
      @item = Category.find(params[:id])
    end

    def find_all
      @items = Category.all
    end
  end
end
