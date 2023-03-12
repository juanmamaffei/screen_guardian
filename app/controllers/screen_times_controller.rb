class ScreenTimesController < ApplicationController
  before_action :set_screen_time, only: %i[ show edit update destroy ]

  # GET /screen_times or /screen_times.json
  def index
    @screen_times = ScreenTime.all
  end

  # GET /screen_times/1 or /screen_times/1.json
  def show
  end

  # GET /screen_times/new
  def new
    @screen_time = ScreenTime.new
  end

  # GET /screen_times/1/edit
  def edit
  end

  # POST /screen_times or /screen_times.json
  def create
    @screen_time = ScreenTime.new(screen_time_params)

    respond_to do |format|
      if @screen_time.save
        format.html { redirect_to screen_time_url(@screen_time), notice: "Screen time was successfully created." }
        format.json { render :show, status: :created, location: @screen_time }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @screen_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /screen_times/1 or /screen_times/1.json
  def update
    respond_to do |format|
      if @screen_time.update(screen_time_params)
        format.html { redirect_to screen_time_url(@screen_time), notice: "Screen time was successfully updated." }
        format.json { render :show, status: :ok, location: @screen_time }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @screen_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /screen_times/1 or /screen_times/1.json
  def destroy
    @screen_time.destroy

    respond_to do |format|
      format.html { redirect_to screen_times_url, notice: "Screen time was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_screen_time
      @screen_time = ScreenTime.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def screen_time_params
      params.require(:screen_time).permit(:duration, :screen_type, :app_name)
    end
end
