class TmpdatabasaesController < ApplicationController
  before_action :set_tmpdatabasae, only: [:show, :edit, :update, :destroy]

  # GET /tmpdatabasaes
  # GET /tmpdatabasaes.json
  def index
    @tmpdatabasaes = Tmpdatabasae.all
  end

  # GET /tmpdatabasaes/1
  # GET /tmpdatabasaes/1.json
  def show
  end

  # GET /tmpdatabasaes/new
  def new
    @tmpdatabasae = Tmpdatabasae.new
  end

  # GET /tmpdatabasaes/1/edit
  def edit
  end

  # POST /tmpdatabasaes
  # POST /tmpdatabasaes.json
  def create
    @tmpdatabasae = Tmpdatabasae.new(tmpdatabasae_params)

    respond_to do |format|
      if @tmpdatabasae.save
        format.html { redirect_to @tmpdatabasae, notice: 'Tmpdatabasae was successfully created.' }
        format.json { render :show, status: :created, location: @tmpdatabasae }
      else
        format.html { render :new }
        format.json { render json: @tmpdatabasae.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tmpdatabasaes/1
  # PATCH/PUT /tmpdatabasaes/1.json
  def update
    respond_to do |format|
      if @tmpdatabasae.update(tmpdatabasae_params)
        format.html { redirect_to @tmpdatabasae, notice: 'Tmpdatabasae was successfully updated.' }
        format.json { render :show, status: :ok, location: @tmpdatabasae }
      else
        format.html { render :edit }
        format.json { render json: @tmpdatabasae.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tmpdatabasaes/1
  # DELETE /tmpdatabasaes/1.json
  def destroy
    @tmpdatabasae.destroy
    respond_to do |format|
      format.html { redirect_to tmpdatabasaes_url, notice: 'Tmpdatabasae was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tmpdatabasae
      @tmpdatabasae = Tmpdatabasae.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tmpdatabasae_params
      params.require(:tmpdatabasae).permit(:name)
    end
end
