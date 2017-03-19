class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create

  end

  private
    def artist_params
      require.params(:artist).permit(:name, :image)
    end

end
