class HomeController < ApplicationController
  def index
  end

  def play
  	system('~/./spotify_bootstrap.sh spotify play')
  	redirect_to root_path
  	return
  end

  def pause
  	system('~/./spotify_bootstrap.sh spotify pause')
  	redirect_to root_path
  	return
  end

  def next
  	system('~/./spotify_bootstrap.sh spotify next')
  	redirect_to root_path
  	return
  end

  def previous
  	system('~/./spotify_bootstrap.sh spotify previous')
  	redirect_to root_path
  	return
  end

  def volume
    call = '~/./spotify_bootstrap.sh volume ' + params[:value].to_s
    system(call)
    redirect_to root_path
    return
  end

end
