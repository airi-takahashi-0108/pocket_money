class HelpContentsController < ApplicationController
  before_action :set_help_content, only: [:show, :edit, :update, :destroy]

  # GET /help_contents
  # GET /help_contents.json
  def index
    @help_contents = HelpContent.all
  end

  # GET /help_contents/1
  # GET /help_contents/1.json
  def show
  end

  # GET /help_contents/new
  def new
    @help_content = HelpContent.new
  end

  # GET /help_contents/1/edit
  def edit
  end

  # POST /help_contents
  # POST /help_contents.json
  def create
    @help_content = HelpContent.new(help_content_params)

    respond_to do |format|
      if @help_content.save
        format.html { redirect_to @help_content, notice: 'Help content was successfully created.' }
        format.json { render :show, status: :created, location: @help_content }
      else
        format.html { render :new }
        format.json { render json: @help_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /help_contents/1
  # PATCH/PUT /help_contents/1.json
  def update
    respond_to do |format|
      if @help_content.update(help_content_params)
        format.html { redirect_to @help_content, notice: 'Help content was successfully updated.' }
        format.json { render :show, status: :ok, location: @help_content }
      else
        format.html { render :edit }
        format.json { render json: @help_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /help_contents/1
  # DELETE /help_contents/1.json
  def destroy
    @help_content.destroy
    respond_to do |format|
      format.html { redirect_to help_contents_url, notice: 'Help content was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_help_content
      @help_content = HelpContent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def help_content_params
      params.require(:help_content).permit(:name, :unit_price)
    end
end
