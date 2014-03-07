App.ProjectListItemView = Backbone.View.extend({
  TagName 'div'
  TagClass 'project-container'

  template: _.template("<a href='#projects/<%= project[:id] %>'><div class='project' style='background:url(<%= image_url('covers/#{project[:id]}.jpg') %>); background-size: cover; '></div></a>"),

  // events: {
  //   'click a': 'showQuote'
  // },

  render: function() {
    var html = this.template( this.model.toJSON() );
    this.$el.html(html);
    // good practice to return this so we can do chaining
    return this;
  },

  // showQuote: function() {
  //   event.preventDefault();
  //   var quoteBody = this.model.get('body');
  //   var quoteAuthor = this.model.get('author');
  //   $('#quote-wrapper .quote').html(quoteBody);
  //   $('#quote-wrapper .author').html(quoteAuthor);
  // }
})