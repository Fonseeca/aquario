int quantidade = int(random(10,15));
Peixe peixe [] = new Peixe[quantidade];
void setup()
{
  size(900, 600);
  frameRate(70);
}

void draw()
{
  background(#1ABDD8);
  for(int i = 0; i< quantidade; i++)
  {
    peixe[i] = new Peixe();
    peixe[i].move();
  }
}
