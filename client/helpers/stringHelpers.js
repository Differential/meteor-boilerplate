Template.registerHelper('truncate', function(string, length) {
  var cleanString = s(string).stripTags();
  return s(cleanString).truncate(length);
});
