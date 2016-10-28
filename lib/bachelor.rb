def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |d_conts|
    if d_conts["status"]  == "Winner"
      return d_conts["name"].split(" ").first
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |k_season, d_conts|
    d_conts.each do |d_conts_hash|
      if d_conts_hash["occupation"] == occupation
        return d_conts_hash["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  hometown_cntr = 0
  data.each do |k_season, d_conts|
    d_conts.each do |d_conts_hash|
      if d_conts_hash["hometown"] == hometown
        hometown_cntr += 1
      end
    end
  end
  hometown_cntr
end

def get_occupation(data, hometown)
  # code here
  data.each do |k_season, d_conts|
    d_conts.each do |d_conts_hash|
      if d_conts_hash["hometown"] == hometown
        return d_conts_hash["occupation"]
      end
    end
  end
en
end

def get_average_age_for_season(data, season)
  average_age = 0
  counter = 0.0
  data[season].each do |d_conts_hash|
    average_age = average_age + d_conts_hash["age"].to_i
    counter += 1
  end
  return (average_age / counter).round(0)
end
