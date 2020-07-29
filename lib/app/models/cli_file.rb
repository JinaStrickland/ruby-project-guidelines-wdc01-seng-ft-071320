
def greeting
    puts "Welcome to our Design Studio Information Center!"
    puts "\n"
end

def choose_option
    puts "\n"
    puts "Choose from the following options:"
    puts "**********************************"
    puts "1. List all our Designers"
    puts "2. List all our Clients"
    puts "3. List all our Projects"
    puts "\n"
    puts "10. Exit"
    puts "**********************************"
    puts "\n"
end

def exit_program
    puts "Thank you for visting us."
    exit
end

def action
    user_input = ""
    while user_input
        choose_option
        user_input = gets.chomp.to_i
        case user_input
        when 1 
            Designer.list_designers
        when 2
            Client.list_clients
        when 3
            Project.list_projects
        # when 4

        when 10
            exit_program
            break
        else
            action
        end
    end
end