class AvailableDrugsController < ApplicationController
  before_action :set_available_drug, only: [:show, :edit, :update, :destroy]

  # GET /available_drugs
  # GET /available_drugs.json
  def index
    @available_drugs = AvailableDrug.all
  end

  # Action that responds to a drug request, from a person
  def order_drug
    @available_drug = AvailableDrug.find(:drug_id)
    redirect_to request.referer
  end

  # GET /available_drugs/1
  # GET /available_drugs/1.json
  def show
  end

  # GET /available_drugs/new
  def new
    @available_drug = AvailableDrug.new
  end

  # GET /available_drugs/1/edit
  def edit
  end

  # POST /available_drugs
  # POST /available_drugs.json
  def create
    @available_drug = AvailableDrug.new(available_drug_params)

    respond_to do |format|
      if @available_drug.save
        format.html { redirect_to @available_drug, notice: 'Available drug was successfully created.' }
        format.json { render :show, status: :created, location: @available_drug }
      else
        format.html { render :new }
        format.json { render json: @available_drug.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /available_drugs/1
  # PATCH/PUT /available_drugs/1.json
  def update
    respond_to do |format|
      if @available_drug.update(available_drug_params)
        format.html { redirect_to @available_drug, notice: 'Available drug was successfully updated.' }
        format.json { render :show, status: :ok, location: @available_drug }
      else
        format.html { render :edit }
        format.json { render json: @available_drug.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /available_drugs/1
  # DELETE /available_drugs/1.json
  def destroy
    @available_drug.destroy
    respond_to do |format|
      format.html { redirect_to available_drugs_url, notice: 'Available drug was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_available_drug
      @available_drug = AvailableDrug.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def available_drug_params
      params.require(:available_drug).permit(:name, :code, :units)
    end
end
