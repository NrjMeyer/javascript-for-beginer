class TranosController < ApplicationController
  before_action :set_trano, only: [:show, :edit, :update, :destroy]

  # GET /tranos
  # GET /tranos.json
  def index
    @tranos = Trano.all
  end

  # GET /tranos/1
  # GET /tranos/1.json
  def show
  end

  # GET /tranos/new
  def new
    @trano = Trano.new
  end

  # GET /tranos/1/edit
  def edit
  end

  # POST /tranos
  # POST /tranos.json
  def create
    @trano = Trano.new(trano_params)

    respond_to do |format|
      if @trano.save
        format.html { redirect_to @trano, notice: 'Trano was successfully created.' }
        format.json { render :show, status: :created, location: @trano }
      else
        format.html { render :new }
        format.json { render json: @trano.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tranos/1
  # PATCH/PUT /tranos/1.json
  def update
    respond_to do |format|
      if @trano.update(trano_params)
        format.html { redirect_to @trano, notice: 'Trano was successfully updated.' }
        format.json { render :show, status: :ok, location: @trano }
      else
        format.html { render :edit }
        format.json { render json: @trano.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tranos/1
  # DELETE /tranos/1.json
  def destroy
    @trano.destroy
    respond_to do |format|
      format.html { redirect_to tranos_url, notice: 'Trano was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trano
      @trano = Trano.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trano_params
      params.fetch(:trano, {})
    end
end
