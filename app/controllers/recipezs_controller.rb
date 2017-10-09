class RecipezsController < ApplicationController
  before_action :set_recipez, only: [:show, :edit, :update, :destroy]

  # GET /recipezs
  # GET /recipezs.json
  def index
    @recipezs = Recipez.all
  end

  # GET /recipezs/1
  # GET /recipezs/1.json
  def show
  end

  # GET /recipezs/new
  def new
    @recipez = Recipez.new
  end

  # GET /recipezs/1/edit
  def edit
  end

  # POST /recipezs
  # POST /recipezs.json
  def create
    @recipez = Recipez.new(recipez_params)

    respond_to do |format|
      if @recipez.save
        format.html { redirect_to @recipez, notice: 'Recipez was successfully created.' }
        format.json { render :show, status: :created, location: @recipez }
      else
        format.html { render :new }
        format.json { render json: @recipez.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipezs/1
  # PATCH/PUT /recipezs/1.json
  def update
    respond_to do |format|
      if @recipez.update(recipez_params)
        format.html { redirect_to @recipez, notice: 'Recipez was successfully updated.' }
        format.json { render :show, status: :ok, location: @recipez }
      else
        format.html { render :edit }
        format.json { render json: @recipez.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipezs/1
  # DELETE /recipezs/1.json
  def destroy
    @recipez.destroy
    respond_to do |format|
      format.html { redirect_to recipezs_url, notice: 'Recipez was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipez
      @recipez = Recipez.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recipez_params
      params.require(:recipez).permit(:title, :region)
    end
end
