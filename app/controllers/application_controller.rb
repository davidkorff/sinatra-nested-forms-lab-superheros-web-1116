require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team_name = params["team"]["name"]
      @team_motto = params["team"]["motto"]
      @team_member_1_name = params["team"]["members"][0]["name"]
      @team_member_1_power = params["team"]["members"][0]["power"]
      @team_member_1_bio = params["team"]["members"][0]["bio"]
      @team_member_2_name = params["team"]["members"][1]["name"]
      @team_member_2_power = params["team"]["members"][1]["power"]
      @team_member_2_bio = params["team"]["members"][1]["bio"]
      @team_member_3_name = params["team"]["members"][2]["name"]
      @team_member_3_power = params["team"]["members"][2]["power"]
      @team_member_3_bio = params["team"]["members"][2]["bio"]

      #binding.pry

      erb :teams
    end


end
