import React from 'react';

import Grocery from './Grocery'

const GroceryList = props =>
  <ul>
    {props.groceries.map(item =>
      <Grocery key={item.id} name={item.name} />
    )}
  </ul>

export default GroceryList;
