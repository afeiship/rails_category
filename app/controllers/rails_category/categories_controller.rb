require_dependency "rails_category/application_controller"

module RailsCategory
  class CategoriesController < ApplicationController
    before_action :find_item, only: [:show, :edit, :update, :destroy]

    def index
      @categories = Category.tree.to_json
    end

    def show
    end

    def new
      @category = Category.new
      @categories = Category.all
    end

    def create
      @category = Category.new allow_params
      if @category.save
        redirect_to @category
      else
        render :new
      end
    end

    def edit
      @categories = Category.all
    end

    def update
      if @category.update allow_params
        redirect_to @category
      else
        render :edit
      end
    end

    def destroy
    end

    private

    def allow_params
      params.require(:category).permit(:name, :description, :parent_id)
    end

    def find_item
      @category = Category.find(params[:id])
    end
  end
end
