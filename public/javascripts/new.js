Event.observe(window, 'load', function() {
  $('relevant_at_cal').observe('click', function() {
    new CalendarDateSelect('num_relevant_at');
  });
});
