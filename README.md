# ❌⭕ Jogo da Velha em Dart

Um jogo da velha simples e interativo executado via linha de comando (CLI). O jogo foi desenvolvido inteiramente em Dart e permite que dois jogadores ('X' e 'O') se enfrentem localmente no mesmo terminal.

## ✨ Funcionalidades

* **Multijogador Local:** Alternância automática de turnos entre o Jogador X e o Jogador O.
* **Interface no Terminal:** Um tabuleiro desenhado no próprio console que se atualiza a cada jogada.
* **Sistema de Validação:** * Impede que os jogadores insiram coordenadas fora do tabuleiro (0, 1, 2).
  * Verifica se a casa escolhida já está ocupada.
* **Detecção de Fim de Jogo:**
  * Reconhece vitórias em linhas, colunas e diagonais.
  * Identifica empates ("Deu velha!").
* **Rejogabilidade:** Ao final de cada partida, os jogadores podem escolher se desejam iniciar um novo jogo ou sair.

## 🕹️ Como Jogar

O tabuleiro é mapeado por coordenadas de `0` a `2` para as linhas e colunas, seguindo o padrão abaixo:

```text
    0  1   2
 0    |   |   
   ----------
 1    |   |   
   ----------
 2    |   |
```

Quando for o seu turno, o jogo pedirá para inserir a linha. Digite um número de 0 a 2 e pressione Enter.

Em seguida, pedirá a coluna. Digite um número de 0 a 2 e pressione Enter.

Se a jogada for válida, sua marcação ('X' ou 'O') aparecerá no tabuleiro.

## 🛠️ Tecnologias Utilizadas
Dart: Linguagem de programação utilizada.

Biblioteca dart:io: Utilizada para capturar as entradas do usuário no terminal (stdin.readLineSync).

## 🚀 Como Executar o Projeto
Para rodar este jogo, você precisará ter o Dart SDK instalado na sua máquina.

Clone este repositório:

```bash
git clone [https://github.com/SoJoaomesmo/Jogo-da-velha.git](https://github.com/SoJoaomesmo/Jogo-da-velha.git)
```

Navegue até a pasta do projeto:

```bash
cd Jogo-da-velha
```

Execute o jogo no terminal:

```bash
dart run jogodavelha.dart
```

### 👨‍💻 Autor
Desenvolvido por João V. S. Peruzzo (2025).
