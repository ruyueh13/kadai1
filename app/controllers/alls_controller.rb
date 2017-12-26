class AllsController < ApplicationController
  before_action :set_all, only: [:show, :edit, :update, :destroy]

  # GET /alls
  # GET /alls.json
  def index
    @alls = All.all
  end

  # GET /alls/1
  # GET /alls/1.json
  def show
  end

  # GET /alls/new
  def new
    @all = All.new
  end

  # GET /alls/1/edit
  def edit
  end

  # POST /alls
  # POST /alls.json
  def create
    @all = All.new(all_params)

    respond_to do |format|
      if @all.save
        format.html { redirect_to @all, notice: 'All was successfully created.' }
        format.json { render :show, status: :created, location: @all }
      else
        format.html { render :new }
        format.json { render json: @all.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alls/1
  # PATCH/PUT /alls/1.json
  def update
    respond_to do |format|
      if @all.update(all_params)
        format.html { redirect_to @all, notice: 'All was successfully updated.' }
        format.json { render :show, status: :ok, location: @all }
      else
        format.html { render :edit }
        format.json { render json: @all.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alls/1
  # DELETE /alls/1.json
  def destroy
    @all.destroy
    respond_to do |format|
      format.html { redirect_to alls_url, notice: 'All was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_all
      @all = All.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def all_params
      params.require(:all).permit(:top, :text)
    end
end
