import React from 'react'

const monthNames = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]

const Tweet = props => {
  const user = props.data.user
  const date = new Date(parseInt(props.data.timestamp_ms))
  const retweetClass = props.data.retweeted ? "retweeted" : "dull"
  const favoriteClass = props.data.favorited ? "favorited" : "dull"
  const mediaUrl = props.data.entities.media ? props.data.entities.media[0].media_url : null
  const displayUrl = mediaUrl ? props.data.entities.media[0].display_url : ""
  const tweet_text = props.data.text.replace(displayUrl, "")

  return (
    <div className="tweet">
      <div className="picture">
        <img src={user.profile_image_url}></img>
      </div>
      <div className="content">
        <div className="info">
          <span>{user.name}</span>
          <span className="dull"> @{user.screen_name}</span>
          <span className="dull"> ·
            <span> {monthNames[date.getMonth()]}</span>
            <span> {date.getDate()}</span>
          </span>
          {mediaUrl ? <img src={mediaUrl} className="media"></img> : null}
        </div>
        <div className="text">
          {tweet_text}
        </div>
        <div>
          <i className="fa fa-reply icon dull" aria-hidden="true" onClick={() => alert("reply")}></i>
          <i className={"fa fa-retweet icon " + retweetClass} aria-hidden="true" onClick={() => alert("retweet")}>
            <span className="icon-text"> {props.data.retweet_count}</span>
          </i>
          <i className={"fa fa-heart icon " + favoriteClass} aria-hidden="true" onClick={() => alert("favorite")}>
            <span className="icon-text"> {props.data.favorite_count}</span>
          </i>
          <i className="fa fa-ellipsis-h icon dull" aria-hidden="true" onClick={() => alert("more")}></i>
        </div>
      </div>
    </div>
  )
}

export default Tweet;
