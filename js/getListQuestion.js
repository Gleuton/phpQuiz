function getList () {
  return new Promise((resolve, reject) => {
    $.get('/list', function (data) {
      let questions = []
      JSON.parse(data).forEach((item, index) => {
        questions.push({'code': item[0], 'response': null})
      })
      resolve(questions)
    })
  })
}