let ready = () => {
  return new Promise((resolve, reject) => {
    document.onreadystatechange = () => {
      resolve()
    }
  })
}
