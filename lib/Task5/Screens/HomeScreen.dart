import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> gameBoard = ['', '', '', '', '', '', '', '', ''];
  String currentPlayer = 'X';
  bool gameOver = false;

  void play(int ind){
    if(!gameOver && gameBoard[ind] == ''){
      setState(() {
        gameBoard[ind] = currentPlayer;
        if(currentPlayer == 'X'){
          currentPlayer = 'O';
        }
        else{
          currentPlayer = 'X';
        }
        checkWin();
        if(!gameOver && currentPlayer == 'O'){
          computerMove();
        }
      });
    }
  }

  void computerMove(){
    List<int> availableCells = List.generate(gameBoard.length, (index) {
      if(gameBoard[index] == ''){
        return index;
      }
      return -1;
    }).where((index) => index != -1).toList();

    if(availableCells.isNotEmpty){
      final random = Random();
      final randomIndex = random.nextInt(availableCells.length);
      final computerMoveIndex = availableCells[randomIndex];
      play(computerMoveIndex);
    }
  }

  void checkWin() {
    List<List<int>> winCombinations = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8],
      [0, 4, 8],
      [2, 4, 6],
    ];
    for (var combination in winCombinations) {
      if (gameBoard[combination[0]] != '' &&
          gameBoard[combination[0]] == gameBoard[combination[1]] &&
          gameBoard[combination[1]] == gameBoard[combination[2]]) {
        showResultDialog(gameBoard[combination[0]]);
        return;
      }
    }

    // Check for a draw
    if (!gameBoard.contains('')) {
      showResultDialog('Draw');
    }
  }

  void showResultDialog(String winner) {
    setState(() {
      gameOver = true;
    });

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Game Over'),
          content:
              Text((winner == 'Draw') ? 'It\'s a draw!' : 'Player $winner wins!'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                resetGame();
                Navigator.of(context).pop();
              },
              child: Text('Play Again'),
            ),
          ],
        );
      },
    );
  }


  void resetGame(){
    setState(() {
      gameBoard = ['', '', '', '', '', '', '', '', ''];
      currentPlayer = 'X';
      gameOver = false;
    });
  }

  Widget buildContainer(int ind, double width){
    return GestureDetector(
      onTap: (){
        play(ind);
      },
      child: Container(
        width: width/3,
        height: width/3,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
          ),
        ),
        child: Center(
          child: Text(
            gameBoard[ind],
            style: TextStyle(
              fontSize: 50,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      
      appBar: AppBar(
        title: Text('X O Game'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              resetGame();
            },
            icon: Icon(Icons.refresh),
          ),
        ],
      ),
      body:
      //without gridview
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Lets Play!',style: TextStyle(fontSize: 30),),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildContainer(0,width),
                buildContainer(1,width),
                buildContainer(2,width),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildContainer(3,width),
                buildContainer(4,width),
                buildContainer(5,width),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildContainer(6,width),
                buildContainer(7,width),
                buildContainer(8,width),
              ],
            ),
          ],
        ),
      ),
    );
  }
}