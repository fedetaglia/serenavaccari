App.ProjectListItemView = Backbone.View.extend({
  tagName: 'div',
  className: 'inline',
  template: _.template("<a href='#projects/<%= id %>'><div class='project'></div></a>"),

  events: {
    'click a': 'showProject'
  },

  render: function() {
    var html = this.template( this.model.toJSON() );
    this.$el.html(html);
    // good practice to return this so we can do chaining
    return this;
  },

  showQuote: function() {
    window.alert("display carousel here");
  //   event.preventDefault();
  //   var quoteBody = this.model.get('body');
  //   var quoteAuthor = this.model.get('author');
  //   $('#quote-wrapper .quote').html(quoteBody);
  //   $('#quote-wrapper .author').html(quoteAuthor);
  }
})