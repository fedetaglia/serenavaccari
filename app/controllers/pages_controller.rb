class PagesController < ApplicationController

  def index
    render layout: "landing"
  end

  def projects

    @sidemenu = { works: "works",
                  competitions: "competitions",
                  workshops: "workshops",
                  studies: "studies"}

    @works = [
          "3d_esterno",
          "casa_di_merda",
          "fuoco",
          "Schoolcampus",
          "nuovo",
          "nuovo",
          "nuovo",
          "nuovo"     
        ]
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