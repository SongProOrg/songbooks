class SongsController < ApplicationController
  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)

    if @song.save
      redirect_to @song
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @song = Song.find(params[:id])
  end


  private
    def song_params
      params.require(:song).permit(:title, :artist, :body)
    end
end
