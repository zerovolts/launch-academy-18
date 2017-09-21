import React, { Component } from 'react';
import data from '../constants/data'
import styles from '../stylesheets/index.css'
import Place from '../components/Place'

class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
      places: props.data.places,
      visited: props.data.places.reduce((acc, place) => {
        acc[place.id] = false; return acc
      }, {})
    }
  }

  crossOut(id) {
    let tempVisited = Object.assign({}, this.state.visited)
    tempVisited[id] = !tempVisited[id]
    
    this.setState({
      visited: tempVisited
    })
  }

  render() {
    return (
      <div id="wishlist-div">
        <div className="row">
          <div className="small-12 small-centered columns text-center">
            <h3>Wanderlust Wishlist</h3>
            {this.state.places.map(place =>
              <Place
                name={place.name}
                visited={this.state.visited[place.id]}
                crossOut={() => this.crossOut(place.id)}
                key={place.id} />
            )}
          </div>
        </div>
      </div>
    );
  }
}

export default App;
