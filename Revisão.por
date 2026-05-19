programa {
    funcao inicio() {
        // 1. DECLARAÇÃO DE TODAS AS VARIÁVEIS
        cadeia nomeAluno
        inteiro opcao, numeroTabuada, resto
        real valor1, valor2
        caracter confirmacao
        logico continuar = verdadeiro // Variável lógica para controlar o loop principal

        // Boas-vindas
        escreva("=== MEGA REVISÃO DE LÓGICA ===\n")
        escreva("Digite seu nome para iniciar: ")
        leia(nomeAluno)

        // 2. LAÇO 'ENQUANTO' (WHILE)
        // O menu vai repetir enquanto a variável 'continuar' for verdadeira
        enquanto (continuar == verdadeiro) {
            
            escreva("\n-----------------------------------\n")
            escreva("Olá, ", nomeAluno, "! Escolha um módulo:\n")
            escreva("1 - Operações Matemáticas (+, -, *, /, %)\n")
            escreva("2 - Situação do Aluno (SE aninhado)\n")
            escreva("3 - Gerador de Tabuada (Laço PARA)\n")
            escreva("0 - Sair do Sistema\n")
            escreva("Opção: ")
            leia(opcao)
            escreva("-----------------------------------\n")

            // 3. ESTRUTURA DE MÚLTIPLA ESCOLHA (SWITCH CASE)
            escolha (opcao) {
                
                caso 1:
                    escreva("\n--- MÓDULO MATEMÁTICA ---\n")
                    escreva("Digite um número: ")
                    leia(valor1)
                    escreva("Digite outro número: ")
                    leia(valor2)

                    // Operadores Matemáticos
                    escreva("Soma (+): ", (valor1 + valor2), "\n")
                    escreva("Subtração (-): ", (valor1 - valor2), "\n")
                    escreva("Multiplicação (*): ", (valor1 * valor2), "\n")

                    // SE simples para evitar erro de divisão por zero
                    se (valor2 != 0.0) {
                        escreva("Divisão (/): ", (valor1 / valor2), "\n")
                    } senao {
                        escreva("Divisão: ERRO! Não é possível dividir por zero.\n")
                    }

                    // Operador Módulo (%) - Pega o resto da divisão
                    escreva("\nVamos testar o Módulo (%). Digite um número inteiro: ")
                    leia(numeroTabuada) // Reaproveitando a variável inteira
                    resto = numeroTabuada % 2
                    
                    se (resto == 0) {
                        escreva("O número ", numeroTabuada, " é PAR (resto = 0).\n")
                    } senao {
                        escreva("O número ", numeroTabuada, " é ÍMPAR (resto = 1).\n")
                    }
                    pare

                caso 2:
                    escreva("\n--- MÓDULO AVALIAÇÃO (SE ANINHADO) ---\n")
                    escreva("Digite a nota final (0 a 10): ")
                    leia(valor1) // Reaproveitando variável real

                    // 4. ESTRUTURAS CONDICIONAIS E ANINHAMENTO
                    se (valor1 >= 7.0) {
                        escreva("Situação: APROVADO!\n")
                        
                        // SE Aninhado (um se dentro de outro)
                        se (valor1 == 10.0) {
                            escreva("Incrível! Você tirou a nota MÁXIMA!\n")
                        }
                    } senao {
                        // Outro aninhamento para separar recuperação de reprovação
                        se (valor1 >= 5.0) {
                            escreva("Situação: RECUPERAÇÃO. Estude mais!\n")
                        } senao {
                            escreva("Situação: REPROVADO DIRETO.\n")
                        }
                    }
                    pare

                caso 3:
                    escreva("\n--- MÓDULO TABUADA ---\n")
                    escreva("Qual tabuada você quer ver? ")
                    leia(numeroTabuada)

                    // 5. LAÇO 'PARA' (FOR)
                    // Declara a variável 'i', diz que vai até 10, e aumenta de 1 em 1 (i++)
                    para (inteiro i = 1; i <= 10; i++) {
                        escreva(numeroTabuada, " x ", i, " = ", (numeroTabuada * i), "\n")
                    }
                    pare

                caso 0:
                    // Uso da variável caracter para confirmar
                    escreva("\nTem certeza que deseja sair? (S/N): ")
                    leia(confirmacao)
                    
                    // O 'ou' serve para aceitar tanto letra maiúscula quanto minúscula
                    se (confirmacao == 'S' ou confirmacao == 's') {
                        continuar = falso // Isso quebra o laço 'enquanto'
                        escreva("Encerrando o sistema. Até logo!\n")
                    } senao {
                        escreva("Cancelado. Voltando ao menu...\n")
                    }
                    pare

                caso contrario:
                    // Se o aluno digitar 9, por exemplo, cai aqui
                    escreva("\nOpção inválida! Digite um número do menu.\n")
            }
        }
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 5059; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */