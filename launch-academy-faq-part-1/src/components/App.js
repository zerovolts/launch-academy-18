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
    if (id == this.state.selectedId) {
      this.setState({selectedId: null})
    } else {
      this.setState({selectedId: id})
    }
  }

  render() {
    let questions = this.state.questions.map(question =>
      <Question
        hidden={question.id == this.state.selectedId ? false : true}
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

/*const App = props =>
  <div>
    <h1>We're here to help</h1>
    {props.data.map(question =>
      <Question question={question.question} answer={question.answer} key={question.id} />
    )}
  </div>*/

export default App;
