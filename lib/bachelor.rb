require "pry"

def get_first_name_of_season_winner(data, season)
  data[season][0].each do |k,v|
  	if data[season][0]["status"] == "Winner"
  		name = data[season][0]["name"].split(" ")
  		return name[0]
  	end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season,info|
  	info.each do |contestants|
  		if contestants["occupation"] == occupation
  			return contestants["name"]
  		end
  	end
  end
end

def count_contestants_by_hometown(data, hometown)
  locals = 0
  data.each do |season,info|
  	info.each do |contestants|
  		if contestants["hometown"] == hometown
  			locals +=1
  		end
  	end
  end
  locals
end

def get_occupation(data, hometown)
  data.each do |season,info|
  	info.each do |contestants|
  		if contestants["hometown"] == hometown
  			return contestants["occupation"]
  		end
  	end
  end
end

def get_average_age_for_season(data, season)
  age_array =[]
  data[season].each do |contestants|
  	contestants.each do |key, value|
  		age_array<<contestants["age"].to_i
  	end
  end
age_array.inject(:+) / age_array.length
end










