class EducationsController < ApplicationController

  def index
    @educations = Education.all
  end

  def show
    @education = Education.find(params[:id])
  end

  def new
    @education = Education.new
  end

  def create
    @education = Education.new(education_params)

    if @education.save
      redirect_to @education
    else
      render :new
    end
  end

  def edit
    @education = Education.find_by(params[:id])
  end

  def update
    @education = Education.find_by(params[:id])

    if @education.update(education_params)
      redirect_to @education
    else
      render :edit
    end
  end

  private

  def education_params
    params.require(:work).permit(:institution, :area, :studyType, :startDate, :endDate, :gpa)
  end
end
