import React from 'react'
import Song from './Song'

const SongCollection = props => {
  let songs = props.songs.map(song =>
    <Song
      className={song.id == props.selectedSongId ? "selected" : ""}
      song={song}
      key={song.id}
      handleSongSelect={() => props.handleSongSelect(song.id)} />
  )

  return (
    <ul>
      {songs}
    </ul>
  )
}

export default SongCollection
