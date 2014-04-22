json.array!(@batts) do |batt|
  json.extract! batt, :id, :playerID, :yearID, :league, :teamID, :G, :AB, :R, :H, :B2, :B3, :HR, :RBI, :SB, :CS
  json.url batt_url(batt, format: :json)
end
