class UpdatesController < ApplicationController
  before_action :set_update, only: [:show, :edit, :update, :destroy]

  # GET /updates
  def index
    @updates = Update.all
  end

  # GET /updates/1
  def show
  end

  # GET /updates/new
  def new
    @update = Update.new
  end

  # GET /updates/1/edit
  def edit
  end

  # POST /updates
  def create
    @update = Update.new(update_params)

    if @update.save
      redirect_to @update, notice: 'Update was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /updates/1
  def update
    if @update.update(update_params)
      redirect_to @update, notice: 'Update was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /updates/1
  def destroy
    @update.destroy
    redirect_to updates_url, notice: 'Update was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_update
      @update = Update.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def update_params
      params.require(:update).permit(:summary, :body, :priority, :area, :on, :private)
    end
end
