
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
    puts "4. Add new designer"
    puts "5. Delete new designer"
    puts "6. Promotion Day"
    puts "\n"
    puts "10. Exit"
    puts "**********************************"
    puts "\n"
end

def exit_program
    puts "\n"
    puts "Thank you for visting us."
    puts "\n"
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
        when 4
            new_designer
        when 5
            delete_new_designer
        when 6
            promotion
        when 10
            exit_program
            break
        else
            action
        end
    end
end

def new_designer
    puts "Enter new designer name:"
    name = gets.chomp.capitalize
    puts "Enter new designer's title:"
    title = gets.chomp.capitalize
    puts "Enger new designer's specialty:"
    specialty = gets.chomp.capitalize
    Designer.add_designer(name, title, specialty)
    puts "\n"
    Designer.list_designers
end

def delete_new_designer
    puts "Enter a Designer's ID to delete from the list below:"
    puts "\n"
    Designer.list_designers
    id = gets.chomp.to_i
    Designer.delete(id)
    puts "\n"
    Designer.list_designers
    puts "\n"
end

def promotion
    puts "It's a promotion day! Who would you like to promote?"
    puts "Here is the list of all the designers. Please select an ID:"
    puts "\n"
    Designer.list_designers
    id = gets.chomp.to_i
    puts "\n"
    puts "To what title?"
    title = gets.chomp
    Designer.promotions(id, title)
    # puts "\n"
    # Designer.list_designers
    puts "\n"
end