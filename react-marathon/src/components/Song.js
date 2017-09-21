import React from 'react'

const Song = props =>
  <li className={props.className} onClick={props.handleSongSelect}>
    {props.song.name} - {props.song.artist}
  </li>

export default Song
