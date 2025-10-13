# 🧠 Letroso — Jogo de Descoberta de Palavras

Letroso é um jogo desenvolvido em [Flutter](https://flutter.dev) inspirado em clássicos como [Termo](https://term.ooo) e [Letroso](https://letroso.com/en/daily).  
O objetivo do jogo é adivinhar uma palavra aleatória dentro de um número limitado de tentativas, de acordo com a dificuldade escolhida.

---

## 📱 Funcionalidades

- Campo de entrada para **apelido do jogador**
- Seleção de **dificuldade**:
  - 🟢 Easy → 20 tentativas
  - 🟡 Normal → 15 tentativas
  - 🔴 Hard → 6 tentativas
- Escolha da **quantidade máxima de letras** (de 5 a 10)
- Geração de uma **palavra aleatória** ao iniciar o jogo
- Feedback visual com cores:
  -  Preto → Letra não está na palavra
  -  Verde → Letra correta na posição certa
  -  Amarelo → Letra correta na posição errada
- Botão **“Novo jogo”** para reiniciar e voltar ao menu inicial

---

## 🧩 Regras do jogo

1. O jogador digita a palavra tentativa no campo de texto.
2. As letras são coloridas conforme sua correspondência com a palavra secreta.
3. A cada tentativa, um novo campo de texto aparece para a próxima jogada.
4. O número máximo de tentativas depende da dificuldade selecionada.

---

## 🛠️ Tecnologias utilizadas

- [Flutter](https://flutter.dev)
- [Dart](https://dart.dev)

---

## 🖼️ Layout inspirado em

- [Termo](https://term.ooo)
- [Letroso](https://letroso.com/en/daily)

---

## 📂 Estrutura de entrega

- Pasta `lib`
- Pasta `images` (se houver)
- Arquivo `pubspec.yaml`
- Print do app rodando (Android, Web ou Desktop)

---

## 🚀 Como rodar

```bash
# Clone o repositório
git clone https://github.com/SEU-USUARIO/Letroso.git

# Entre na pasta do projeto
cd Letroso

# Instale as dependências
flutter pub get

# Rode o projeto
flutter run
