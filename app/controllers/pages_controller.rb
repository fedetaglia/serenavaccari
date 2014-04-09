class PagesController < ApplicationController
  skip_before_filter :authenticate_user!, only: [:index,:contact,:about]
  def index
    render layout: "landing"
  end

  def contact
  end

  def about
    @sidemenu = { aboutme: "about me",
                  passioni: "whatever passion",
                  curriculum: "curriculum",
                  collaborations: "collaborations"}
  end

end