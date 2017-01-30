def get_first_name_of_season_winner(data, season)
  
  data.each do |season_name, contestant_info|
    contestant_info.each do |category, answer|
      if season == season_name && category["status"] == "Winner"
        @result = category["name"].split(' ')[0]
      end  
    end
  end
  @result
end

def get_contestant_name(data, occupation)
  data.each do |season_name, contestant_info|
    contestant_info.each do |category|
      if category["occupation"] == occupation
        @result = category["name"]
      end
    end
  end
  @result
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season_name, contestant_info|
    contestant_info.each do |category|
      if category["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each do |season_name, contestant_info|
    contestant_info.each do |category|
      if category["hometown"] == hometown
        return category["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  result = []
  data.each do |season_name, contestant_info|
    contestant_info.each do |category|
      if season_name == season
        result << category["age"].to_i
      end
    end
  end
  result.inject(:+)/result.length
end
