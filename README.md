# ApiDotNet

### Fazer o build da imagem

* docker build -t apibbmted:1.0 .

### Rodar o container do Dotnet passando as portas.

* docker run -d -p 52827:52827 -p 52828:52828 apibbmted:1.0

### Realizar a chamada da Api

* http://localhost:52828/swagger
