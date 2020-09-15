# robotframeworkbasic
Python + Robot Framework + Selenium

# iniciando

## baixar vscode
	instalar as extensões robot framework intellisense, python

## baixar python
	conferir versão python e pip

## baixar driver do navegador para executarmos o selenium

* confira a versão do driver conforme seu navegador
** Google Chrome: https://chromedriver.chromium.org/downloads
** Mozilla Firefox: https://github.com/mozilla/geckodriver/releases
** Opera: https://github.com/operasoftware/operachromiumdriver/releases

## baixar cmder ou usar gitbash

## instalar robotframework pelo gerenciar de pacotes do python (pip)
	
* pip install robotframework
* confirmar robot --version

## no vscode, criar app.py

```python
def welcome(name):
        return "Ola " + name + ", bem vindo ao curso basico de Robot Framework!"

result = welcome("Fulano")
print(result) 
```

## no terminal, digitar "python app.py"
	
* Ola Fulano, bem vindo ao curso basico de Robot Framework!

## usar o robot para executar a aplicação
	
* criar arquivo "test.robot"

```
*** Settings ***
Library     app.py

*** Test Cases ***
Deve retornar mensagem de boas vindas
    ${result}=          welcome     Fulano
    Should Be Equal     ${result}   Ola Fulano, bem vindo ao curso basico de Robot Framework!
```

* executar "robot test.robot"
		
```
==============================================================================
Test
==============================================================================
Deve retornar mensagem de boas vindas                                 | PASS |
------------------------------------------------------------------------------
Test                                                                  | PASS |
1 critical test, 1 passed, 0 failed
1 test total, 1 passed, 0 failed
==============================================================================
Output:  C:\Users\luan\qa\robot\output.xml
Log:     C:\Users\luan\qa\robot\log.html
Report:  C:\Users\luan\qa\robot\report.html
```

## instalando e importanto a biblioteca selenium para python no robot

* executar no terminal para instalar o selenium
~~~
pip install robotframework-seleniumlibrary
~~~

* criar um arquivo.robot e inserir os comandos

* importar a biblioteca selenium
~~~
*** Settings ***
Library         SeleniumLibrary
~~~

* inserindo Caso de Teste e iniciando o driver pelo chrome
~~~
*** Test Cases ***
Should see page title
    Open Browser        https://training-wheels-protocol.herokuapp.com/     chrome
    Title Should Be     Training Wheels Protocol
    Close Browser
~~~

* executar o teste gravando o log em uma pasta separada
~~~
robot -d ./web/log web/checkbox.robot
~~~