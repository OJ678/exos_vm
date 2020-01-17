#!/usr/bin/python3.7

import http.server
import socketserver

PORT = 80
#server_address = ("", PORT)

#server = http.server.HTTPServer
#handler = http.server.CGIHTTPRequestHandler
#handler.cgi_directories = ["/"]
#print("Serveur actif sur le port :", PORT)
#httpd = server(server_address, handler)
#httpd.serve_forever()

Handler = http.server.SimpleHTTPRequestHandler
httpd = socketserver.TCPServer(("", PORT), Handler)
print ("Le serveur écoute sur le port:", PORT)
httpd.serve_forever()
