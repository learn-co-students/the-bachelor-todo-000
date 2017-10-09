def get_first_name_of_season_winner(data, season)
  # code here
  winner = ""
  data[season].each do |x|
    if x['status'] == "Winner"
      arr = x['name'].split(" ")
      winner = arr[0]
    end
   end
   return winner
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season,contestants|
    contestants.each do |x|
      if x['occupation'] == occupation
        return x['name']
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |season,contestants|
    contestants.each do |x|
      if x['hometown'] == hometown
        counter += 1
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  # code here
  data.each do |season,contestants|
    contestants.each do |x|
      if x['hometown'] == hometown
        return x['occupation']
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  total = 0
  count = 0
  data[season].each do |contestants|
      age = contestants['age'].to_f
      total += age
      count += 1
    end
return (total/count).round
end
