 	class TicTacToe{
 		private var board = Array(repeating: Array(repeating:"___",count:3),count:3)  //Declaring and initializing the board
 		
 		var choice: String!
 		var player: String!
 		var opponent: String!
 		var draw = 9

		func display(){						//Display function
			print (" ___ ___ ___ ")
			for i in 0...2{
				print ("|\(board[i][0])|\(board[i][1])|\(board[i][2])|")
			}
			print()	
		}

		func move(player:String){			//To record the moves and make changes on the board
			let grid = Int(readLine()!)!
			if grid == 1 || grid == 2 || grid == 3{
				if(board[0][grid-1]=="___"){
					board[0][grid-1]="_"+player+"_"
					draw-=1
				}
				else{
					move(player:player)
				}
			}
			if grid == 4 || grid == 5 || grid == 6{
				if(board[1][grid-4]=="___"){
					board[1][grid-4]="_"+player+"_"
					draw-=1
				}
				else{
					move(player:player)
				}
			}
			if grid == 7 || grid == 8 || grid == 9{
				if(board[2][grid-7]=="___"){
					board[2][grid-7]="_"+player+"_"
					draw-=1
				}
				else{
					move(player:player)
				}
			}
		}
	
		func endCheck(player:String)->Int{			//To check End Conditions
			if(board[0][0]=="_"+player+"_"&&board[0][0]==board[0][1]&&board[0][1]==board[0][2]){  //#1
				print("Player \(player) wins!!!")
				return 1
			}
			if(board[1][0]=="_"+player+"_"&&board[1][0]==board[1][1]&&board[1][1]==board[1][2]){//#2
				print("Player \(player) wins!!!")
				return 1
			}
			if(board[2][0]=="_"+player+"_"&&board[2][0]==board[2][1]&&board[2][1]==board[2][2]){//#3
				print("Player \(player) wins!!!")
				return 1
			}
			if(board[0][0]=="_"+player+"_"&&board[0][0]==board[1][0]&&board[1][0]==board[2][0]){//#4
				print("Player \(player) wins!!!")
				return 1
			}
			if(board[0][1]=="_"+player+"_"&&board[0][1]==board[1][1]&&board[1][1]==board[2][1]){//#5
				print("Player \(player) wins!!!")
				return 1
			}
			if(board[0][2]=="_"+player+"_"&&board[0][2]==board[1][2]&&board[1][2]==board[2][2]){//#6
				print("Player \(player) wins!!!")
				return 1
			}
			if(board[0][0]=="_"+player+"_"&&board[0][0]==board[1][1]&&board[1][1]==board[2][2]){//#7
				print("Player \(player) wins!!!")
				return 1
			}
			if(board[0][2]=="_"+player+"_"&&board[0][2]==board[1][1]&&board[1][1]==board[2][0]){//#8
				print("Player \(player) wins!!!")
				return 1
			}
			if(draw==0){
				print("DRAW!!!")
				return 1
			}
			return 0
		}

 	}

 	
 	let playerInstance = TicTacToe()           //Creating instance
 	
	print (""" 								


 	-----------Welcome to TicTacToe-----------
 	Enter Your Choice:
 	X or O ? 
 	""")					// Multiline String literal print statement
 	
 	playerInstance.choice=readLine()

 	//To define the player and the opponent
 	if (playerInstance.choice=="X" || playerInstance.choice=="x"){
 		playerInstance.player=playerInstance.choice
 		playerInstance.opponent="O"
 	}
 	else if (playerInstance.choice=="O" || playerInstance.choice=="o"){
 		playerInstance.player=playerInstance.choice
 		playerInstance.opponent="X"
 	}

 	//Gameplay UI
 	print("Intruction: Choose numbers from 1 to 9 to place your mark on the corresponding place on the Board...\nHit any key to continue...")
 	let _=readLine()
 	playerInstance.display()

 	//Main loop
 	while true{
 		print("Player \(playerInstance.player!), your move...")
 		playerInstance.move(player:playerInstance.player)
 		playerInstance.display()
 		if playerInstance.endCheck(player:playerInstance.player) == 1{break}
 		print("Player \(playerInstance.opponent!), your move...")
 		playerInstance.move(player:playerInstance.opponent)
 		playerInstance.display()
 		if playerInstance.endCheck(player:playerInstance.player) == 1{break}
 	}

																											 	//revanth.k.h@gmail.com