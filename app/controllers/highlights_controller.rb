class HighlightsController < ApplicationController

  def index
    @highlights = Highlight.all
  end

  def show
    @work = Work.find(params[:work_id])
    @highlight = Highlight.find(params[:id])
  end

  def new
    @work = Work.find(params[:work_id])
    @highlight = Highlight.new
  end

  def create
    @work = Work.find(params[:work_id])
    @highlight = Highlight.new(highlight_params)

    if @highlight.save      
      redirect_to @work
    else
      render :new
    end
  end

  def edit
    @work = Work.find(params[:work_id])
    @highlight = Highlight.find(params[:id])
  end

  def update

    @work = Work.find(params[:work_id])
    @highlight = Highlight.find(params[:id])

    if @highlight.update(highlight_params)
      redirect_to @work # work_highlight_path(id: @highlight.id)
    else
      render :edit
    end
  end

  private

  def highlight_params
    params.require(:highlight).permit(:detail, :work_id)
  end
end
