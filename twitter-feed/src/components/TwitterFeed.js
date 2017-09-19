import React from 'react';
import Tweet from './Tweet'

const TwitterFeed = props =>
  <div className="twitter-feed">
    {props.data.map(tweet_data =>
      <Tweet key={tweet_data.id_str} data={tweet_data} />
    )}
  </div>

export default TwitterFeed;
