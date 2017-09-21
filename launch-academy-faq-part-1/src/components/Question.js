import React from 'react';

const Question = props => {
  let icon = props.hidden ?
    <i className="fa fa-plus-square fa-lg hidden" aria-hidden="true"></i> :
    <i className="fa fa-minus-square fa-lg visible" aria-hidden="true"></i>

  return(
    <div className="question-block" onClick={props.selectThis}>
      <div>
        {icon}<span className="question">{props.question}</span>
      </div>
      <div className="answer" hidden={props.hidden}>{props.answer}</div>
      <hr />
    </div>
  )
}

export default Question;
