App.Router = Backbone.Router.extend({
  routes: {
    'project/:id': 'showProject'
  },

  initialize: function(){
    App.appView = new App.AppView({ collection: App.projects });
    App.appView.render();
  },

  showProject: function(paramId) {
    var projectModel = App.projects.get(paramId);

    if (projectModel === undefined )
      return;

    $('#quote-wrapper').hide();
    var quoteBody = quoteModel.get('body');
    $('#quote-wrapper .quote').html(quoteBody);
    var quoteAuthor = quoteModel.get('author');  
    $('#quote-wrapper .author').html(quoteAuthor);
    $('#quote-wrapper').fadeIn();
  }
})