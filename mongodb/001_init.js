db.createCollection('players')
db.players.createIndex({ steamHex: 1 }, { unique: true })
db.createCollection('whitelist_entries')
db.whitelist_entries.createIndex({ playerId: 1 })