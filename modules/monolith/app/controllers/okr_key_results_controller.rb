class OkrKeyResultsController < ApplicationController
  before_action :set_okr_key_result, only: %i[ show edit update destroy ]

  # GET /okr_key_results or /okr_key_results.json
  def index
    @okr_key_results = OkrKeyResult.all
  end

  # GET /okr_key_results/1 or /okr_key_results/1.json
  def show
  end

  # GET /okr_key_results/new
  def new
    @okr_key_result = OkrKeyResult.new
  end

  # GET /okr_key_results/1/edit
  def edit
  end

  # POST /okr_key_results or /okr_key_results.json
  def create
    @okr_key_result = OkrKeyResult.new(okr_key_result_params)

    respond_to do |format|
      if @okr_key_result.save
        format.html { redirect_to okr_key_result_url(@okr_key_result), notice: "Okr key result was successfully created." }
        format.json { render :show, status: :created, location: @okr_key_result }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @okr_key_result.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /okr_key_results/1 or /okr_key_results/1.json
  def update
    respond_to do |format|
      if @okr_key_result.update(okr_key_result_params)
        format.html { redirect_to okr_key_result_url(@okr_key_result), notice: "Okr key result was successfully updated." }
        format.json { render :show, status: :ok, location: @okr_key_result }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @okr_key_result.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /okr_key_results/1 or /okr_key_results/1.json
  def destroy
    @okr_key_result.destroy

    respond_to do |format|
      format.html { redirect_to okr_key_results_url, notice: "Okr key result was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_okr_key_result
      @okr_key_result = OkrKeyResult.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def okr_key_result_params
      params.require(:okr_key_result).permit(:okr_id, :metric_id, :expected, :actual)
    end
end
