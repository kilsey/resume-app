class HighlightsController < ApplicationController

  def index
    @highlights = Highlight.all
  end

  def show
    @highlight = Highlight.find(params[:id])
  end

  def new
    @highlight = Highlight.new
  end

  def create
    @highlight = Highlight.new(highlight_params)

    if @highlight.save
      redirect_to @highlight
    else
      render :new
    end
  end

  def edit
    @highlight = Highlight.find(params[:id])
  end

  def update
    @highlight = Highlight.find(params[:id])

    if @highlight.update(highlight_params)
      redirect_to @highlight
    else
      render :edit
    end
  end

  private

  def highlight_params
    params.require(:highlight).permit(:detail)
  end
end
