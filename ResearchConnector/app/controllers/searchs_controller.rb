class SearchsController < ApplicationController
  def index
    @q = Granttable.ransack(params[:q])
    @granttables = @q.result
    render 'index'
  end

  def show
    @q = Granttable.ransack(params[:q])
    @granttables = @q.result
  end

  def showModified
    @q = Granttable.ransack(params[:q])
    @granttables = @q.result
  end

  def new
    @search = Search.new
  end

  # def index
  #   @searchs = Search.all
  # end

  # def show
  #   @search = Search.find(params[:id])
  # end

end
