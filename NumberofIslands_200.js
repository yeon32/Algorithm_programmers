const input = (input) => {

    if(input[0].length === 0) 
    return 0;
    let output = 0;

    for(let i =0; i < input.length; i++) {
        for(let j =0; j < input[0].length; j++) {
            if(input[i][j] === '1') {
                DFS_Recursion(input,i,j);
                output++;
            }
        }
    }
    return output;
}

const DFS_Recursion = (grid, currentI, currentJ) => {
    if(currentI < 0 || currentI >= grid.length || currentJ < 0 || currentJ >= grid[0].length || grid[i][j] == '0')
    return;

    const direction = [[-1,0],
                       [0,1],
                       [1,0],
                       [0,-1]];

    for(let d=0; d<direction.length; d++) {
        const newI = currentI + direction[d][0];
        const newJ = currentJ + direction[d][1];

        DFS_Recursion(grid, newI, newJ);
    }
    return;
}