void serialEvent(Serial p) { 
  String inString = p.readString(); 
  if (inString != null) {
   print(inString);
    inString=trim(inString);
    msg = split(inString, ',');
    for (int i=0; i < msg.length; i++ ) {
      value[i]=float (msg[i]);
//      println(value[i]+" float");
//      println(msg[i]);
    }
  }
}