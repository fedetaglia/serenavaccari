class PagesController < ApplicationController
  skip_before_filter :authenticate_user!, only: [:index,:contact,:about]

  def contact
  end

  def about
    @sidemenu = { aboutme: "about me",
                  passioni: "whatever passion",
                  curriculum: "curriculum",
                  collaborations: "collaborations"}
  end

end