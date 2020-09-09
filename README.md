# robotframeworkbasic
Python + Robot Framework + Selenium

# iniciando

## baixar vscode
	instalar as extensões robot framework intellisense, python

## baixar python
	conferir versão python e pip

## baixar cmder ou usar gitbash

## instalar robotframework pelo gerenciar de pacotes do python (pip)
	* pip install robotframework
	* confirmar robot --version

## no vscode, criar app.py

    ``` 
    def welcome(name):
	    	return "ola " + name + ", bem vindo ao curso basico de Robot Framework!"

	result = welcome("Fulano")
	print(result) 
    ```

## no terminal, digitar "python app.py"
	* ola Fulano, bem vindo ao curso basico de Robot Framework!

## usar o robot para execucar a aplicação
	* criar arquivo "test.robot"

		```
        *** Settings ***
		Library     app.py

		*** Test Cases ***
		Deve retornar mensagem de boas vindas
    		welcome     Fulano
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