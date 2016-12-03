def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |contestant|
    if contestant.values.include?("Winner")
      return contestant["name"].split(" ")[0]
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, contestant_array|
    contestant_array.each do |contestant|
      if contestant.values.include?(occupation)
        return contestant["name"]
      end
    end
  end

end

def count_contestants_by_hometown(data, hometown)
  # code here
  data.map do |season, season_array|
    season_array.map do |contestant|
      hometown if contestant["hometown"] == hometown
    end
  end.flatten.compact.count
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, contestant_array|
    contestant_array.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  array_of_ages = data[season].map do |contestant|
    contestant["age"]
  end
  average_float = array_of_ages.map do |age|
    age.to_f
  end.inject(0){|sum,x| sum + x } / array_of_ages.count

  average_float.round
end
