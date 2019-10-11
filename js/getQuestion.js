function getQuestion (id, number) {
  let boxQuestion = $('#question')
  let boxCode = $('#code')
  boxQuestion.html('')
  boxCode.html('')
  $.get('/question/' + id, function (data) {
    let question = JSON.parse(data).question
    let code = JSON.parse(data).code
      ? `<pre>${JSON.parse(data).code}</pre>`
      : ''

    $('#number').html(number)
    boxQuestion.html(question)
    boxCode.html(code)
  })
}