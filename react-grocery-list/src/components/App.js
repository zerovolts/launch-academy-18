import React from 'react';

import GroceryList from './GroceryList'

const App = props =>
  <div>
    <h1>Grocery List</h1>
    <GroceryList groceries={props.groceryData} />
  </div>

export default App;
