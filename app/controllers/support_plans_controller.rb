class SupportPlansController < ApplicationController
  before_action :set_support_plan, only: [:show, :edit, :update, :destroy]

  # GET /support_plans
  # GET /support_plans.json
  def index
    @support_plans = SupportPlan.all
  end

  # GET /support_plans/1
  # GET /support_plans/1.json
  def show
  end

  # GET /support_plans/new
  def new
    @support_plan = SupportPlan.new
  end

  # GET /support_plans/1/edit
  def edit
  end

  # POST /support_plans
  # POST /support_plans.json
  def create
    @support_plan = SupportPlan.new(support_plan_params)

    respond_to do |format|
      if @support_plan.save
        format.html { redirect_to @support_plan, notice: 'Support plan was successfully created.' }
        format.json { render :show, status: :created, location: @support_plan }
      else
        format.html { render :new }
        format.json { render json: @support_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /support_plans/1
  # PATCH/PUT /support_plans/1.json
  def update
    respond_to do |format|
      if @support_plan.update(support_plan_params)
        format.html { redirect_to @support_plan, notice: 'Support plan was successfully updated.' }
        format.json { render :show, status: :ok, location: @support_plan }
      else
        format.html { render :edit }
        format.json { render json: @support_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /support_plans/1
  # DELETE /support_plans/1.json
  def destroy
    @support_plan.destroy
    respond_to do |format|
      format.html { redirect_to support_plans_url, notice: 'Support plan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_support_plan
      @support_plan = SupportPlan.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def support_plan_params
      params.require(:support_plan).permit(:supportWorkerName, :supportWorkerPhone, :whatsImportant, :howAmIBestSupported, :longTermConditions, :goals, :support, :expectedOfMe, :expectedOfSupport, :whatCanIDo, :reviewDate)
    end
end
