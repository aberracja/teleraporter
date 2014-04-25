class TeleeventsController < ApplicationController
  before_action :set_teleevent, only: [:show, :edit, :update, :destroy]

  # GET /teleevents
  # GET /teleevents.json
  def index
    @teleevents = Teleevent.all
    
  end

  # GET /teleevents/1
  # GET /teleevents/1.json
  
  # próby od Kacpra:
  def new_call
    @televent = Teleevent.new
    render 'new_call'
  end
  
  def show
  end

  # GET /teleevents/new
  def new
    @teleevent = Teleevent.new
  end

  # GET /teleevents/1/edit
  def edit
  end

  # POST /teleevents
  # POST /teleevents.json
  def create
    @teleevent = Teleevent.new(teleevent_params)

    respond_to do |format|
      if @teleevent.save
        format.html { redirect_to @teleevent, notice: 'Teleevent was successfully created.' }
        format.json { render action: 'show', status: :created, location: @teleevent }
      else
        format.html { render action: 'new' }
        format.json { render json: @teleevent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teleevents/1
  # PATCH/PUT /teleevents/1.json
  def update
    respond_to do |format|
      if @teleevent.update(teleevent_params)
        format.html { redirect_to @teleevent, notice: 'Teleevent was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @teleevent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teleevents/1
  # DELETE /teleevents/1.json
  def destroy
    @teleevent.destroy
    respond_to do |format|
      format.html { redirect_to teleevents_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teleevent
    #  @teleevent = Teleevent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def teleevent_params
      params.require(:teleevent).permit(:date, :title, :phone, :description)
    end
end
