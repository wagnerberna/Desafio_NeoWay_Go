# Desafio Técnico Neoway

## 💡 Objetivo:
Criar um sistema em Golang para tratar e salvar dados de um arquivo .txt ou .csv em um banco de dados PostgreSQL, o nome do arquivo será solicitado na inicialização do sistema.

Saliento que o projeto pode ser executado de duas formas:

✅ **Localhost:** Desta forma o projeto apresenta melhor desempenho, processo completo realizado em menos de 1 min. e 20 seg. considerando um arquivo de 50 mil registros.

⛔ **Docker:** Embora tenha deixado esta opção disponível, existe um grande problema de desempenho em arquivos com grandes quatidades de registros, chegando a levar 20 min. para 50 mil registros. 
Esta parte do projeto ainda necessita de aprimoramentos. 

## 🛠 Tecnologias:
- [Golang](https://go.dev/)
- [Go Dotenv](https://github.com/joho/godotenv)
- [Go Test](https://go.dev/doc/tutorial/add-a-test)
- [PostgreSQL](https://www.postgresql.org/)
- [Go Postgres Driver](https://github.com/lib/pq)
- [Docker](https://www.docker.com/)

### 🔎 Clonagem:
Através do terminal clone o diretório usando a chave SSH, utilizando o seguinte comando:
```bash
git clone git@github.com:wagnerberna/Desafio_Neoway_Go.git
```
## 📌 Execução e Variáveis de Ambiente:
O arquivo de variáveis de ambiente com o nome **".env"** deve ser configurado conforme respectivos exemplos apresentandos nos subitens localhost e docker.

### - Localhost:
Para execução direta no localhost o arquivo env deve ser alterado nos campos destacados com "xxx" com o nome e senha de acesso ao banco local do postgres.
No campo POSTGRES_DB pode ser alterado o nome da database.
```bash
DB_HOST=localhost
DB_PORT=5432
POSTGRES_USER=xxx
POSTGRES_PASSWORD=xxx
POSTGRES_DB=neoway
```

Para iniciar o processo no terminal digite o seguinte comando dentro do diretório raiz do projeto:
```bash
go run main.go
```
#### - Docker:
Conforme descrito no início do projeto o uso pelo docker compose está funcional, mas possui problemas de desempenho em arquivos com grandes quantidades de registros.

Para execução pelo docker o arquivo env deve ser igual ao exemplo para que ocorra correta comunicação com o container do postgres, o qual vai estar rodando na porta 5430 do localhost.

```bash
DB_HOST=localhost
DB_PORT=5430
POSTGRES_USER=user
POSTGRES_PASSWORD=mypassword
POSTGRES_DB=neoway
```

Para iniciar o processo no terminal digite os seguintes comandos no terminal dentro do diretório raiz do projeto:
```bash
docker-compose up
```

## 🔒  Testes
Os testes estão localizados no arquivo "payload_test.go", onde é testada se a limpeza e criação do payload dos dados para inserção no banco de dados está processando conforme esperado.
Para rodar os testes é necessário executar o comando:
```bash
go test
```
