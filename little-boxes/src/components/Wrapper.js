import React from 'react';

import Picture from './Picture';
import Numbers from './Numbers';

const Wrapper = props => {
  return (
    <div className='box wrapper'>
      <h1>{props.title}</h1>
      <p>{props.paragraph}</p>
      <Numbers />
      <Picture title="Look at This Picture" url="https://s3.amazonaws.com/horizon-production/images/react-clever-ees.png" />

    </div>
  )
}

export default Wrapper;
