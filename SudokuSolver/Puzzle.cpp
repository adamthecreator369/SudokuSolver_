//
// Created by adam jost on 4/30/21.
//

#include <ostream>
#include "Puzzle.h"


// Initialize static data members.
const size_t Puzzle::BOARD_SIZE = 16;
const size_t Puzzle::SECTION_SIZE = 4;
const char Puzzle::BLANK = '.';
const std::vector<char> Puzzle::CHOICES{ '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a',
                                           'b', 'c', 'd', 'e', 'f' };

// Constructor
Puzzle::Puzzle(const std::vector<std::vector<char>>& puzzle_board) : board(puzzle_board) { solution_count = 1; }

/**
 * Checks if an attempt to place a character in a specific column violates Sudoku constraints.
 * @param column: The column where the character is attempting to be placed.
 * @param possible_choice: The character being checked.
 * @returns: {true} if placement of the character in the position of that column is valid, {false} if not.
 */
bool Puzzle::validate_column(size_t column, char possible_choice) const {
    // Look at each item contained in the column.
    for (std::vector<char> row : board) {
        // If any item matches the choice being validated then it is not valid and cannot be placed.
        if (row.at(column) == possible_choice) {
            return false;
        }
    }
    // The choice does not exist in the column therefore it is considered valid and can be placed.
    return true;
}

/**
 * Checks if an attempt to place a character in a specific row violates Sudoku constraints.
 * @param row: The row where the character is attempting to be placed.
 * @param possible_choice: The character being checked.
 * @returns: {true} if placement of the character in the position of that row is valid, {false} if not.
 */
bool Puzzle::validate_row(size_t row, char possible_choice) const {
    // Iterate through the row checking if each index positions value matches the choice being validated.
    for (size_t i = 0; i < BOARD_SIZE; i++) {
        // If a match is found then the choice is not valid and cannot be placed.
        if (board.at(row).at(i) == possible_choice) {
            return false;
        }
    }
    // Choice is valid for the row constraint.
    return true;
}

/**
 * Checks if an attempt to place a character in a specific board section violates Sudoku constraints.
 * @param section: The section where the character is attempting to be placed.
 * @param possible_choice: The character being checked.
 * @returns: {true} if placement of the character in the position of the current section is valid, {false} if not.
 */
bool Puzzle::validate_section(size_t row, size_t column, char possible_choice) const {
    // Iterate through the puzzle section.
    for (size_t i = 0; i < BOARD_SIZE; i++) {
        // If any item in the section matches the value of the choice then it is not valid.
        if (board.at(SECTION_SIZE * (row / SECTION_SIZE) + i / SECTION_SIZE)
                .at(SECTION_SIZE * (column / SECTION_SIZE) + i % SECTION_SIZE) == possible_choice) {
            return false;
        }
    }
    // Choice is valid and can be placed in the section.
    return true;
}

/**
 * Checks if an attempt to place a character on the Sudoku board violate any Sudoku constraints.
 * @param row: The row where the Character is attempting to be placed.
 * @param column: The column where the Character is attempting to be placed.
 * @param possible_choice: The Character being checked.
 * @returns: {true} if placement of the Character in the current position on the board is valid, {false} if not.
 */
bool Puzzle::validate_choice(size_t row, size_t column, char possible_choice) const {
    // Check all constraint for item placement by checking the row, column, and section.
    return validate_row(row, possible_choice) && validate_column(column, possible_choice)
            && validate_section(row, column, possible_choice);
}

/**
 * Attempts to find and print each and every possible solution to a Sudoku puzzle.
 * @param writer: The PrintWriter being used to print a solution if and when one is found.
 * @returns: {true} if current attempt finds a valid solution, {false} otherwise.
 */
bool Puzzle::print_all_solutions(std::ostream & out) {
    // Iterate through the Sudoku puzzle board.
    for (size_t i = 0; i < BOARD_SIZE; i++) {
        for (size_t j = 0; j < BOARD_SIZE; j++) {
            // If a blank space is found..
            if (board.at(i).at(j) == BLANK) {
                // Look at each possible choices one by one,
                for (auto choice : CHOICES) {
                    // Checking if placement in the blank space is "valid".
                    if (validate_choice(i, j, choice)) {
                        // If it is valid then set the choice filling the blank space.
                        board.at(i).at(j) = choice;
                        // Repeat.
                        print_all_solutions(out);
                    }
                    // Since the choice was not valid we leave the spot blank and try the next choice.
                    board.at(i).at(j) = BLANK;
                }
                // No valid choices exist. Exit this attempt since a valid solution is not possible.
                return false;
            }
        }
    }
    // No blank spot exist meaning a valid solution has been found therefore we print the solution.
    print_solution(out);
    return true;
}

/**
 * Prints a Sudoku puzzle board.
 * @param writer: The PrintWriter used to write the board to the output file.
 */
void Puzzle::print_solution(std::ostream & out) {

    // Print heading to output file.
    out << "Solution " << solution_count++ << std::endl << std::endl;

    // Print the solution to the output file, character by character.
    for (size_t i = 0; i < BOARD_SIZE; i++) {
        for (size_t j = 0; j < BOARD_SIZE; j++) {
            out << board.at(i).at(j);
        }
        out << std::endl;
    }
    // Print an empty line between solutions.
    out << std::endl;
}


