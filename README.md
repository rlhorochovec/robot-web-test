# robot-web-test
[![robot-web-test](https://github.com/rlhorochovec/robot-web-test/actions/workflows/ci.yml/badge.svg)](https://github.com/rlhorochovec/robot-web-test/actions/workflows/ci.yml)

Projeto de automação de testes web utilizando Robot Framework, GitHubAcitons e enviando os dados da execução para o Grafana.

## Dependências
- Python 3.10.12
- Robot Framework: 6.1.1
- pip: 22.0.2
- psycopg2-binary: 2.9.9

## Instalação
Instale robot-web-test com pip

```bash
  cd robot-web-test
  pip install robotframework
  pip install robotframework-seleniumlibrary
  pip install psycopg2-binary
```
## Instalação do Grafana e Postgres
- [Download PostgreSQL](https://www.enterprisedb.com/downloads/postgres-postgresql-downloads)
- [Download Grafana](https://grafana.com/grafana/download?platform=linux)
- [Dashboard Template](https://grafana.com/api/dashboards/11541/revisions/1/download)

## Rodando os testes
Para rodar os testes, rode o seguinte comando

```bash
  robot -d ./report -M Application:robot-web-test test/login_test.robot
```

## Enviando os resultados dos testes
Para enviar os resultados para o Grafana, rode o seguinte comando

```bash
  python3 test_archiver/output_parser.py --dbengine postgres --database robot_results --host localhost --user postgres --pw admin --port 5432 --metadata Application:robot-web-test report/output.xml
```

## Relatório dos testes
Acessando o Grafana
http://localhost:3000/
Login: admin
Senha: admin

## Relatório dos testes
./report/report.html

## Demonstração
[Assistir vídeo da execução](https://youtu.be/Okg_H1dS9pU)
[Assistir vídeo da execução e dados no Grafana](https://youtu.be/MwuQRMd4wBk)

## Screenshots
<img src="https://github.com/rlhorochovec/robot-web-test/blob/develop/Screenshots/grafana_dark.png" width="400" /> <img src="https://github.com/rlhorochovec/robot-web-test/blob/develop/Screenshots/grafana_light.png" width="400" /><br />
<img src="https://github.com/rlhorochovec/robot-web-test/blob/develop/Screenshots/report.png" width="400" /> <img src="https://github.com/rlhorochovec/robot-web-test/blob/develop/Screenshots/log.png" width="400" />

## Referência

 - [Robot Framework Grafana Dashboard](https://grafana.com/grafana/dashboards/11541-robot-framework-grafana-dashboard-part-1/)
 - [ROBOT FRAMEWORK TEST RESULTS IN GRAFANA – POSTGRESQL](https://cognitiveqe.com/robot-framework-test-results-in-grafana-postgresql/)