

Player1 = input("What is Player 1's name? ")
Player2 = input("What is Player 2's name? ")

Answer1 = input(Player1 + ", rock, paper or scissors? ").lower()
Answer2 = input(Player2 + ",  rock, paper or scissors? ").lower()

if Answer1 == Answer2:
    print("Tie")
elif Answer1 == 'rock':
    if Answer2 == 'scissors':
        print("Rock beats scissors")
    else:
        print("Paper beats rock")
elif Answer1 == 'scissors':
    if Answer2 == 'paper':
        print("Scissors beats paper")
    else:
        print("Rock beats scissors")
elif Answer1 == 'paper':
    if Answer2 == 'rock':
        print("Paper beats rock")
    else:
        print("Scissors beat paper")
else:
    print("Invalid answer")



        

        