// Main Module
// -----------

final int BlockSize = 10;

void Init()
{
  load_All();
}

void Run()
{
  Entity tank = EntityStore.get("marc_body");
  Entity turret = EntityStore.get("marc_turret");
  translate(500, 300);
  scale(1);
  pushMatrix();
  translate(0, -30);
  rotate(mouseX * 0.01);
  turret.Draw();
  popMatrix();
  tank.Draw();
}


