********************Design Studio**********************

Description:
The Design Studio's internal program that stores information on all the designers, clients, and projects.

Instructions:
1. To start the program, run "ruby bin/run.rb" on the terminal.
2. From the provided list, choose an option starting from 1.
3. Provide an input when asked.
4. Press "9" to exit the program.


License code:


Presentation:
- Describe something you struggled to build, and show us how you ultimately implemented it in your code.

    1. When we ran our code, the ActiveRecord log showed along with our codes. Maddie pointed to us the common questions section in the README.
    ActiveRecord::Base.logger = nil 
    We read it before, but didn't know what it was so we should asked question earlier.

    2. We were trying to change the existing data base using the promotion method which changes the title of a designer, and it wouldn't change. We had to do .save within our method so it saves in our database.

    3. We had the relationship incorrectly. We had belongs_to :designers and belongs_to :clients. 
    So we had to do 
        - rake db:drop
        - create
        - rake db:seed

- Discuss 3 things you learned in the process of working on this project.

    1. Learned how the relationships work between the models.
    2. Learned how to use ActiveRecord.
    3. Learned how to build, access, and revise the database.


- Address what, if anything, you would change or add to what you have today.

    1. Use TTY Prompt
    2. Add more edge cases 
    3. Make it more fun with pictures/animation

- Present any code you would like to highlight. 

    1. The action method on cli_file.rb
