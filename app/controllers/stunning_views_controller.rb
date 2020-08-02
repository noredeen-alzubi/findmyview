class StunningViewsController < ApplicationController
  before_action :set_stunning_view, only: [:show, :edit, :update, :destroy]

  # GET /stunning_views
  # GET /stunning_views.json
  def index
    @stunning_views = StunningView.all
  end

  # GET /stunning_views/1
  # GET /stunning_views/1.json
  def show
  end

  # GET /stunning_views/new
  def new
    @stunning_view = StunningView.new
  end

  # GET /stunning_views/1/edit
  def edit
  end

  # POST /stunning_views
  # POST /stunning_views.json
  def create
    @stunning_view = StunningView.new(stunning_view_params)

    respond_to do |format|
      if @stunning_view.save
        format.html { redirect_to @stunning_view, notice: 'Stunning view was successfully created.' }
        format.json { render :show, status: :created, location: @stunning_view }
      else
        format.html { render :new }
        format.json { render json: @stunning_view.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stunning_views/1
  # PATCH/PUT /stunning_views/1.json
  def update
    respond_to do |format|
      if @stunning_view.update(stunning_view_params)
        format.html { redirect_to @stunning_view, notice: 'Stunning view was successfully updated.' }
        format.json { render :show, status: :ok, location: @stunning_view }
      else
        format.html { render :edit }
        format.json { render json: @stunning_view.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stunning_views/1
  # DELETE /stunning_views/1.json
  def destroy
    @stunning_view.destroy
    respond_to do |format|
      format.html { redirect_to stunning_views_url, notice: 'Stunning view was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stunning_view
      @stunning_view = StunningView.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def stunning_view_params
      params.require(:stunning_view).permit(:title, :description, :car_access, :latitude, :longitude)
    end
end
