def get_first_name_of_season_winner(data, season)
  contestant = 0

  while contestant < season.length
    if data[season][contestant]["status"] == "Winner"
      res = data[season][contestant]["name"]
      res = res.split(" ")[0]
    end
  contestant+=1
  end
  
  return res

end

def get_contestant_name(data, occupation)
  # code here
  i = 9
  while i < 20
    season = "season #{i}"
    contestant = 0
    while contestant < data[season].length
      if data[season][contestant]["occupation"] == occupation
        return data[season][contestant]["name"]
      end
        contestant+=1
    end
    i+=1
  end

end

def count_contestants_by_hometown(data, hometown)
  count = 0
  i = 9
  while i < 20
    season = "season #{i}"
    contestant = 0
    while contestant < data[season].length
      if data[season][contestant]["hometown"] == hometown
        count+=1
      end
        contestant+=1
    end
    i+=1
  end
  return count
end

def get_occupation(data, hometown)
  occupations = []
  i = 9
  while i < 20
    season = "season #{i}"
    contestant = 0
    while contestant < data[season].length
      if data[season][contestant]["hometown"] == hometown
        occupations << data[season][contestant]["occupation"]
      end
        contestant+=1
    end
    i+=1
  end 
  return occupations[0]
end

def get_average_age_for_season(data, season)
  contestant = 0
  age = []
  while contestant < season.length
    age << data[season][contestant]["age"].to_i
    contestant+=1
  end

  avg = age.inject{ |sum, el| sum + el } / age.size
 
  return avg
    
end

=begin

winner = data[season][0]["name"]
  winner = winner.split(" ")[0]

  return winner
=end