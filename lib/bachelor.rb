require "pry"

def get_first_name_of_season_winner(data, season)
  # code here
  winner = ""
  data.each do |seasons, contestants|
    if seasons == season
      contestants.each do |contestant|
        if contestant["status"] == "Winner"
          winner = contestant["name"].split.first
        end
      end
    end
  end
  winner
end

def get_contestant_name(data, occupation)
  # code here
  name = ""
  data.each do |seasons, contestants|
    contestants.each do |contestant|
      if contestant["occupation"] == occupation
        name = contestant["name"]
      end
    end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |seasons, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  # code here
  occuption = ""
  data.each do |seasons, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        return occupation = contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  age_array = []
  data.each do |seasons, contestants|
    if seasons == season
      contestants.each do |contestant|
        age_array << contestant["age"].to_f
      end
    end
  end
  sum = age_array.inject(:+)
  (sum / age_array.length).round
end
