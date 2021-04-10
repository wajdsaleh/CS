#include <stdio.h>

void average(int marks[][2],int n){

    float sum = 0; char g;
    for(int i=0;i<n;++i) sum += marks[i][1];
    sum /= n;
    printf("\nAverage Marks of students = %.2f\n", sum);

    if(sum >=40 && sum <=50) g = 'A';
    else if(sum >= 30 && sum <= 39) g = 'B';
    else if(sum >= 20 && sum <= 29) g = 'C';
    else if(sum >= 10 && sum <= 19) g = 'D';
    else g = 'F';
    printf("\nAverage Grade of students = %c\n",g);
}

void addBonus(int grades[][2], int n, int bonus) {
        for(int i = 0; i < n; ++i) grades[i][1] += bonus;
}

void sort(int grades[][2],int n) {
    int tempSN, tempG;
    for (int i=0;i<n;++i) {
        for (int j=0;j<n;++j) {
            if(grades[i][1]<grades[j][1]){
                tempSN = grades[i][0]; tempG = grades[i][1];
                grades[i][0] = grades[j][0]; grades[i][1] = grades[j][1];
                grades[j][0] = tempSN; grades[j][1] = tempG;
            }
        }
    }
     printf("\nThe grade after adding bouns and sorting:\n");
    for(int i = 0; i < n; ++i)
        printf("student id %d:\t   Grade %d\n", grades[i][0],grades[i][1]);
}

void printGrades(int grades[][2], int n){
    for(int i = 0; i < n; ++i)
        printf("student id %d:\t   Grade %d\n", grades[i][0],grades[i][1]);
}

int main(){
    int n=50;
    int marks[][2]={
        {1,22},{2,41},{3,13},{4,27},{5,33},{6,31},{7,7},{8,43},{9,38},{10,11},
        {11,18},{12,24},{13,29},{14,36},{15,23},{16,16},{17,39},{18,18},{19,29},{20,40},
        {21,12},{22,19},{23,26},{24,31},{25,38},{26,30},{27,42},{28,9},{29,14},{30,27},
        {31,31},{32,29},{33,28},{34,19},{35,11},{36,38},{37,41},{38,38},{39,20},{40,10},
        {41,8},{42,33},{43,5},{44,35},{45,25},{46,29},{47,31},{48,13},{49,17},{50,42}
        };
    int c1=0,c2=0,c3=0,c4=0,c5=0,c6=0,c7=0,c8=0,c9=0,c10=0;

    printf("The grade is:\n");
    printGrades(marks,n);
    printf("================================================ \n");

    for (int i = 0; i < n; ++i){
        if (marks[i][1] >= 45 && marks[i][1] <= 50) c1++;
        else if(marks[i][1]>=40&&marks[i][1]<=44) c2++;
        else if(marks[i][1]>=35&&marks[i][1]<=39) c3++;
        else if(marks[i][1]>=30&&marks[i][1]<=34) c4++;
        else if(marks[i][1]>=25&&marks[i][1]<=29) c5++;
        else if(marks[i][1]>=20&&marks[i][1]<=24) c6++;
        else if(marks[i][1]>=15&&marks[i][1]<=19) c7++;
        else if(marks[i][1]>= 10&&marks[i][1]<=14) c8++;
        else if(marks[i][1]>=0&&marks[i][1]<=9) c9++;
        else if(marks[i][1]>=0&&marks[i][1]<=4) c10++;
    }

    printf("\nThe number of students between (50-45)is: %d\n",c1);
    printf("\nThe number of students between (44-40)is: %d\n",c2);
    printf("\nThe number of students between (39-35)is: %d\n",c3);
    printf("\nThe number of students between (34-30)is: %d\n",c4);
    printf("\nThe number of students between (29-25)is: %d\n",c5);
    printf("\nThe number of students between (24-20)is: %d\n",c6);
    printf("\nThe number of students between (19-15)is: %d\n",c7);
    printf("\nThe number of students between (14-10)is: %d\n",c8);
    printf("\nThe number of students between (9-5)is: %d\n",c9);
    printf("\nThe number of students between (4-0)is: %d\n",c10);
    printf("================================================\n");

    average(marks,n);
    printf("================================================ \n");
    addBonus(marks,n,5);
    sort(marks,n);
    printf("================================================ \n");

    // Binary search:
    int element, c = 0, i;
    printf("Enter Element to Search : "); scanf("\n\n%d", &element);
    i = (element >= marks[25][1]? 25 : 0);
    for(; i<50; i++){
        if(element == marks[i][1]){
            printf( "\n%d  the grades is found \n ",element ); break;
        }
        else c++;
    }
    if(c == 25 || c == 50) printf("Not found! %d isn't present in the list.\n", element);

    return 0;
 }
