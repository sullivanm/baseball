json.array!(@players) do |player|
  json.extract! player, :id, :playerID, :birthYear, :nameFirst, :nameLast
  json.url player_url(player, format: :json)
end
