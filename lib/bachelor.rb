require 'pry'


def get_first_name_of_season_winner(data, season)
	data.each do |seasons, grouped_info|
		grouped_info.each do |info, answer|
			if season == seasons && info["status"] == "Winner"
				first_name = info["name"].split(' ')[0]
				return first_name
			end
		end
	end
end

def get_contestant_name(data, occupation)
  	data.each do |seasons, grouped_info|
  		grouped_info.each do |info, answer|
  			if occupation == info["occupation"]
  				return info["name"]
  			end
  		end
  	end
end

def count_contestants_by_hometown(data, hometown)
  location = 0
  data.each do |seasons, grouped_info|
  	grouped_info.each do |info, answer|
  		if info["hometown"] == hometown
  			location += 1 
 	   	end
  	end
  end
  location
end

def get_occupation(data, hometown)
  	data.each do |seasons, grouped_info|
  		grouped_info.each do |info, answer|
  			if hometown == info["hometown"]
  				return info["occupation"]
  			end
  		end
  	end
end

def get_average_age_for_season(data, season)
	ages = []
  	data.each do |seasons, grouped_info|
  		grouped_info.each do |info, answer|
  			if season == seasons
  				ages << info["age"].to_i
  			end
  		end
  	end
  	return ages.inject(:+)/ages.length
end
