class Peixe {
  int um, dois, tres;
  float speedX, speedY;
  float largura, altura;
  float eixoX, eixoY;
  int iteracoes;

  Peixe() {
    altura = random(60, 100);
    largura = random(60, 100);
    eixoX = random(100, 800);
    eixoY = random(100, 800);
    um = int(random(255));
    dois = int(random(255));
    tres = int(random(255));
    iteracoes = 0;
    speedX = random(-3, 3);
    speedY = random(-3, 3);
  }

  void move() {
    eixoX += speedX;
    eixoY += speedY;
    iteracoes++;

    if (iteracoes >= 600) {
      speedX = random(-3, 3);
      speedY = random(-3, 3);
      iteracoes = 0;
    }

    if (eixoX <= 0 || eixoX >= width - largura) {
      speedX = -speedX;
    }
    if (eixoY <= 0 || eixoY >= height - altura) {
      speedY = -speedY;
    }
    desenho();
  }

  void desenho() {
    fill(um, dois, tres);
    // Corpo do peixe
    ellipse(eixoX, eixoY, largura, altura);
    // Cauda do peixe (triângulo)
    beginShape();
    vertex(eixoX - largura / 2, eixoY);
    vertex(eixoX - largura, eixoY + altura / 2);
    vertex(eixoX - largura / 2, eixoY + altura);
    endShape(CLOSE);
    noStroke();
  }
}
