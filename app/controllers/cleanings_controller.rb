class CleaningsController < ApplicationController
  before_action :set_cleaning, only: [:show, :update, :destroy]

  # GET /cleanings
  def index
    @cleanings = Cleaning.all

    render json: @cleanings
  end

  # GET /cleanings/1
  def show
    render json: @cleaning
  end

  # POST /cleanings
  def create
    @cleaning = Cleaning.new(cleaning_params)

    if @cleaning.save
      render json: @cleaning, status: :created, location: @cleaning
    else
      render json: @cleaning.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cleanings/1
  def update
    if @cleaning.update(cleaning_params)
      render json: @cleaning
    else
      render json: @cleaning.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cleanings/1
  def destroy
    @cleaning.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cleaning
      @cleaning = Cleaning.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def cleaning_params
      params.require(:cleaning).permit(:action)
    end
end
