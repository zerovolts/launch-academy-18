import React from 'react';

class Question extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      question: props.question,
      answer: props.answer,
      hidden: true
    }

    this.toggleShow = this.toggleShow.bind(this)
  }

  toggleShow() {
    this.setState({hidden: !this.state.hidden})
  }

  render() {
    let icon = this.state.hidden ?
      <i className="fa fa-plus-square fa-lg hidden" aria-hidden="true"></i> :
      <i className="fa fa-minus-square fa-lg visible" aria-hidden="true"></i>

    return(
      <div className="question-block" onClick={this.toggleShow}>
        <div>
          {icon}<span className="question">{this.state.question}</span>
        </div>
        <div className="answer" hidden={this.state.hidden}>{this.state.answer}</div>
        <hr />
      </div>
    )
  }
}

export default Question;
