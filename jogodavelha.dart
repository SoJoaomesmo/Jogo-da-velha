import 'dart:io';

class Tabuleiro {
    List<List<String>> grid = [
      [' ',' ',' '],
      [' ',' ',' '],
      [' ',' ',' ']
    ];

    int jogadas = 0;
    String jogadorAtual = 'X';

    void jogar(jogadorAtual){
      mostrarTabuleiro();
      vencedor();

      print("Jogador $jogadorAtual!");
      print("Insira a linha: ");
      String? l = stdin.readLineSync();
      print("Insira a coluna: ");
      String? c = stdin.readLineSync();

      if(l != '0' && l != '1' && l != '2'){print("Essa casa não existe!"); jogar(jogadorAtual);}
      if(c != '0' && c != '1' && c != '2'){print("Essa casa não existe!"); jogar(jogadorAtual);}

      int linha = int.parse(l!);
      int coluna = int.parse(c!);

      if (grid[linha][coluna] != ' '){print("Esta casa já está ocupada!");jogar(jogadorAtual);}
      grid[linha][coluna] = jogadorAtual;
      jogadas++;

      jogadorAtual = jogadorAtual == 'X' ? 'O' : 'X';

      jogar(jogadorAtual);
      
    }

    void mostrarTabuleiro(){
      print("    0  1   2\n 0 ${grid[0][0]} | ${grid[0][1]} | ${grid[0][2]} \n   ----------\n 1 ${grid[1][0]} | ${grid[1][1]} | ${grid[1][2]} \n   ----------\n 2 ${grid[2][0]} | ${grid[2][1]} | ${grid[2][2]} \n");
    }

    void vencedor(){
    for(int i = 0; i <= 2; i++){
      if(grid[i][0] == grid[i][1] && grid[i][0] == grid[i][2] && grid[i][0] != ' '){jogadorAtual= grid[i][0]; vitoria();};
      
      if(grid[0][i] == grid[1][i] && grid[0][i] == grid[2][i] && grid[0][i] != ' '){jogadorAtual= grid[0][i]; vitoria();};
    }

      if(grid[0][0] == grid[1][1] && grid[0][0] == grid[2][2] && grid[0][0] != ' '){jogadorAtual = grid[1][1]; vitoria();}
      if(grid[0][2] == grid[1][1] && grid[0][2] == grid[2][0] && grid[0][2] != ' '){jogadorAtual = grid[1][1]; vitoria();}

      if(jogadas >= 9){
      print("Deu velha! Empate!");
      novojogo();

    }

    }

    void vitoria(){
      print("Parabéns Jogador ${jogadorAtual}! Você ganhou!");
      novojogo();
    }
}

void novojogo(){
  print("Deseja jogar? (S/N)");
  String? denovo = stdin.readLineSync();
  switch(denovo!.toLowerCase()){
    case 's':
      Tabuleiro tabuleiro = Tabuleiro();
      tabuleiro.jogar('X');
      break;

    default:
      exit(0);
  }
}

void main(){
  novojogo();
}