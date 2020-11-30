// act as a web server
// from: https://processing.org/discourse/beta/num_1231628867.html

import processing.net.*;

String HTTP_GET_REQUEST = "GET /";
String HTTP_HEADER = "HTTP/1.0 200 OK\r\nContent-Type: text/html\r\n\r\n";

Server s;
Client c;
String input;

void setup() 
{
  s = new Server(this, 8080); // start server on http-alt
}

void draw() 
{
  // Receive data from client
  c = s.available();
  if (c != null) {
    input = c.readString();
    input = input.substring(0, input.indexOf("\n")); // Only up to the newline
    
    if (input.indexOf(HTTP_GET_REQUEST) == 0) // starts with ...
    {
    c.write(HTTP_HEADER);  // answer that we're ok with the request and are gonna send html
    
    // some html
    c.write("<html><head><title>Processing talkin'</title></head><body><h3>Your base are belong to us!");
    c.write("</h3></body></html>");
    
    // close connection to client, otherwise it's gonna wait forever
    c.stop();
    }
  }
}
