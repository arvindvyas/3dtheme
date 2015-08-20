class MythemesController < ApplicationController
  before_action :set_mytheme, only: [:show, :edit, :update, :destroy]

  # GET /mythemes
  # GET /mythemes.json
  def index
    @mythemes = Mytheme.all
  end

  # GET /mythemes/1
  # GET /mythemes/1.json
  def show
  end

  # GET /mythemes/new
  def new
    @mytheme = Mytheme.new
  end

  # GET /mythemes/1/edit
  def edit
  end

  # POST /mythemes
  # POST /mythemes.json
  def create
    @mytheme = Mytheme.new(mytheme_params)

    respond_to do |format|
      if @mytheme.save
        format.html { redirect_to @mytheme, notice: 'Mytheme was successfully created.' }
        format.json { render action: 'show', status: :created, location: @mytheme }
      else
        format.html { render action: 'new' }
        format.json { render json: @mytheme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mythemes/1
  # PATCH/PUT /mythemes/1.json
  def update
    respond_to do |format|
      if @mytheme.update(mytheme_params)
        format.html { redirect_to @mytheme, notice: 'Mytheme was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @mytheme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mythemes/1
  # DELETE /mythemes/1.json
  def destroy
    @mytheme.destroy
    respond_to do |format|
      format.html { redirect_to mythemes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mytheme
      @mytheme = Mytheme.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mytheme_params
      params.require(:mytheme).permit(:name)
    end
end
