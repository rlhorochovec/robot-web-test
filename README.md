# robot-web-test
[![robot-web-test](https://github.com/rlhorochovec/robot-web-test/actions/workflows/ci.yml/badge.svg)](https://github.com/rlhorochovec/robot-web-test/actions/workflows/ci.yml)

Projeto de automação de testes web utilizando Robot Framework.

## Dependências
- Python 3.10.12
- Robot Framework: 6.1.1
- pip: 22.0.2

## Instalação
Instale robot-web-test com pip

```bash
  cd robot-web-test
  pip install robotframework
  pip install robotframework-seleniumlibrary
```

## Rodando os testes
Para rodar os testes, rode o seguinte comando

```bash
  robot -d ./report test/login_test.robot
```

## Relatório dos testes
./report/report.html

## Screenshots
<img src="https://github.com/rlhorochovec/robot-web-test/blob/develop/Screenshots/report.png" width="400" /> <img src="https://github.com/rlhorochovec/robot-web-test/blob/develop/Screenshots/log.png" width="400" />