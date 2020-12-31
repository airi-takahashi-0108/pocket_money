class HelpRecordsController < ApplicationController
  before_action :set_help_record, only: [:show, :edit, :update, :destroy]

  # GET /help_records
  # GET /help_records.json
  def index
    @help_records = HelpRecord.all
  end

  # GET /help_records/1
  # GET /help_records/1.json
  def show
  end

  # GET /help_records/new
  def new
    @help_record = HelpRecord.new
  end

  # GET /help_records/1/edit
  def edit
  end

  # POST /help_records
  # POST /help_records.json
  def create
    @help_record = HelpRecord.new(help_record_params)

    respond_to do |format|
      if @help_record.save
        format.html { redirect_to @help_record, notice: 'Help record was successfully created.' }
        format.json { render :show, status: :created, location: @help_record }
      else
        format.html { render :new }
        format.json { render json: @help_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /help_records/1
  # PATCH/PUT /help_records/1.json
  def update
    respond_to do |format|
      if @help_record.update(help_record_params)
        format.html { redirect_to @help_record, notice: 'Help record was successfully updated.' }
        format.json { render :show, status: :ok, location: @help_record }
      else
        format.html { render :edit }
        format.json { render json: @help_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /help_records/1
  # DELETE /help_records/1.json
  def destroy
    @help_record.destroy
    respond_to do |format|
      format.html { redirect_to help_records_url, notice: 'Help record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_help_record
      @help_record = HelpRecord.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def help_record_params
      params.require(:help_record).permit(:help_content_id, :times, :quality)
    end
end
