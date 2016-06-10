class WorldctrytablesController < ApplicationController
  def index
    @worldctrytables = Worldctrytable.all
  end

  def show
    @worldctrytable = Worldctrytable.find(params[:id])
  end

  def new
    @worldctrytable = Worldctrytable.new
  end

  def create
    @worldctrytable = Worldctrytable.new
    @worldctrytable.COR_id = params[:COR_id]
    @worldctrytable.COR = params[:COR]
    @worldctrytable.COR_foreignkey = params[:COR_foreignkey]

    if @worldctrytable.save
      redirect_to "/worldctrytables", :notice => "Worldctrytable created successfully."
    else
      render 'new'
    end
  end

  def edit
    @worldctrytable = Worldctrytable.find(params[:id])
  end

  def update
    @worldctrytable = Worldctrytable.find(params[:id])

    @worldctrytable.COR_id = params[:COR_id]
    @worldctrytable.COR = params[:COR]
    @worldctrytable.COR_foreignkey = params[:COR_foreignkey]

    if @worldctrytable.save
      redirect_to "/worldctrytables", :notice => "Worldctrytable updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @worldctrytable = Worldctrytable.find(params[:id])

    @worldctrytable.destroy

    redirect_to "/worldctrytables", :notice => "Worldctrytable deleted."
  end
end
