class SongsController < ApplicationController
  before_action :set_song, only: [:destroy]
  before_action :set_artist, only: [:create]

  def create

    @song = @artist.songs.create(song_params)
    redirect_to @artist
  end

  def destroy
    artist = @song.artist
    @song.destroy
    redirect_to artist
  end

  private
    def song_params
      params.require(:song).permit(:name)
    end

    def set_song
      @song = Song.find(params[:id])
    end

    def set_artist
      @artist = Artist.find(params[:artist_id])
    end
end
