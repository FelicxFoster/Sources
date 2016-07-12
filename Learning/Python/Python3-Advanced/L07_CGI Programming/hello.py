#!/usr/bin/python3  #for linux
import cgi

print("Content-type: text/html\r\n\r\n")
print("<html><body>")
print("<h1>Hello CGI Program! </h1>")

form = cgi.FieldStorage()
if form.getvalue('name'):
    name = form.getvalue('name')
    print("<h1>Hello %s! Thanks for visiting my sciript.</h1><br />" % name)    
if form.getvalue('happy'):
    print("<p>Yay! I am happy too!</p>")
if form.getvalue('sad'):
    print('<p>Oh no! Why are you so sad? </p>')

print("<form method='post' action='hello.py'>")
print("<p>Name: <input type='text' name='name' /></p>")
print("<input type='checkbox' name='happy' /> Happy")
print("<input type='checkbox' name='sad' /> Sad")
print("<input type='submit' value=''Submit />")
print("</form>")

print("</body></html>")
