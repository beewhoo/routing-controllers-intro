class PagesController < ApplicationController


  def welcome
    @header = "This is the welcome page"
  end

  def about

    @header = 'hello'
  end

  def contest
    @header = 'bye'
    flash[:notice] = "Sorry, the contest has ended"
    redirect_to "/welcome"
  end


  def kitten
    set_kitten_url
  end

  def kittens
    set_kitten_url
  end


  def set_kitten_url
    requested_size = params[:size]
    @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end


  def secrets
    if params[:magic_word] == 'letmein'
    else redirect_to "/welcome"
      flash[:notice] = "Sorry, you are not allowed to see that page"
    end
  end

end
