def get_first_name_of_season_winner(data, season)
  # code here
  data[season].detect { |hsh| hsh["status"] == "Winner" }["name"].split[0]
end

def get_contestant_name(data, occupation)
  # code here
  data.reduce("") do |name, (season, contestants)|
    obj = contestants.detect { |cont| cont["occupation"] == occupation }
	obj == nil ? name : obj["name"]
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  data.reduce(0) do |sum, (season, contestants)|
    sum + contestants.select { |cont| cont["hometown"] == hometown }.size
  end
end

def get_occupation(data, hometown)
  # code here
  data.reduce("") do |occupation, (season, contestants)|
    obj = contestants.detect { |cont| cont["hometown"] == hometown }
	obj == nil ? occupation : obj["occupation"]
  end
end

def get_average_age_for_season(data, season)
  # code here
  result_hash = data[season].each_with_object({ :sum => 0.0, :num => 0 }) do |cont, hsh|
    hsh[:sum] += cont["age"].to_f
	hsh[:num] += 1
  end
  (result_hash[:sum]/result_hash[:num]).round
end
