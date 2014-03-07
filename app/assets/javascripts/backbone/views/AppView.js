App.AppView = Backbone.View.extend ({

  el: $('#projects-container'),

  initialize: function() {
    this.projectsList = $('#projects-list');
    this.listenTo(App.projets, 'sync', this.render);
  },

  render: function() {
    var $projectsList = this.projectsList;
    this.collection.each(function(project) {
      var projectListItemView = new App.QuoteListItemView({model: project});
      var html = projectListItemView.render().el;
      $projectList.append(html);
    })
  }

})