def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |contestants|
    if contestants["status"] == "Winner"
      return contestants["name"].split(" ").first
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, contestants|
    contestants.each do |contestants_data|
      if contestants_data["occupation"] == occupation
        return contestants_data["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |season, contestants|
    contestants.each do |contestants_data|
      if contestants_data["hometown"] == hometown
        counter +=1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, contestants|
    contestants.each do |contestants_data|
      if contestants_data["hometown"] == hometown
        return contestants_data["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  age = 0
  num = 0
  data[season].each do |contestants|
    age += contestants["age"].to_i
    num += 1
  end
  (age/num.to_f).round
end
