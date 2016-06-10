class AfricanctrytablesController < ApplicationController
  def index
    @africanctrytables = Africanctrytable.all
  end

  def show
    @africanctrytable = Africanctrytable.find(params[:id])
  end

  def new
    @africanctrytable = Africanctrytable.new
  end

  def create
    @africanctrytable = Africanctrytable.new
    @africanctrytable.AAC_id = params[:AAC_id]
    @africanctrytable.AAC = params[:AAC]
    @africanctrytable.AAC_foreignkey = params[:AAC_foreignkey]

    if @africanctrytable.save
      redirect_to "/africanctrytables", :notice => "Africanctrytable created successfully."
    else
      render 'new'
    end
  end

  def edit
    @africanctrytable = Africanctrytable.find(params[:id])
  end

  def update
    @africanctrytable = Africanctrytable.find(params[:id])

    @africanctrytable.AAC_id = params[:AAC_id]
    @africanctrytable.AAC = params[:AAC]
    @africanctrytable.AAC_foreignkey = params[:AAC_foreignkey]

    if @africanctrytable.save
      redirect_to "/africanctrytables", :notice => "Africanctrytable updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @africanctrytable = Africanctrytable.find(params[:id])

    @africanctrytable.destroy

    redirect_to "/africanctrytables", :notice => "Africanctrytable deleted."
  end
end
