function getOptions (idQuestion) {
  $.get('/options/' + idQuestion, function (data) {
    let optBox = $('#options')
    optBox.html('')
    JSON.parse(data).forEach((item, index) => {
      optBox.append(radio(idQuestion, item[0], item[1], index))
    })
  })

  function radio (idQuest, idOpt, value, index) {
    return `<div class="form-check">
      <input class="form-check-input" type="radio" name="${idQuest}" id="opt_${index}" value="${idOpt}">
      <label class="form-check-label" for="opt_${index}">
      ${value}
      </label>
      </div>`
  }
}