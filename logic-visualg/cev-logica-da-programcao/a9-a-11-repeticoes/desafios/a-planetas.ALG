Algoritmo "PlanetaComMaiorMassa"

Var
  biggestMass, mass, StarNumber, Quantity:inteiro
  start, canProceed, star, TheStar, loop:caractere

// Cooldown e mudar a tela
Procedimento wait()
Inicio

  Timer 100
  LimpaTela()
  Timer 0

FimProcedimento

// Comparar o nome com a suposta massa do planeta
Procedimento compare()
Inicio

 Se(star = "JUPITER") ou (star = "JÚPITER") entao
   mass <- 10
   star <- "JÚPITER")
   
 FimSe
 
 Se(star = "SATURNO") entao
   mass <- 9

 FimSe
 
 Se(star = "NETUNO") entao
   mass <- 8
 
 FimSe
 
 Se(star = "URANO") entao
   mass <- 7
 
 FimSe
 
 Se(star = "TERRA") entao
   mass <- 6
 
 FimSe
 
 Se(star = "VÊNUS") ou (star = "VENUS") entao
   mass <- 5
   star <- "VÊNUS"
   
 FimSe
 
 Se(star = "MARTE") entao
   mass <- 4

 FimSe
 
 Se(star = "MERCÚRIO") ou (star = "MERCURIO") entao
   mass <- 3
   star <- "MERCÚRIO"

 FimSe
 
 Se(star = "PLUTÃO") ou (star = "PLUTAO") entao
   mass <- 2
   star <- "PLUTÃO"
   
 FimSe

 Se(star = "LUA") entao
   mass <- 1
 
 FimSe
 
 FimProcedimento

Procedimento rocket()
Inicio

Escreval("______________________________________________________________________________________________________________")
Escreval("______________________________________________________________________________________________________________")
Escreval("                                                                                                              ")
Escreval("                ||||| ||      ||    ||   | ||||| ||||||                 |||||                                 ")
Escreval("          /\    || || ||    || ||   ||\  | |_ _    ||          ______||       ||______                        ")
Escreval("          ||    |||   ||   |||||||  || \ | |---    ||       =========||=======||=========                     ")
Escreval("          ||    ||    |||| ||   ||  ||   | |||||   ||           --===||       ||===--                         ")
Escreval("         /||\                                                           |||||                                 ")
Escreval("         |  |                                                        __ __ __ __     _ __ _      __ __ __ __  ")
Escreval("         |  |             ||\    /| |||||  ||||||   ||||||           || || || ||       ||        || || || ||  ")
Escreval("        /|==|\            || \  / | ||  | |||      |||               || || || ||     ==||==      || || || ||  ")
Escreval("       |      |           ||  \/  | |||||   ||||    ||||           ==||-||-||-||____||=||=||_____||-||-||-||==")
Escreval("       |-=-=-=|           ||      | ||  | |||||||  |||||||           || || || ||  ___|(  )|___   || || || ||  ")
Escreval("      /|=-=-=-|\                                                     || || || ||                 || || || ||  ")
Escreval("     |-        -|                                                                                             ")
Escreval("     |=     -   |                ||||                                                                         ")
Escreval("     |=     -   |              ||     |||||| ||\  /|  |||||  ||||||  |||||  ||||| |||||| ||||||  ||||||       ")
Escreval("     |=     -   |              ||     ||   | || || |  ||   | ||   |  ||  || ||  |   ||   ||  ||  ||  ||       ")
Escreval("     |=     -   |              ||     ||   | || || |  |||||  ||||||  ||||   |||||   ||   ||  ||  ||||         ")
Escreval("     |      =   |                |||| |||||| || || |  ||     ||  ||  ||  || ||  |   ||   ||||||  ||  ||       ")
Escreval("     ||||||||||||                                                                                             ")
Escreval("     |||      |||                                                                                             ")
Escreval("     |||      |||                                                                                             ")
Escreval("    /|||      |||\                                                                                            ")
Escreval("   |___   ===  ___|                                                                                           ")
Escreval("   |==|   ===  |==|     ||\  ====  ======    =    ||==\\  ======                                              ")
Escreval("  /|==|        |==|\    || \ ||      ||     / \   ||  ||    ||                                                ")
Escreval(" /-|==|        |==|-\   || /   \\    ||    /===\  ||==\\    ||    [INSIRA S PARA INICIAR O PROGRAMA]          ")
Escreval("(__|__|\______/|__|__)  ||/  ====    ||   /     \ ||   ||   ||                                                ")
Escreval("    /\____/\____/\                                                                                            ")
Escreval("   (__)  (__)  (__)                                                                                           ")
Escreval("______________________________________________________________________________________________________________")
Escreval("______________________________________________________________________________________________________________")

FimProcedimento

Procedimento list()
Inicio

  Escreval("))/-------|--------|-------|---------|---------\)")
  Escreval(")  PLUTÃO | NETUNO | URANO | SATURNO | JÚPITER  |")
  Escreval(")  MARTE  | TERRA  |  LUA  | VÊNUS   | MERCÚRIO |")
  Escreval(")\--------|--------|-------|---------|---------/)")


FimProcedimento


//Desenhar Planetas
Procedimento drawn()
Inicio

  Se(TheStar = "SATURNO") entao
    Escreval()
    Escreval("___________________________________________________________")
    Escreval("|                                                         |")
    Escreval("|     *        *          (---)         *         *       |")
    Escreval("|          *           (         )          *             |")
    Escreval("|  *                 (             )                   *  |")
    Escreval("|     ========  ---(                 )---  ========       |")
    Escreval("|=================(===================)================== |")
    Escreval("|       -------====(=================)====-------         |")
    Escreval("|  *         *       (             )                 *    |")
    Escreval("| ________________     (         )_________     *         |")
    Escreval("| MASSA:568x10²³+¹        (---)   |SATURNO|               |")
    Escreval("|_________________________________________________________|")
  FimSe

  Se(TheStar = "JUPITER") ou (TheStar = "JÚPITER") entao
    Escreval()
    Escreval("___________________________________________________________")
    Escreval("|                                              *          |")
    Escreval("|   *       *  *  *     ((===))      *   *            *   |")
    Escreval("|                     ((=======))            *       *    |")
    Escreval("| *     *           ((           ))    *            *  *  |")
    Escreval("|     * * *  *    ((===============))               **    |")
    Escreval("|                (         __        )      *      *  **  |")
    Escreval("| *     *    *    (=======(--)=====))      *      *     * |")
    Escreval("|    *             ((        --   ))   *     *  *         |")
    Escreval("| _________________   (==-==-==-)________          *      |")
    Escreval("| MASSA:1899x10²³+¹     \(===)/  |JÚPITER|  *         *   |")
    Escreval("|_________________________________________________________|")

  FimSe

  Se(TheStar = "NETUNO") entao
    Escreval()
    Escreval("___________________________________________________________")
    Escreval("| * *                                      *  *           |")
    Escreval("|  *        *       *   ((=-=))   *           *           |")
    Escreval("|      *     *        (=========)         * * *           |")
    Escreval("|   *    *   *      ((  --   -   ))    *    *    **   *   |")
    Escreval("|            *    ((      __-_     ))        *    *       |")
    Escreval("|    ***   *     (   --  (  - ) --   )        *           |")
    Escreval("|                 (       ----      )        *     *      |")
    Escreval("|  *    *      *   (( -    --     ))       *              |")
    Escreval("|                    (===========)________   *       *    |")
    Escreval("| MASSA:102x10²³+¹      \(=-=)/   |NETUNO|       *        |")
    Escreval("|_________________________________________________________|")

  FimSe

  Se(TheStar = "URANO") entao
    Escreval()
    Escreval("___________________________________________________________")
    Escreval("| *             *                *                        |")
    Escreval("|       *         *     ((===))          *          *     |")
    Escreval("|           *         (    ---  )          *     *        |")
    Escreval("|   *           -   ((   --      ))   -                   |")
    Escreval("|          ---    ((          __   ))   ---          *    |")
    Escreval("| *    *   * --- ( ---    ___        ) ---      *         |")
    Escreval("| *        *      (--         ---   )                   * |")
    Escreval("|   * * *    *     ((   __      --))   *   *         *    |")
    Escreval("|                    (           )_______                 |")
    Escreval("| MASSA:87,2x10²³+¹     \(===)/   |URANO|     *    *      |")
    Escreval("|_________________________________________________________|")

  FimSe

  Se(TheStar = "TERRA") entao
    Escreval()
    Escreval("___________________________________________________________")
    Escreval("|        *                       *              *         |")
    Escreval("|*   *         *   *    (----) *      *   *  *       *    |")
    Escreval("|     *   O           ( - = -  )   *            *         |")
    Escreval("|  *           *    (            )     * *   *      *  *  |")
    Escreval("|      *     *    (        ---== - )  *        *    *     |")
    Escreval("|*   *           (=       == = = =-= )    *        *      |")
    Escreval("|         *       (==    =====     =)          *       *  |")
    Escreval("|*  *  *      *    (==    ==      )*   *    *       *     |")
    Escreval("| *      *      *     (   =    )  _______      *      *   |")
    Escreval("| MASSA:5,97x10²³+¹ *   (----)    |TERRA| *  *     *      |")
    Escreval("|_________________________________________________________|")

  FimSe

  Se(TheStar = "VÊNUS") ou (TheStar = "VENUS") entao
    Escreval()
    Escreval("___________________________________________________________")
    Escreval("|   *            *         *           *       *   *      |")
    Escreval("|       *     *      *  ((---))    *     *             *  |")
    Escreval("|  *  *           *   (-    --\ )      *    *     *       |")
    Escreval("|   *         *     ((- |-    -- ))            *          |")
    Escreval("|  *    *         ((  -   =-     -=))    *            *   |")
    Escreval("|           *    (==      -=   =-=-==)  * *   *   *       |")
    Escreval("|*      *         (===  =-  ===-==  )                     |")
    Escreval("|   *         *    ((-==-     -   ))  *    *    *     *   |")
    Escreval("| _________________  ( -   -   - )_______      *          |")
    Escreval("| MASSA:4,87x10²³+¹     \(---)/   |VÊNUS|   *     *  *    |")
    Escreval("|_________________________________________________________|")

  FimSe

  Se(TheStar = "MARTE") entao
    Escreval()
    Escreval("___________________________________________________________")
    Escreval("|  *               *     *         *      *  *      *     |")
    Escreval("|      *     *          ((---))        *      *   *       |")
    Escreval("|  *      *      *    ( -      -)   *     *       *   *   |")
    Escreval("|*             *    (( O   *|/   ))            *          |")
    Escreval("|     *     *     (( -       -    =))     *        *  *   |")
    Escreval("|   *         *  ( -   *-     -   -==) *      *   *       |")
    Escreval("|*       *        ( -    - -   O- = )     *            *  |")
    Escreval("|  *        *      ((-     - *-   ))  *      *   *   *    |")
    Escreval("|     *  *     *     ( -  -      )_______ *            *  |")
    Escreval("| MASSA:0,64x10²³+¹     \(---)/   |MARTE|    *   *   *    |")
    Escreval("|_________________________________________________________|")

  FimSe
  
  Se(TheStar = "MERCÚRIO") ou (TheStar = "MERCURIO") entao
    Escreval()
    Escreval("___________________________________________________________")
    Escreval("| *           *                       *           *       |")
    Escreval("|    *   *          *   ((---))  *           *        *   |")
    Escreval("|        *    *       (- -  = - )     *            *      |")
    Escreval("| *   *          *  (( - =  O  = ))         *             |")
    Escreval("|       *         (( O  -  /= \ =  ))   *             *   |")
    Escreval("| *  *     * *   ( - |  - O  - \  -  )      *    *        |")
    Escreval("|      * *        ( =| - /  =   O=  )    *          *     |")
    Escreval("|  *     *    *    ((O\ /  =-  /= ))        *             |")
    Escreval("| _________________  (  O -   O  )__________    *   *     |")
    Escreval("| MASSA:0,33x10²³+¹     \(---)/   |MERCÚRIO|              |")
    Escreval("|_________________________________________________________|")

  FimSe

  Se(TheStar = "PLUTAO")ou (TheStar = "PLUTÃO") entao
    Escreval()
    Escreval("___________________________________________________________")
    Escreval("|         *                     *                         |")
    Escreval("|                *      ((---))        *      *           |")
    Escreval("|    *       *        (| || | | )   *     *       *     * |")
    Escreval("| *       *    *    (( |   | |   ))         *     *       |")
    Escreval("|    *            (( -  -   ___  __))  ** *        *      |")
    Escreval("|            *   (  -   -  ( \ \/    )                    |")
    Escreval("|   *             (-----_ --\    \  )      *       *      |")
    Escreval("|  *  * *   *      (( -   -  \ |  ))       *      *  *    |")
    Escreval("| _________________  (__-___/    )________                |")
    Escreval("| MASSA:0,02x10²³+¹     \(---)/   |PLUTÃO|   *      *     |")
    Escreval("|_________________________________________________________|")

  FimSe

  Se(TheStar = "LUA") entao
    Escreval()
    Escreval("___________________________________________________________")
    Escreval("|*        *                *            *                 |")
    Escreval("|    *          *       ((---))    *           *    *     |")
    Escreval("|          *          (-   -    )           *          *  |")
    Escreval("|    *        *     ((- -  ==- O ))     *       *         |")
    Escreval("|*       *        ((==    -  =O= = ))  *              *   |")
    Escreval("|          *     ( =  O -     - =-=-=)     *              |")
    Escreval("|  *   *          ( == -  -    = - =)    * * *      *     |")
    Escreval("|             *    (( -O   -      ))       *    *         |")
    Escreval("| _______________    ( ( )   -   )_____             *     |")
    Escreval("| MASSA:73,5x10²¹   *   \(---)/   |LUA|   *      *        |")
    Escreval("|_________________________________________________________|")

  FimSe

FimProcedimento

Inicio

  //Variáveis constantes
  StarNumber <- 1
  TheStar <- ""
  loop <- "S"
  biggestMass <- 0
  TheStar <- ""
  canProceed <- "N"
  start <- "N"

  Repita
    rocket()
    Escreval()

    Escreva("[:")
    Leia(start)
    LimpaTela()
    
  Ate start = "S"

  //Lista
  Escreval("| Tecerei comparações entre as massas de planetas do Sistema Solar.|")
  Escreval("| Como referência selecione astros da lista abaixo, lembre-se de escrever em letra maiúscula.")
  Escreval("|")
  list()
  Escreval()
  
  //Número de astros comparados
  Enquanto loop = "S" faça
    Escreval(")Quantos astros serão comparados?")
    Escreval(")Saiba que o o limite de astros que podem ser comparados é 10.")
    Escreva(")R:")
    Leia(Quantity)
    wait()

    Se(Quantity <= 10) e (Quantity >= 1) entao
      loop <- "N"

    Senao
      Escreval("-=> TENTE NOVAMENTE. <=-")
      Escreval("-=> Insira uma quantia entre 1 e 10. <=-")
      Escreval()
      
    FimSe

  FimEnquanto

  //Nome dos astros
  Enquanto Quantity >= 1 faça
    Escreval("---| ",StarNumber,"º ASTRO |---")

    Enquanto canProceed <> "S" faça
      Escreva("-NOME:")
      Leia(star)
      Escreval()

      Se(star = "MERCURIO") ou (star = "MERCÚRIO") ou (star = "VÊNUS") ou (star = "VENUS") ou (star = "LUA") ou (star = "TERRA") ou (star = "MARTE") ou (star = "JUPITER") ou (star = "JÚPITER") ou (star = "SATURNO") ou (star = "URANO") ou (star = "NETUNO") ou (star = "PLUTAO") ou (star = "PLUTÃO") entao
        canProceed <- "S"
        LimpaTela()
        
      Senao
        LimpaTela()
        Escreval("---| ",StarNumber,"º ASTRO |---")
        Escreval("||Insira o nome de um astro na lista abaixo.||")
        Escreval("||Lembre-se da letra maiúscula.")

        Escreval()
        list()
        Escreval()
        
      FimSe

    FimEnquanto
    
    canProceed <- "N"
    compare()

    Se(mass > biggestMass) entao
      TheStar <- star
      biggestMass <- mass
      
    FimSe

    Quantity <- Quantity - 1
    StarNumber <- StarNumber + 1

  FimEnquanto
  
  drawn()
  Escreval("|")
  Escreval("|-~-\ CORPO CELESTE COM MAIOR MASSA ENTRE ESSES ASTROS /-~-")
  Escreval("|=>                     ",TheStar, "            ")
  Escreval("|__________________________________________________________")
  
Fimalgoritmo