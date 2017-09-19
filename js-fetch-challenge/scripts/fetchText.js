ready().then(() => {
  pages = document.getElementsByClassName('page')
  pages_array = Array.prototype.slice.call(pages)

  pages_array.forEach(page => {
    page.addEventListener('click', event => {
      event.preventDefault()
      fetch(page.href)
        .then(response => {
          return response.text()
        })
        .then(text => {
          let textNode = document.createTextNode(text)
          document.getElementById('main').appendChild(textNode)
        })
    })
  })
})
