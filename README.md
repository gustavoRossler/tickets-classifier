# tickets-classifier

Projeto de demonstração, com o objetivo de classificar tickets, de acordo com o sentinmento do cliente.

Para a classificação dos comentários foi utilizada a API [GOT IT AI](https://documenter.getpostman.com/view/4456678/RWaHyVMX)
Que apresenta um resultado no formato
```
{
  "emotions": {
    "sadness": 0.65625,
    "joy": 0,
    "fear": 0.2625,
    "disgust": 0.2625,
    "anger": 0
  },
  "sentiment": {
    "score": -0.7875,
    "label": "NEGATIVE"
  }
}
```

A API tem um limite de requisições gratuito, e foi utilizada nesse formato.

A classificação entre prioridade Alta e Normal se deu pelo score dos sentimentos, sendo que prioridade Alta são todos com score negativo.

---

Para rodar esse projeto é necessário ter o Docker instalado e funcionando na máquina, e seguir os passos a seguir:

## Comandos no console para rodar o projeto

Na pasta principal do projeto você encontrará um arquivo .env com as configurações do projeto.

Está preenchido com um template da configuração.

Você pode alterar o nome de usuário dos bancos de dados, senhas, e até mesmo as portas de acesso caso necessário.

As alterações devem ser feitas antes de subir os containers.

### 1 - Clonar repositório
```bash
git clone https://github.com/gustavoRossler/tickets-classifier.git
```

### 2 - Acessar o diretório do projeto clonado
```bash
cd tickets-classifier
```
(Sendo tickets-classifier o nome da pasta criada)

### 3 - Subir os containers 
```bash
docker-compose up -d
```
(O SO pode pedir permissão para acessar os diretórios dos volumes criados nessa etapa)

### 4 - Rodar o composer para instalar os módulos PHP e scripts necessários
```bash
docker-compose exec app composer install
```

### Opcional
Pode rodar os tests para ver se está tudo funcionando
```bash
docker-compose exec app php artisan test
```

### Execução

Ao iniciar o projeto os dados enviados para o teste já estarão cadastrados.

Rota da API para consulta aos tickets:

URL: http://localhost:8080/api/tickets

Método: GET

Parâmetros aceitos:

- pageNumber = Página atual da lista;
- pageSize = Tamanho da lista de retorno;
- orderColumn = Ordenação da lista, aceita os campos: date_create | date_update | priority;
- orderDirection = Direção da ordenação, aceita os valores: asc | desc;
- filterPriority = Filtro do campo prioridade, aceita os valores: 1 = Alta | 2 = Normal
- filterInitialDate = Filtro do campo data de cadastro, data inicial, formato dd/mm/YYYY HH24:mm:ss
- filterFinalDate = Filtro do campo data de cadastro, data final, formato dd/mm/YYYY HH24:mm:ss

--------

Rota para fazer o upload do arquivo Json, caso queira inserir mais tickets:

URL: http://localhost:8080/api/upload-file

Método: POST

Parâmetros:
- file (tipo: file, aceita: arquivos .json)

Aceita arquivos tipo Json, com o template do arquivo enviado nas instruções.

