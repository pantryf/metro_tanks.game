class Tank
{
  Entity Body;
  Entity Turret;
  int TurretX, TurretY;
  float TurretAngle;
  
  // Make a tank
  Tank() {}
  
  // Draw tank
  void Draw()
  {
    pushMatrix();
    translate(TurretX, TurretY);
    rotate(TurretAngle);
    Turret.Draw();
    popMatrix();
    Body.Draw();
  }
}

