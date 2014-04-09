App.ProjectListItemView = Backbone.View.extend({
  tagName: 'div',
  className: 'inline',
  template: _.template("<a href='#projects/<%= id %>'><img class='project' src='<%= cover_url %>'</a>"),

  events: {
    'click a': 'showProject'
  },

  render: function() {
    var html = this.template( this.model.toJSON() );
    this.$el.html(html);
    // good practice to return this so we can do chaining
    return this;
  },

  showProject: function() { 
    event.preventDefault();
    // find the project i clicked
    var photos = this.model.attributes.photos 

    if (_.isEmpty(photos)){
      return;
    }

    var compare = function(a,b){
        if (a.updated_at < b.updated_at)
          return -1;
          if (a.updated_at > b.updated_at)
            return 1;
          return 0;
    }
    photos.sort(compare);

    var $carousel = $('#carousel');
    var $carouselIndicator = $('#carousel-indicators')
    var $carouselInner = $('#carousel-inner')
    $carouselIndicator.empty();
    $carouselInner.empty();

    _.each(photos, function (photo, index){
      // create html for indicator
      indicatorHtml = '<li class="balls" data-target="#carousel" data-slide-to="' + index + '"></li>'
      // attach it to carouselIndicator
      $carouselIndicator.append(indicatorHtml);
      // create html for inner photo
      innerHtml = '<div class="item ' + ((index === 0) ? 'active' : "") + '"><img src="' +  photo.url + '" alt="'+ photo.name + '"><div class="carousel-caption"><h3>' + photo.name + '</h3><p>' + photo.description + '</p></div></div>'
      // attach it to carouselInner
      $carouselInner.append(innerHtml);
    })
    
    
    $carousel.carousel();

    $carousel.on('click','.left',function () {
      $carousel.carousel('prev')
    })
    $carousel.on('click','.right',function () {
      $carousel.carousel('next')
    })

    $carousel.on('click','.balls', function(e){
      var value = this.attributes['data-slide-to'].value
      $carousel.carousel(parseInt(value))
    })


    $carousel.fadeIn(350, function(){
      // add class to body


      $('body').on('click.carousel',function(){
        $carousel.hide();
        $carouselInner.empty();
        $carouselIndicator.empty();
        $('body').off('.carousel');
      })     
    });
    
    $carousel.on('click', function(e){
      e.stopPropagation();
    });


  //   var quoteBody = this.model.get('body');
  //   var quoteAuthor = this.model.get('author');
  //    $('#quote-wrapper .quote').html(quoteBody);
  //   $('#quote-wrapper .author').html(quoteAuthor);
  }
})