CREATE TABLE players (
  id SERIAL PRIMARY KEY,
  name VARCHAR(128) NOT NULL,
  steam_hex VARCHAR(32) NOT NULL UNIQUE,
  discord_id VARCHAR(32),
  created_at TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE whitelist_entries (
  id SERIAL PRIMARY KEY,
  player_id INT NOT NULL REFERENCES players(id) ON DELETE CASCADE,
  reason VARCHAR(255),
  created_at TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE INDEX idx_players_created_at ON players(created_at);
CREATE INDEX idx_whitelist_player ON whitelist_entries(player_id);