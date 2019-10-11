function validate (idQuestion) {
  let error = $('.has-error')
  error.html('')
  let idOption = $('input[name=' + idQuestion + ']:checked').val()
  if (idOption === undefined) {
    error.html('please answer the question')
    $('#next').attr('disabled', false)
    return 0
  }
  $.get('/iscorrect/' + idOption, function (data) {
    let quest = $('#question_' + idQuestion).children()
    quest.removeClass('glyphicon-edit')

    if (JSON.parse(data).correct >= 1) {
      quest.addClass('glyphicon-ok')
      return 1
    }
    quest.addClass('glyphicon-remove')
  })
  return 1
}