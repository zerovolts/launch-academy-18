ready().then(() => {
  fetch('http://localhost:8080/images/logo.png')
    .then(response => {
      return response.blob()
    })
    .then(blob => {
      let objectURL = URL.createObjectURL(blob)

      let imageElement = document.createElement('img')
      imageElement.src = objectURL
      document.getElementById('main').appendChild(imageElement)
    })
})
