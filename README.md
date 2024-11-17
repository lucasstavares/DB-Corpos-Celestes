# Universo - Banco de Dados de Astronomia

Este repositório contém a implementação de um banco de dados para armazenar informações sobre galáxias, estrelas, planetas, luas e eventos astronômicos.

Este projeto faz parte de um dos cinco projetos necessários para obter minha certificação no curso de **Banco de Dados Relacional** da [FreeCodeCamp](https://www.freecodecamp.org/learn/relational-database/).


## Tabelas do Banco de Dados

O banco de dados possui as seguintes tabelas:

- **galaxy**: Armazena informações sobre as galáxias.
- **star**: Contém informações sobre as estrelas, com referências à galáxia à qual pertencem.
- **planet**: Armazena dados sobre os planetas, com referências à estrela que os orbita.
- **moon**: Contém dados sobre as luas dos planetas.
- **astronomical_event**: Armazena informações sobre eventos astronômicos, com referências a galáxias, estrelas e planetas.

## Tabelas e Colunas

O banco de dados é composto por várias tabelas que armazenam informações sobre galáxias, estrelas, planetas, luas e eventos astronômicos. Aqui está a explicação de cada tabela e suas respectivas colunas:

### Tabela: `galaxy`
Esta tabela armazena informações sobre as galáxias.

- **galaxy_id**: Identificador único da galáxia (chave primária, autoincremento).
- **name**: Nome da galáxia (valor único, não pode ser nulo).
- **star_count**: Quantidade de estrelas na galáxia (tipo `INT`).
- **planet_count**: Quantidade de planetas na galáxia (tipo `INT`).
- **mass**: Massa total da galáxia (tipo `NUMERIC`).
- **description**: Descrição da galáxia (tipo `TEXT`).
- **has_black_hole**: Indica se a galáxia possui um buraco negro central (tipo `BOOLEAN`).
- **is_visible**: Indica se a galáxia é visível a partir da Terra (tipo `BOOLEAN`).

### Tabela: `star`
Esta tabela armazena informações sobre as estrelas.

- **star_id**: Identificador único da estrela (chave primária, autoincremento).
- **name**: Nome da estrela (valor único, não pode ser nulo).
- **type**: Tipo da estrela (por exemplo, G-type, M-type, etc.).
- **mass**: Massa da estrela (tipo `NUMERIC`).
- **galaxy_id**: Identificador da galáxia à qual a estrela pertence (chave estrangeira, referência a `galaxy.galaxy_id`).

### Tabela: `planet`
Esta tabela armazena informações sobre os planetas.

- **planet_id**: Identificador único do planeta (chave primária, autoincremento).
- **name**: Nome do planeta (valor único, não pode ser nulo).
- **type**: Tipo do planeta (por exemplo, Terrestrial, Gas Giant, etc.).
- **mass**: Massa do planeta (tipo `NUMERIC`).
- **star_id**: Identificador da estrela à qual o planeta pertence (chave estrangeira, referência a `star.star_id`).

### Tabela: `moon`
Esta tabela armazena informações sobre as luas.

- **moon_id**: Identificador único da lua (chave primária, autoincremento).
- **name**: Nome da lua (valor único, não pode ser nulo).
- **diameter**: Diâmetro da lua em quilômetros (tipo `NUMERIC`).
- **planet_id**: Identificador do planeta ao qual a lua pertence (chave estrangeira, referência a `planet.planet_id`).
- **discovery_date**: Data de descoberta da lua (tipo `DATE`).

### Tabela: `astronomical_event`
Esta tabela armazena informações sobre eventos astronômicos.

- **event_id**: Identificador único do evento astronômico (chave primária, autoincremento).
- **name**: Nome do evento astronômico (valor único, não pode ser nulo).
- **date**: Data do evento (tipo `DATE`).
- **galaxy_id**: Identificador da galáxia relacionada ao evento (chave estrangeira, referência a `galaxy.galaxy_id`).
- **star_id**: Identificador da estrela relacionada ao evento (chave estrangeira, referência a `star.star_id`).
- **planet_id**: Identificador do planeta relacionado ao evento (chave estrangeira, referência a `planet.planet_id`).
