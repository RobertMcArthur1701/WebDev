const myNums = [1, 2, 3, 4, 5, 6, 7, 8, 9];
let oddNums = 0;
let evenNums = 0;

for (i in myNums) {
    if (myNums[i] % 2 == 0) {
        evenNums++
    } else {
        oddNums++
    }
}
