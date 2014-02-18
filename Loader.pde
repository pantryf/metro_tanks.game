// Loader Module
// -------------

HashMap<String, Entity> EntityStore = new HashMap();
HashMap<String, Tank> TankStore = new HashMap();

// Load all objects
void load_All()
{
  XML tanksXml = loadXML("tanks.xml");
  load_Entity(tanksXml);
}

// Load tanks
void load_Tank(XML xml)
{
  XML[] tankXml = xml.getChildren("tank");
  for(int tank=0; tank<tankXml.length; tank++)
  {
    Tank tankObj = new Tank();
    tankObj.Body = EntityStore.get(tankXml[tank].getString("body"));
    tankObj.Turret = EntityStore.get(tankXml[tank].getString("turret"));
    tankObj.TurretX = tankXml[tank].getInt("turretx");
    tankObj.TurretY = tankXml[tank].getInt("turrety");
    tankObj.TurretAngle = 0;
    String tankId = tankXml[tank].getString("id");
    TankStore.put(tankId, tankObj);
  }
}

// Load entities
void load_Entity(XML xml)
{
  XML[] entityXml = xml.getChildren("entity");
  for(int entity=0; entity<entityXml.length; entity++)
  {
    IntList X = new IntList();
    IntList Y = new IntList();
    IntList Width = new IntList();
    IntList Height = new IntList();
    IntList Color = new IntList();
    XML[] tileXml = entityXml[entity].getChildren("tile");
    for(int tile=0; tile<tileXml.length; tile++)
    {
      X.append(tileXml[tile].getInt("x"));
      Y.append(tileXml[tile].getInt("y"));
      Width.append(tileXml[tile].getInt("width"));
      Height.append(tileXml[tile].getInt("height"));
      Color.append(Long.decode(tileXml[tile].getString("color")).intValue());
    }
    Entity entityObj = new Entity();
    entityObj.X = X.array();
    entityObj.Y = Y.array();
    entityObj.Width = Width.array();
    entityObj.Height = Height.array();
    entityObj.Color = Color.array();
    String entityId = entityXml[entity].getString("id"); 
    EntityStore.put(entityId, entityObj);
  } 
}

