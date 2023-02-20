class ListsController < ApplicationController
    def index
        List.all
    end

    def show
        List.find(params[:id])
    end

    def new
        List.new
    end

    def create 
        list = List.new(list_params)
        list.save!
        redirect_to list_path(list)
    end

    private

    def list_params
        params.require(:list).permit(:name)
    end
end
