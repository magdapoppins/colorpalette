class ColorpalettesController < ApplicationController
  def index
    @colorpalettes = Colorpalette.all
    render 'index'
  end
  def show
    @colorpalette = Colorpalette.find(params[:id])
    render 'show'
  end
  def new
    @colorpalette = Colorpalette.new
    render 'new'
  end
  def edit
    @colorpalette = Colorpalette.find(params[:id])
    render 'edit'
  end
  def create
    @colorpalette = Colorpalette.new(colorpalette_params)
    if @colorpalette.save
      redirect_to @colorpalette, notice: 'Colorpalette was successfully created.'
    else
      render action: 'new'
    end
  end
  def update
    @colorpalette = Colorpalette.find(params[:id])
    if @colorpalette.update(colorpalette_params)
      redirect_to @colorpalette, notice: 'Colorpalette was successfully updated.'
    else
      render action: 'edit'
    end
  end
  def destroy
    @colorpalette = Colorpalette.find(params[:id])
    @colorpalette.destroy
    redirect_to colorpalettes_url, notice: 'Colorpalette was successfully destroyed.'
  end
  private
  # Only allow a trusted parameter "white list" through.
  def colorpalette_params
    params.require(:colorpalette).permit(:name, :description, :picture)
  end

end
