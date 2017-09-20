import React from 'react';
import Question from './Question'

const App = props =>
  <div>
    <h1>We're here to help</h1>
    {props.data.map(question =>
      <Question question={question.question} answer={question.answer} key={question.id} />
    )}
  </div>

export default App;
