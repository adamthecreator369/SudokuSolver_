#include <iostream>
#include <fstream>
#include <vector>
#include "Puzzle.h"

int main() {

    // Open file streams.
    std::ifstream fin("puzzle.txt");
    std::ofstream fout("solutions.txt");

    // Check input file.
    if (!fin) {
        std::cout << "Error - Nonexistent input file.";
        return -1;
    }

    // Used to store the puzzle board data.
    std::vector<std::vector<char>> puzzle_board;

    // Used to store a line of data from the input file.
    std::string line;

    // Read in input line by line until EOF.
    while (fin >> line) {

        // Used to store a single row of the puzzle board.
        std::vector<char> row;

        // Iterate through the line of data.
        for (char item : line) {
            // Add each character to the row.
            row.push_back(item);
        }
        // Add the row to the puzzle board.
        puzzle_board.push_back(row);
    }

    // Create the sudoku puzzle object.
    Puzzle sudoku_puzzle(puzzle_board);

    // Find and write all possible solutions to the output file, if any.
    sudoku_puzzle.print_all_solutions(fout);

    // Successfully exit the program.
    return 0;
}
