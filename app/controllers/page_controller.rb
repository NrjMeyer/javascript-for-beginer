class PageController < ApplicationController
  def index

  end

  def logement
    @logs = Trano.page(params[:page]).per(4)
  end

  def elouer
  end

  def landing
  end

  def profilepage
  end
end
