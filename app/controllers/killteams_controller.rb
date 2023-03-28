

class KillteamsController < ApplicationController
  before_action :set_killteam, only: %i[ show edit update destroy ]

  # GET /killteams or /killteams.json
  def index
    @killteams = Killteam.all
  end

  # GET /killteams/1 or /killteams/1.json
  def show
    @killteam = Killteam.find(params[:id])
    # authorize @killteam
    # @killteam.user = current_user
  end

  # GET /killteams/new
  def new
    @killteam = Killteam.new
  end

  # GET /killteams/1/edit
  def edit
    @killteam = Killteam.find(params[:id])
  end

  # POST /killteams or /killteams.json
  def create
    @killteam = Killteam.new(killteam_params)
    @killteam.user_id = current_user.id

    respond_to do |format|
      if @killteam.save
        format.html { redirect_to killteam_url(@killteam), notice: "Killteam was successfully created." }
        format.json { render :show, status: :created, location: @killteam }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @killteam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /killteams/1 or /killteams/1.json
  def update
    respond_to do |format|
      if @killteam.update(killteam_params)
        format.html { redirect_to killteam_url(@killteam), notice: "Killteam was successfully updated." }
        format.json { render :show, status: :ok, location: @killteam }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @killteam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /killteams/1 or /killteams/1.json
  def destroy
    @killteam.destroy

    respond_to do |format|
      format.html { redirect_to killteams_url, notice: "Killteam was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_killteam
      @killteam = Killteam.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def killteam_params
      params.require(:killteam).permit(:name, :description, :requisition, :assetcap, :base, :factionkeyword, images: [])
    end
end
