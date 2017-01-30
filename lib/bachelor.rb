def get_first_name_of_season_winner(data, season)
  # code here
  firstname_data = data
  firstname_season = season
  season_winner = ""

  firstname_data.each do |key,value|
    if firstname_season == key
      value.each do |key2, value2|
        if key2["status"] == "Winner"
          season_winner = key2["name"].split(' ')[0]
        end
      end
    end
  end
  return season_winner
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |key,value|
    value.each do |key2,value2|
      if key2["occupation"] == occupation
        return key2["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |key,value|
    value.each do |key2,value2|
      if key2["hometown"] == hometown
        counter += 1
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  # code here
  data.each do |key,value|
    value.each do |key2,value2|
      if key2["hometown"] == hometown
        return key2["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  ages = []
  data.each do |key,value|
    if key == season
      value.each do |key2,value2|
       ages << key2["age"].to_f
      end
    end
  end
  average_age = ages.reduce(:+)/ages.length
  average_age.round(0)
end

#{"name"=>"Emily Maynard", "age"=>"25", "hometown"=>"Morgantown, West Virginia", "occupation"=>"Children's Hospital Event Planner", "status"=>"Winner"}