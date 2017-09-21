import React from 'react'
import Playlist from './Playlist'

const PlaylistCollection = props => {
  let playlists = props.playlists.map(playlist =>
    <Playlist
      className={playlist.id == props.selectedPlaylistId ? "selected" : ""}
      playlist={playlist}
      key={playlist.id}
      handlePlaylistSelect={() => props.handlePlaylistSelect(playlist.id)} />
  )

  return (
    <ul>
      {playlists}
    </ul>
  )
}

export default PlaylistCollection
