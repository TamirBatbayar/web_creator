class WebDataController < ApplicationController
  before_action :set_web_datum, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /web_data
  # GET /web_data.json
  def index
    @web_data = WebData.all
  end

  # GET /web_data/1
  # GET /web_data/1.json
  def show
  end

  # GET /web_data/new
  def new
    @web_datas = WebData.new
  end

  # GET /web_data/1/edit
  def edit
  end

  # POST /web_data
  # POST /web_data.json
  def create
    @web_datas = WebData.new(web_datas_params)

    respond_to do |format|
      if @web_datas.save
        format.html { redirect_to @web_datas, notice: 'Web datas was successfully created.' }
        format.json { render :show, status: :created, location: @web_datas }
      else
        format.html { render :new }
        format.json { render json: @web_datas.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /web_data/1
  # PATCH/PUT /web_data/1.json
  def update
    respond_to do |format|
      if @web_datas.update(web_datas_params)
        format.html { redirect_to @web_datas, notice: 'Web datas was successfully updated.' }
        format.json { render :show, status: :ok, location: @web_datas }
      else
        format.html { render :edit }
        format.json { render json: @web_datas.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /web_data/1
  # DELETE /web_data/1.json
  def destroy
    @web_datas.destroy
    respond_to do |format|
      format.html { redirect_to web_data_url, notice: 'Web datas was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_web_datas
      @web_datas = WebData.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def web_datas_params
      params.require(:web_datas).permit(:company_name, :url, :content)
    end
end
