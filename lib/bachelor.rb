def get_first_name_of_season_winner(data, season)
  data[season].each do | contestant_hash |
    if contestant_hash["status"].downcase == "winner"
      return contestant_hash["name"].split(" ").first
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do | season, contestants |
    contestants.each do | contestant_hash |
      if contestant_hash["occupation"] == occupation
        return contestant_hash["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  town = 0
  data.each do | season, contestants |
    contestants.each do | contestant_hash |
      if contestant_hash["hometown"] == hometown
        town +=1
      end
    end
  end
town
end

def get_occupation(data, hometown)
  data.each do | season, contestants |
    contestants.each do | contestant_hash |
      if contestant_hash["hometown"] == hometown
        return contestant_hash["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age_total = 0
  no_contestants = 0
  data[season].each do | contestant_hash |
      age_total += (contestant_hash["age"]).to_i
      no_contestants +=1
  end
  (age_total / no_contestants.to_f).round(0)
end
