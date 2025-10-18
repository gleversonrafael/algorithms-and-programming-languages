#include <stdio.h>

int main(void) {
    int currentCommand;
    float currentBalance = 0.0f, newEntry = 0.0f;

    printf("-----------------------------\nCheckbook balancing program\n");
    printf("Commands: 0 = clear | 1 = credit | 2 = debit | 3 = balance | 4 = exit\n");

    for(int leaveState = 0; leaveState != 1;) {
        printf("Enter command: ");
        scanf("%1d", &currentCommand);
        
        switch(currentCommand) {
            case 0:
                newEntry = -currentBalance;
                break;

            case 1:
                printf("Enter amount of credit: ");
                scanf("%f", &newEntry);

                break;

            case 2:
                printf("Enter amount of debit: ");
                scanf("%f", &newEntry);

                newEntry = -newEntry;
                break;

            case 3:
                printf("Current balance: %.2f\n", currentBalance);
                break;

            case 4:
                leaveState = 1;
                break;

            default:
                printf("Unknown command.\nPlease try again.\n");
        }

        currentBalance += newEntry;
        newEntry = 0.0f;
    }

    return 0;
}