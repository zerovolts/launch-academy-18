import React from 'react';

const Box = props => {
  let boxClass = `box ${props.boxClass}`
  let body

  switch(props.boxClass) {
  case "wrapper":
    body = <div><p>{props.data.wrapper.paragraph}</p>
      <Box boxClass="numbers"
           header={props.data.numbers.header} />
      <Box boxClass="picture"
           header={props.data.picture.header}
           url={props.data.picture.url}
           alt={props.data.picture.alt}
           data={props.data.list} />
    </div>
    break
  case "picture":
    body = <div>
      <img alt={props.alt} src={props.url}/>
      <Box boxClass="list"
           header={props.data.header}
           list={props.data.list} />
    </div>
    break
  case "numbers":
    let date = (new Date).toString()
    let random = parseInt(Math.random() * 100)
    body = <p>
      Today's date is
      <strong>&nbsp;{date}&nbsp;</strong>
      and
      <em>&nbsp;{random}&nbsp;</em>
      is a random number.
    </p>
    break
  case "list":
    body = <ul>
      {props.list.map(item =>
        <li key={item}>{item}</li>
      )}
    </ul>
    break
  }

  return (
    <div className={boxClass}>
      <h1>{props.header}</h1>
      {body}
    </div>
  )
}

export default Box;
