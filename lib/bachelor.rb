require 'pry'

def get_first_name_of_season_winner(data, season)
  winner = 0
  data[season].each{|girl|
    girl.each{|stat_name, stat_value|
      if stat_value.include? ("Winner")
        winner = girl["name"].split.first
      end
    }
  }
  winner
end

def get_contestant_name(data, occupation)
  answer = 0
  data.each{|season, contestant|
    contestant.each{|girl|
      girl.each{|stat_type, stat_value|
        if stat_value.include? (occupation)
          answer = girl["name"]
        end
      }
    }
  }
  answer
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each{|season, contestant|
    contestant.each{|girl|
      girl.each{|stat_type, stat_value|
        if stat_value.include? (hometown)
          counter += 1
        end
      }
    }
  }
  counter
end

def get_occupation(data, hometown)
  answer = ""
  data.find {|season, contestant|
    answer = contestant.find{|girl| girl["hometown"] == hometown}
  }
  answer["occupation"]
end

def get_average_age_for_season(data, season)
  avg_age_array = []
  data[season].each{|girl|
    avg_age_array << Integer(girl["age"])
  }
  avg_age = 0
  avg_age_array.each{|num| avg_age += num}
  (avg_age.to_f/avg_age_array.count).round
end