# CodeIgniter RESTful Server With JWT Authentication
A fully RESTful server implementation for CodeIgniter using JWT for Authentication

## Notes
- Import Database from /db/abyakta.db
- Test it with Postman
- Create POST method from postman for user authentication "http://localhost/codeigniter-restserver-jwt/auth/login"
- Add this to body multipart form (for example) :
	
	email    = kaylee.lynch@metz.com
	password = 12345678
  
- If your authentication success you will get generated token response
- To test it, go create GET method from Postman "http://localhost/codeigniter-restserver-jwt/main/test" and then you can attach that generated token you've got to the header authentication bearer token. see example bellow :
	Authentication: Bearer "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjEiLCJlbWFpbCI6ImtheWxlZS5seW5jaEBtZXR6LmNvbSIsImlhdCI6MTU5MjI5NjkxNCwiZXhwIjoxNTkyMjk3MjE0fQ.Oo1MNAUumx-DWyYqzlMr7MjzKb-8Tx2m5xmhWLsIcMU"  
- To test fetching data from database, go create GET method from Postman "http://localhost/codeigniter-restserver-jwt/main/users" and then you can attach that generated token you've got to the header authentication bearer token. see example bellow :
	Authentication: Bearer "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjEiLCJlbWFpbCI6ImtheWxlZS5seW5jaEBtZXR6LmNvbSIsImlhdCI6MTU5MjI5NjkxNCwiZXhwIjoxNTkyMjk3MjE0fQ.Oo1MNAUumx-DWyYqzlMr7MjzKb-8Tx2m5xmhWLsIcMU"

## Reference
This project Using REST by Phil Sturgeon and Firebase/PHP-JWT. And this project is inspired by Dodi Prasetyo (https://github.com/dodistyo/ci-rest-jwt)
For more information :

## CODEIGNITER 3.1.11
https://codeigniter.com/download

## REST
https://github.com/chriskacerguis/codeigniter-restserver

## JWT
https://github.com/firebase/php-jwt
