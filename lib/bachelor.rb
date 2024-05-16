def get_first_name_of_season_winner(data, season)
  # The method should return the first name of that season's winner.
  data.each do |season_name, participant_array|
  	participant_array.each do |participant|
	  	if season_name == season && participant["status"] == "Winner"
	  		@winner = participant["name"].split(' ')[0]
	  	end
  	end
  end
  @winner
end

def get_contestant_name(data, occupation)
  data.each do |season_name, participant_array|
  	participant_array.each do |participant|
	  	@result = participant["name"] if participant["occupation"] == occupation
	  end
  end
  @result
 end

def count_contestants_by_hometown(data, hometown)
	@count = 0
  data.each do |season_name, participant_array|
  	participant_array.each do |participant|
  		@count += 1 if participant["hometown"] == hometown
  	end
  end
  @count 
end

def get_occupation(data, hometown)
  data.each do |season_name, participant_array|
  	participant_array.each do |participant|
  		@result = participant["occupation"] if participant["hometown"] == hometown
  	end
  end
  @result
end

def get_average_age_for_season(data, season)
	@average_age_for_season = 0
	@participants = 0
  data.each do |season_name, participant_array|
  	participant_array.each do |participant|
	  	if season_name == season
	  		@average_age_for_season += participant["age"].to_i
	  		@participants += 1
	  	end
  	end
  end
  @average_age_for_season = @average_age_for_season / @participants
end
