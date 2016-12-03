// class Thinkspeak
// version 0.1

class Thinkspeak {

  FloatList inventory;
  int _Length;

  Thinkspeak (int size)
  {
    _Length = size;

    inventory = new FloatList();
    for (int i = 0; i < _Length; i=i+1) {
      inventory.append(0);
    }
  }
  void set(int index, float data) {
    inventory.set(index, data);
  }

  void update(Client server, String apikey) {  

    String uri = "POST /update?key=";
    int field = 0;
    uri += apikey;
    for (int index = 0; index < inventory.size(); index = index +1 ) {
      field = index + 1;
      uri += "&field"+field+"=";
      uri +=  inventory.get(index);
    }
    uri += " HTTP/1.1\n"; 

    if (server.active() == true) { // If there's incoming data from the client...
      server.write(uri);  
    } 
    server.stop();
  }
}