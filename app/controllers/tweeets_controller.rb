class TweeetsController < ApplicationController
  before_action :set_tweeet, only: [:show, :edit, :update, :destroy]

  # GET /tweeets
  # GET /tweeets.json
  def index
    @tweeets = Tweeet.all
  end

  # GET /tweeets/1
  # GET /tweeets/1.json
  def show
  end

  # GET /tweeets/new
  def new
    @tweeet = Tweeet.new
  end

  # GET /tweeets/1/edit
  def edit
  end

  # POST /tweeets
  # POST /tweeets.json
  def create
    @tweeet = Tweeet.new(tweeet_params)

    respond_to do |format|
      if @tweeet.save
        format.html { redirect_to @tweeet, notice: 'Tweeet was successfully created.' }
        format.json { render :show, status: :created, location: @tweeet }
      else
        format.html { render :new }
        format.json { render json: @tweeet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tweeets/1
  # PATCH/PUT /tweeets/1.json
  def update
    respond_to do |format|
      if @tweeet.update(tweeet_params)
        format.html { redirect_to @tweeet, notice: 'Tweeet was successfully updated.' }
        format.json { render :show, status: :ok, location: @tweeet }
      else
        format.html { render :edit }
        format.json { render json: @tweeet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tweeets/1
  # DELETE /tweeets/1.json
  def destroy
    @tweeet.destroy
    respond_to do |format|
      format.html { redirect_to tweeets_url, notice: 'Tweeet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tweeet
      @tweeet = Tweeet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tweeet_params
      params.require(:tweeet).permit(:tweeet)
    end
end
