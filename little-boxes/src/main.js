import 'babel-polyfill';
import React from 'react';
import ReactDOM from 'react-dom';

import style from './styles/app.scss'

import Wrapper from './components/Wrapper';
import Box from './components/Box'

const paragraph = `Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sed
ullamcorper nibh, id efficitur eros. Suspendisse ultricies est ut mi
volutpat, quis faucibus sem malesuada. Pellentesque pellentesque ex at
posuere viverra. Nunc maximus massa nec lectus malesuada sodales. Lorem
ipsum dolor sit amet, consectetur adipiscing elit. Cras eget malesuada
tortor.`

const data = {
  wrapper: {
    header: "I Am the Wrapper",
    paragraph: paragraph
  },
  picture: {
    header: "Look at This Picture",
    url: "https://s3.amazonaws.com/horizon-production/images/react-clever-ees.png",
    alt: "Clever EEs"
  },
  list: {
    header: "Here Is a List",
    list: ["Asteroids", "Comets", "Moon", "Planets", "Stars", "Sun"]
  },
  numbers: {
    header: "Today's Date and Random Number"
  }
}

ReactDOM.render(
  //<Wrapper title="I Am the Wrapper" paragraph={paragraph} />,
  <Box boxClass="wrapper" header="I Am the Wrapper" paragraph={paragraph} data={data} />,
  document.getElementById('app')
);
