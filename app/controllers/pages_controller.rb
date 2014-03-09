class PagesController < ApplicationController

  def index
    render layout: "landing"
  end

  def projects

    @sidemenu = { works: "works",
                  competitions: "competitions",
                  workshops: "workshops",
                  studies: "studies"}

    @works = [ {
            id: "3d_esterno",
            name: "3d Esterno",
            img: "3d_esterno",
            folder: "3d_esterno"
          },{
            id: "casa_di_merda",
            name: "la casa di merda",
            img: "casa_di_merda"
          },{
            id: "fuoco",
            name: "progetto di fuoco",
            img: "fuoco",
            folder: "fuoco"
          },{
            id: "Schoolcampus",
            name: "school campus",
            img: "Schoolcampus",
            folder: "Schoolcampus"
          }
        ]
    @competitions = [{
      id: "c05_bfm_master_houses",
      name: "Bauhaus Masters’ Houses",
      location: "Dessau.DE",
      year: 2010,
      images_titles: ["plan","section"],
      description: "",
      note: "first prize"
    }]
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