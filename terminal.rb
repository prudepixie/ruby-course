
require './lib/task-manager.rb'
require 'io/console'

class Terminal_Client

  def initialize
    show_help


    while true
      input = gets.chomp
      break if input == 'exit'

      if input == "help"
        show_help
      # Look at input to see what user wants to do
    end
      if input == "list"
        #list all projects
        list
      end
    end


  end

  def show_help
    puts "Welcome to Terminal Client. Please make a selection."
    puts ""
    puts "Available Commands:"
    puts "  help - Show these commands again"
    puts "  list - List all projects"
    puts "  create NAME - Create a new project with name=NAME"
    puts "  show PID - Show remaining tasks for project with id=PID"
    puts "  history PID - Show completed tasks for project with id=PID"
    puts "  add PID PRIORITY DESC - Add a new task to project with id=PID"
    puts "  mark TID - Mark task with id=TID as complete"
    puts "  exit - Finish"
  end

  def list
    puts

  end
end

Terminal_Client.new
