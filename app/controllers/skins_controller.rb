class SkinsController < ApplicationController
  def index
    @skins = Skin.all
  end

  def new
    @skin = Skin.new
    2.times {@skin.player_skins.build}
  end

  def create
    @skin = Skin.new(skin_params)
    if @skin.save
      redirect_to @skin
    else
      render 'new'
    end
  end

  def show
    @skin = Skin.find(params[:id])
  end

  def edit
    @skin = Skin.find(params[:id])
  end

  def update
    @skin = Skin.find(params[:id])
    if @skin.update(skin_params)
      redirect_to @skin
    else
      render 'edit'
    end
  end

  def destroy
    @skin = Skin.find(params[:id])
    @skin.destroy
    redirect_to skins_path
  end

  private
  def skin_params
    params.require(:skin).permit(:match_id, player_skins_attributes: [
      :id, :player_id, :skin_id])
  end
end
