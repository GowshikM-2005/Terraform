terraform {
  required_providers {
    spotify = {
      source = "conradludgate/spotify"
      version = "0.2.7"
    }
  }
}

provider "spotify" {
  # Configuration options
  api_key = var.api_key
}

data "spotify_search_track" "Prakash" {
  artist = "G.V.Prakash"
  limit = 10
}

resource "spotify_playlist" "buddy" {
  name="Buddy"
  tracks=[data.spotify_search_track.Prakash.tracks[0].id,
  data.spotify_search_track.Prakash.tracks[1].id,
  data.spotify_search_track.Prakash.tracks[3].id,
  data.spotify_search_track.Prakash.tracks[4].id]
}