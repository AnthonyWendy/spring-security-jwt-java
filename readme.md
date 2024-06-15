# Email Microservice
![Java](https://img.shields.io/badge/java-%23ED8B00.svg?style=for-the-badge&logo=openjdk&logoColor=white)
![Spring Security](https://img.shields.io/badge/spring%20security-%236DB33F.svg?style=for-the-badge&logo=spring&logoColor=white)
![OAuth2](https://img.shields.io/badge/oauth2-%233776E3.svg?style=for-the-badge&logo=oauth&logoColor=white)
![H2 Database](https://img.shields.io/badge/H2-0178b8.svg?style=for-the-badge&logo=h2&logoColor=white)


This project is to learning about Spring Security project and Spring OAuth2.

The aim of the project is learning about JWT Token using Oauth2 and Spring Security, both fromm Spring project, based on [video](https://www.youtube.com/watch?v=kEJ8a1w4a2Q&ab_channel=GiulianaBezerra)
 by Giuliana Bezerra.

## ✅ Prerequisites

Before you start, make sure you meet the following requirements:

- Docker

## 💻 Installation

1. Clone the repository:

```bash
    git clone https://github.com/AnthonyWendy/spring-security-jwt-java.git
```

2. In the project's root directory, build the application container:
```
     docker build -t spring-security-jwt .
```

3. In the project's root directory, start the application container:
```
    docker-compmose up
```


## 🚀 API Endpoints

Get the token, usign Basic Auth, "Username: username" and "Password: password".

```
    POST -> http://localhost:8080/authenticate
```

Private route test, using Bearer Token.

```
    GET -> localhost:8080/private
```



## 🤝 Contributing

Contributions are welcome! If you find any issues or have suggestions for improvements, please open an issue or submit a pull request to the repository.
When contributing to this project, please follow the existing code style, commit conventions, and submit your changes in a separate branch.

## 📚 Study base

- Videos
  - [Video of study](https://www.youtube.com/watch?v=kEJ8a1w4a2Q&ab_channel=GiulianaBezerra).
- Article
  - [Docker and Java](https://dev.to/antiduhring/como-criar-uma-docker-image-para-sua-api-feita-com-java-3gd2).
  - [How to run a java application with docker](https://gabrielfeitosa.com/como-rodar-uma-aplicacao-java-com-o-docker/).
  - [Spring Security Docummentation](https://spring.io/projects/spring-authorization-server).