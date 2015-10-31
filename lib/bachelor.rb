def get_first_name_of_season_winner(data, season)
  # code here
  winner = ""
  data[season].each do |person|
    if person["status"] == "Winner"
      winner = person["name"]
    end
  end
  winner.split[0]
end

def get_contestant_name(data, occupation)
  # code here
  name = ""
  data.each_value do |season|
    season.each do |person|
      if person["occupation"] == occupation
        name = person["name"]
      end
    end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  # code here
  people = []
  data.each_value do |season|
    season.each do |person|
      if person["hometown"] == hometown
       people << person
      end
    end
  end
  people.count
end

def get_occupation(data, hometown)
  # code here
  occupation = false
  data.each_value do |season|
    season.each do |person|
      if person["hometown"] == hometown
        occupation ||= person["occupation"]
      end
    end
  end
  occupation
end

def get_average_age_for_season(data, season)
  # code here
  ages = []
  data[season].each  do |person|
    ages << person["age"].to_i
  end
  ages.reduce(:+) / ages.count
end
