function fillList (ul, data) {
  (data).forEach((item, index) => {

    let ulString = `<li class="quest list-group-item" id="question_${item.code}">`
    ulString += `${index + 1} - `
    ulString += `<span class="glyphicon ${icon(item)}"></span></li>`
    ul.append(ulString)
  })

  function icon (item) {
    switch(item.response) {
      case true:
        return 'glyphicon-ok'
      case false:
        return 'glyphicon-remove'
      default:
      return 'glyphicon-edit'
    }
  }
}