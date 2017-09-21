import React from 'react';

const Place = props =>
  <div className={props.visited ? "visited" : ""} onClick={props.crossOut}>
    {props.name}
  </div>

export default Place
