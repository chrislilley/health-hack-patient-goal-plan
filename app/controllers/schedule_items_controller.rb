class ScheduleItemsController < ApplicationController
  before_action :set_schedule_item, only: [:show, :edit, :update, :destroy]

  # GET /schedule_items
  # GET /schedule_items.json
  def index
    @schedule_items = ScheduleItem.all
  end

  # GET /schedule_items/1
  # GET /schedule_items/1.json
  def show
  end

  # GET /schedule_items/new
  def new
    @schedule_item = ScheduleItem.new
  end

  # GET /schedule_items/1/edit
  def edit
  end

  # POST /schedule_items
  # POST /schedule_items.json
  def create
    @schedule_item = ScheduleItem.new(schedule_item_params)

    respond_to do |format|
      if @schedule_item.save
        format.html { redirect_to @schedule_item, notice: 'Schedule item was successfully created.' }
        format.json { render :show, status: :created, location: @schedule_item }
      else
        format.html { render :new }
        format.json { render json: @schedule_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /schedule_items/1
  # PATCH/PUT /schedule_items/1.json
  def update
    respond_to do |format|
      if @schedule_item.update(schedule_item_params)
        format.html { redirect_to @schedule_item, notice: 'Schedule item was successfully updated.' }
        format.json { render :show, status: :ok, location: @schedule_item }
      else
        format.html { render :edit }
        format.json { render json: @schedule_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /schedule_items/1
  # DELETE /schedule_items/1.json
  def destroy
    @schedule_item.destroy
    respond_to do |format|
      format.html { redirect_to schedule_items_url, notice: 'Schedule item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_schedule_item
      @schedule_item = ScheduleItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def schedule_item_params
      params.require(:schedule_item).permit(:scheduledDate, :scheduledTime, :title, :subtitle, :attended)
    end
end
