import React from 'react';
import Question from './Question'

class App extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      selectedId: null,
      questions: props.data
    }
  }

  selectQuestion(id) {
    this.setState({
      selectedId: (id == this.state.selectedId) ? null : id
    })
  }

  render() {
    let questions = this.state.questions.map(question =>
      <Question
        hidden={question.id != this.state.selectedId ? true : false}
        question={question.question}
        answer={question.answer}
        key={question.id}
        selectThis={() => this.selectQuestion(question.id)} />
    )

    return (
      <div>
        <h1>We're here to help</h1>
        {questions}
      </div>
    )
  }
}

export default App;
