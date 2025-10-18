///////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////
// ERROR: BOT CAN'T WIN
///////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////
#include <stdio.h>
#include <stdbool.h>

#include <stdlib.h>
#include <time.h>

void callMenu(int *playerRoleP);
void game(int playerRole, int (*matrixCode)[3]);
void updateCompletion(bool *completed, int *winner, int matrixCode[3][3]);

void showMatrix(int matrixCode[3][3]);

void playerInput(int playerRole, int (*matrixCode)[3]);
void botInput(int playerRole, int (*matrixCode)[3]);


///////////////////////////////////////////////////////////////////////
int
main(void)
{
    // [1] = X, [2] = O
    int matrixCode[3][3] = {0};
    int playerRole;

    playerRole = 2;

    // callMenu(&playerRole);
    srand(time(NULL)); // random bot actions
    game(playerRole, matrixCode);

    exit(EXIT_SUCCESS);
}

///////////////////////////////////////////////////////////////////////
void 
callMenu(int *playerRoleP) 
{
    char playerRoleC; // C = char && P = pointer

    printf("Welcome to Tic-Tac-Toe in C. \nSelect a role [X or O]:\nANSW: ");

    while(playerRoleC != 'O' && playerRoleC != 'X')
    {
        scanf(" %c", &playerRoleC);
    
        if(playerRoleC != 'O' && playerRoleC != 'X') 
            printf("Please press O or X.\n ANSW: ");
    }

    *playerRoleP = 
    playerRoleC == 'X' ? 1 : 2;   
}

///////////////////////////////////////////////////////////////////////
void
game(int playerRole, int (*matrixCode)[3]) 
{
    bool completed = false;
    int winner = 0;

    printf("Game has started.\n");
    showMatrix(matrixCode);

    while(!completed)
    {
        playerInput(playerRole, matrixCode);

        updateCompletion(&completed, &winner, matrixCode);
        if(completed) break;
         
        botInput(playerRole, matrixCode);

        updateCompletion(&completed, &winner, matrixCode);
        if(completed) break;

        showMatrix(matrixCode);
    }

    showMatrix(matrixCode);

    printf("\nGame over!\n");
    
    if(winner != 0)
    {
        printf("Winner:");

        if(winner == playerRole)
            printf("Player");

        else if(winner != 0)
           printf("Bot");
    }
    else 
        printf("Tie");
}
///////////////////////////////////////////////////////////////////////

void 
playerInput(int playerRole, int (*matrixCode)[3]) 
{
    bool inserted = false;

    while(!inserted)
    {
        int line, column;

        printf("Select a line and column (format: [L][C], where [0 < L, C < 3] ) \n");
        scanf(" [%d][%d]", &line, &column);

        if(line >= 3 || column >= 3) {
            printf("\n[%d][%d] doesn't exist.\n", line, column);
            continue;
        }

        if(matrixCode[line][column] == 0) 
        {
            matrixCode[line][column] = playerRole;
            inserted = true;
        
        } else 
            printf("\n[%d][%d] has been already selected!\n", line, column);
        
    }
}

void 
botInput(int playerRole, int (*matrixCode)[3])
{
    int positions[2] = {-1, -1};

    while(matrixCode[positions[0]][positions[1]] != 0)
    {
        positions[0] = rand() % 3;
        positions[1] = rand() % 3;
    }

    matrixCode[positions[0]][positions[1]] = 
        playerRole == 1 ? 2 : 1;
}

void
updateCompletion(bool *completed, int *winner, int matrixCode[3][3])
{
    int cellsCompleted = 0, spottedWinner = 0;

    // diagonal
    if(
        matrixCode[1][1] != 0 && 
        (
            (matrixCode[0][0] == matrixCode[1][1] && matrixCode[1][1] == matrixCode[2][2]) ||
            (matrixCode[2][0] == matrixCode[1][1] && matrixCode[1][1] == matrixCode[0][2])
        )

    ) { spottedWinner = matrixCode[1][1]; };

    // line
    if(!spottedWinner)
        for(int l = 0; l < 3; l++)
            if(matrixCode[l][0] != 0)
            {
                cellsCompleted++;

                if(matrixCode[l][0] == matrixCode[l][1] && matrixCode[l][1] == matrixCode[l][2])
                {
                    spottedWinner = matrixCode[l][0];
                    break;                    
                }
            }
        ;
    ;

    if(cellsCompleted == 9)
    {
        *completed = true;
        return;
    }
    

    // column
    if(!spottedWinner)
        for(int c = 0; c < 3; c++)
            if(matrixCode[0][c] != 0 
                && matrixCode[0][c] == matrixCode[1][c] && matrixCode[1][c] == matrixCode[2][c])
            {
                spottedWinner = matrixCode[0][c];
                break;
            }
        ;
    ;

    if(spottedWinner != 0)
    {
        *winner = spottedWinner;
        *completed = true;
        return;
    }
}

void 
showMatrix(int matrixCode[3][3]) 
{
    printf("\n");
    
    for(int l = 0; l < 3; l++)
    {
        for(int c = 0; c < 3; c++)
            switch(matrixCode[l][c])
            {
                case 0:
                    printf("| |");
                    break;

                case 1:
                    printf("|X|");
                    break;

                case 2:
                    printf("|O|");
                    break;
            }
        ;

        printf("\n");
    }
}
