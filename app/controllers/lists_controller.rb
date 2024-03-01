class ListsController < ApplicationController
  def index
    @list = List.all
  end

  def show
    @list = List.find(params[:id])


  end

  def new
    @list = List.new


  end

  def create
    @list = List.new(params.require(:list).permit(:name))
    @list.save

    redirect_to list_path(@list)


  end

end
