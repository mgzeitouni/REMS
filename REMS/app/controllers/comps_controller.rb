class CompsController < ApplicationController
  before_action :set_comp, only: [:show, :edit, :update, :destroy]

  # GET /comps
  # GET /comps.json
  def index
    @comps = Comp.all
  end

  # GET /comps/1
  # GET /comps/1.json
  def show
  end

  # GET /comps/new
  def new
    @comp = Comp.new
  end

  # GET /comps/1/edit
  def edit
  end

  # POST /comps
  # POST /comps.json
  def create
    @comp = Comp.new(comp_params)

    respond_to do |format|
      if @comp.save
        format.html { redirect_to @comp, notice: 'Comp was successfully created.' }
        format.json { render action: 'show', status: :created, location: @comp }
      else
        format.html { render action: 'new' }
        format.json { render json: @comp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comps/1
  # PATCH/PUT /comps/1.json
  def update
    respond_to do |format|
      if @comp.update(comp_params)
        format.html { redirect_to @comp, notice: 'Comp was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @comp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comps/1
  # DELETE /comps/1.json
  def destroy
    @comp.destroy
    respond_to do |format|
      format.html { redirect_to comps_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comp
      @comp = Comp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comp_params
      params.require(:comp).permit(:address, :street, :cross_street_1, :cross_street_2, :frontage, :ground, :basement, :mezz, :second, :third, :annual_rent, :agent_landlord_company, :contact, :telephone, :email, :term, :history, :date, :updated_date, :comments)
    end
end
