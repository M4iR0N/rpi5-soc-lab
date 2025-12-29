user_input = input("Please enter a message you wish to save: ")
file_name = input("Please enter the txt file name: ")

f = open(file_name + ".txt", "w") # create a file based on the variable input from file_name.
f.write(user_input + "\n") # writes user_input value to the file given.
f.close()