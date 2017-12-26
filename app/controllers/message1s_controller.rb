class Message1sController < ApplicationController
  before_action :set_message1, only: [:show, :edit, :update, :destroy]

  # GET /message1s
  # GET /message1s.json
  def index
    @message1s = Message1.all
  end

  # GET /message1s/1
  # GET /message1s/1.json
  def show
  end

  # GET /message1s/new
  def new
    @message1 = Message1.new
  end

  # GET /message1s/1/edit
  def edit
  end

  # POST /message1s
  # POST /message1s.json
  def create
    @message1 = Message1.new(message1_params)

    respond_to do |format|
      if @message1.save
        format.html { redirect_to @message1, notice: 'Message1 was successfully created.' }
        format.json { render :show, status: :created, location: @message1 }
      else
        format.html { render :new }
        format.json { render json: @message1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /message1s/1
  # PATCH/PUT /message1s/1.json
  def update
    respond_to do |format|
      if @message1.update(message1_params)
        format.html { redirect_to @message1, notice: 'Message1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @message1 }
      else
        format.html { render :edit }
        format.json { render json: @message1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /message1s/1
  # DELETE /message1s/1.json
  def destroy
    @message1.destroy
    respond_to do |format|
      format.html { redirect_to message1s_url, notice: 'Message1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_message1
      @message1 = Message1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def message1_params
      params.require(:message1).permit(:title1, :message1)
    end
end
