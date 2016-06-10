class GranttablesController < ApplicationController
  def index
    @q = Granttable.ransack(params[:q])
    @granttables = @q.result

  end

  def show
    @granttable = Granttable.find(params[:id])
  end

  def new
    @granttable = Granttable.new
  end

  def create
    @granttable = Granttable.new
    @granttable.grant_id = params[:grant_id]
    @granttable.field = params[:field]
    @granttable.field_id = params[:field_id]
    @granttable.research_need = params[:research_need]
    @granttable.grant_amt = params[:grant_amt]
    @granttable.title = params[:title]
    @granttable.abstract = params[:abstract]
    @granttable.more_details = params[:more_details]

    if @granttable.save
      redirect_to "/granttables", :notice => "Granttable created successfully."
    else
      render 'new'
    end
  end

  def edit
    @granttable = Granttable.find(params[:id])
  end

  def update
    @granttable = Granttable.find(params[:id])

    @granttable.grant_id = params[:grant_id]
    @granttable.field = params[:field]
    @granttable.field_id = params[:field_id]
    @granttable.research_need = params[:research_need]
    @granttable.grant_amt = params[:grant_amt]
    @granttable.title = params[:title]
    @granttable.abstract = params[:abstract]
    @granttable.more_details = params[:more_details]

    if @granttable.save
      redirect_to "/granttables", :notice => "Granttable updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @granttable = Granttable.find(params[:id])

    @granttable.destroy

    redirect_to "/granttables", :notice => "Granttable deleted."
  end
end
