def get_first_name_of_season_winner(data, season)
  data.each do |key, value|
    if key == season
      value.each do |contestantHash|
        contestantHash.each do |key, value|
          if contestantHash["status"] == "Winner"
            array = contestantHash["name"].split(" ")
            return array[0]
          end
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, array|
    array.each do |contestantHash|
      contestantHash.each do |key, value|
        if value == occupation
            return contestantHash["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  i = 0
  data.each do |season, array|
    array.each do |contestantHash|
      contestantHash.each do |key, value|
        if value == hometown
          i += 1
        end
      end
    end
  end
  return i
end

def get_occupation(data, hometown)
  data.each do |season, array|
    array.each do |contestantHash|
      contestantHash.each do |key, value|
        if value == hometown
            return contestantHash["occupation"]
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  newArray = []
  sum = 0
  data.each do |key, array|
    if key == season
      array.each do |contestantHash|
        newArray.push(contestantHash["age"].to_i)
      end
    end
  end
  return ((newArray.inject{|sum,x| sum + x }.to_f + 0.5) /25).round
end
