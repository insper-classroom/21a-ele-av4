# 21b - AV4 

| AV      | Pontos HW | Pontos SW |
| ------- | ------    | ------    |
| Prática | 41        | 65        |

Regras:

- **Trabalhar sozinho**
- **150 min** total
- Ficar conectado no canal geral (para ouvir instruções)

:tada: **Lembre de realizar um commit (a cada questão) e dar push ao finalizar**

Resumo questões:

- Hardware
  - 10 HW / 0 SW: Tabela Verdade
  - 10 HW / 0 SW: Mapa de Karnaught
  - 11 HW / 0 SW: Elevador
- VM
  - 0 HW / 10 SW: Pseudo
  - 0 HW / 15 SW: ABS
  - 0 HW / 20 SW: Fatorial
- VM Translator
  - 5 HW / 10 SW: delete
  - 5 HW / 10 SW: addi

----------------------------------

## Hardware

As questões de HW não possuem testes que verificam a solucao, os testes servem apenas para
verificar se o VHDL foi escrito corretamente e não possui erro de sintaxe.

### (10 HW / 0 SW) Tabela verdade

- Arquivo: `vhd/tabelaVerdade.vhd`
- Teste: `./testeHW.py`

| Teste | O que testa     | pts |
|-------|-----------------|-----|
| 0     | só sintaxe VHDL | 10  |

Encontre a equacão booleana referente as tabelas verdade a seguir, as equações devem
ser implementada em VHDL no arquivo: `tabelaVerdade.vhd`. 

#### (s0)

Possui três entradas (A,B,C) e uma saída (S0).

| A   | B   | C   | S0  |
| --- | --- | --- | --- |
| 0   | 0   | 0   | 0   |
| 0   | 0   | 1   | 0   |
| 0   | 1   | 1   | 1   |
| 0   | 1   | 0   | 0   |
| 1   | 0   | 1   | 0   |
| 1   | 0   | 0   | 1   |
| 1   | 1   | 0   | 0   |
| 1   | 1   | 1   | 1   |

#### (s1)

Possui quatro entradas (A,B,C,D) e uma saída (S1).

| A   | B   | C   | D   | S1  |
| --- | --- | --- | --- | --- |
| 1   | 0   | 0   | 0   | 1   |
| 1   | 0   | 0   | 1   | 1   |
| 1   | 0   | 1   | 0   | 1   |
| 1   | 0   | 1   | 1   | 1   |
| 1   | 1   | 0   | 0   | 0   |
| 1   | 1   | 0   | 1   | 0   |
| 1   | 1   | 1   | 0   | 0   |
| 1   | 1   | 1   | 1   | 0   |
| 0   | X   | X   | X   | 0   |

### (10 HW / 0 SW) Mapa de Karnaught

- Arquivo: `vhd/mapaKarnaught.vhd`
- Teste: `./testeHW.py`

| Teste | O que testa     | pts |
|-------|-----------------|-----|
| 0     | só sintaxe VHDL | 10  |

Encontre a equacão dos mapas de Karnaught a seguir e transcreva para VHDL no arquivo `vhd/mapaKarnaught.vhd`.

![](karnaught.png)

### (10 HW/ 0 SW) Elevador

- Arquivo: `vhd/elevador.vhd`
- Teste: `./testeHW.py`

| Teste | O que testa     | pts |
|-------|-----------------|-----|
| 0     | só sintaxe VHDL | 11  |

Projete um circuito lógico que controla a porta de um elevador de um prédio de três andares. O circuito na figura a seguir possui 4 entradas (M, F0, F1 e F2) e duas saídas (ABRIR, TRAVA). M é um sinal lógica que quando alto indica que o elevador está se movendo e quando baixo, parado.  F0, F1, F2  são sinais indicadores dos andares que o elevador se encontra, passando para alto quando o elevador estiver no andar em questão. Por exemplo, quando estiver no segundo andar os sinais F ficam da seguinte forma: `M=0, F0=0, F1=0, F2=1` e quando estiver por exemplo passando pelo primeiro andar `M=1, F0=0, F1=1, F2=0` e térreo `F0=1, F1=0, F2=0`.

``` 
         |------------|
    M -->|            | --> ABRIR
   F0 -->|            |
   F1 -->|            | --> TRAVA
   F2 -->|            |
         |------------|
```

As saídas dos circuitos são: ABRIR, que indica quando uma porta deve ser aberta (Alto = aberta, Baixo = fechada) e TRAVA que controla a trava da porta do elevador (Baixo =desligado; Alto = ligado), que deve ficar travada sempre que a porta não puder abrir.

Encontre as equações reduzidas que descrevem as duas saídas com base nas quatro entradas, e escreva a equação em VHDL que a representa (`vhd/elevador.vhd`).

## VM

Questão de linguagem virtual de pilha, se você quiser pode modificar quantas variávis locais as funções que irá implementar possuem.

### (0 HW/ 10 SW) vm pseudo 

- Arquivo: `vm/pseudo/Main.vm`
- Teste: `./testeVm.py`

| Teste | O que testa | pts |
|-------|-------------|-----|
| 0     | if          | 5   |
| 1     | else        | 5   |

Transcreva para linguagem VM do Z01 o pseudo código a seguir:

```python
 if( temp[0] == 4) {
     temp[1] = 12
 }
 else {
     temp[1] = temp[2] + 4
 }
```

Onde:
  - temp[0]: temporário 0 (`push temp 0`)
  - temp[1]: (`pop temp 1`)

### (0 HW/ 15 SW) VM Função ABS

- Arquivo: `vm/abs/abs.vm`
- Teste: `./testeVm.py`

| Teste | O que testa   | pts |
|-------|---------------|-----|
| 0     | valores + e - | 15  |

Escreva uma função (abs) em linguagem VM que retorna o valor absoluto (módulo) de um valor passado
como argumento.

### (0 HW/ 20 SW) VM Função Fatorial

- Arquivo: `vm/fact/fact.vm`
- Teste: `./testeVm.py`

| Teste | O que testa | pts |
|-------|-------------|-----|
| 0     | 0!          | 5   |
| 1     | 1!          | 5   |
| 2     | 3!          | 10  |

Escreva uma função (fact) em linguagem VM que retorna o fatorial de um valor passado
como argumento.

> Você deve usar a função MULT que já está implementanda.

## VM Translator

Questões referente a traducão da linguagem pilha para asm.

### (5 HW/ 10 SW) Q4 - vm translator `delete`

- Arquivo: `vmTranslator/src/main/java/vmtranslator/Code.java`
- Teste: `./testeVMtranslator.py`

| Teste | O que testa | pts          |
|-------|-------------|--------------|
| 0     | delete      | 5 HW / 10 SW |

Esta nova instrução VM deve deletar um valor da pilha, como no exemplo a seguir;

```
   
       14                 14
       12          SP-->  12
 SP-->              
          delete
```

A tradução do comando `delete` de `.vm` para `nasm` deve ser feito no `Code.java`:

``` java
    if (command.equals("delete")) {


    }
```


### (5 HW/ 10 SW) Q4 - vm translator `addi $INDEX`

- Arquivo: `vmTranslator/src/main/java/vmtranslator/Code.java`
- Teste: `./testeVMtranslator.py`

| Teste | O que testa | pts          |
|-------|-------------|--------------|
| 0     | exemplo 1   | 5 hw / 10 SW |

> Precisa passar nos dois testes para ter os pontos!

A nova instrução vm `addi $INDEX` faz a soma do que está no topo da pilha com um valor passado, como no exemplo a seguir:

```
       5                5
       2                7
 SP-->            SP-->
          addi 5
```

Isso pode ser usado nas seguintes situações:

``` 
push constant 5    ===> addi 5
add
```

A tradução do comando `addi $INDEX` de `.vm` para `nasm` deve ser feito no `Code.java`:

``` java
    if ( command.equals("addi")) {


    }
```
Note que o valor do $index pode ser qualquer número inteiro, que é passado pelo `Integer index`. 

> Dica: você vai ter que usar algo assim para acessar o index: `String.valueOf(index)`.
