class InstagrammsController < ApplicationController
  before_action :set_instagramm, only: [:show, :edit, :update, :destroy]

  # GET /instagramms
  # GET /instagramms.json
  def index
    @instagramms = Instagramm.all
  end

  # GET /instagramms/1
  # GET /instagramms/1.json
  def show
  end

  # GET /instagramms/new
  def new
    if params[:back]
      @instagramm = Instagramm.new(instagramm_params) 
    else
    @instagramm = Instagramm.new
    end
  end

  # GET /instagramms/1/edit
  def edit
  end

  # POST /instagramms
  # POST /instagramms.json
  def create
    @instagramm = Instagramm.new(instagramm_params) 

    respond_to do |format|
      if @instagramm.save
        format.html { redirect_to @instagramm, notice: 'Instagramm was successfully created.' }
        format.json { render :show, status: :created, location: @instagramm }
      else
        format.html { render :new }
        format.json { render json: @instagramm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /instagramms/1
  # PATCH/PUT /instagramms/1.json
  def update
    respond_to do |format|
      if @instagramm.update(instagramm_params)
        format.html { redirect_to @instagramm, notice: 'Instagramm was successfully updated.' }
        format.json { render :show, status: :ok, location: @instagramm }
      else
        format.html { render :edit }
        format.json { render json: @instagramm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instagramms/1
  # DELETE /instagramms/1.json
  def destroy
    @instagramm.destroy
    respond_to do |format|
      format.html { redirect_to instagramms_url, notice: 'Instagramm was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def confirm
   @instagramm = Instagramm.new(instagramm_params)
   render :new if @instagramm.invalid?
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_instagramm
      @instagramm = Instagramm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def instagramm_params
      params.require(:instagramm).permit(:insta)
    end
end
