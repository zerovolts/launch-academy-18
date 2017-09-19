import React from 'react';

const List = props => {
  return (
    <div className='box list'>
      <h1>Here Is a List</h1>
      <ul>
        {props.list.map(item =>
          <li key={item}>{item}</li>
        )}
      </ul>
    </div>
  )
}

export default List;
