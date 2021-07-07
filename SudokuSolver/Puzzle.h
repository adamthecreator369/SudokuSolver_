//
// Created by adam jost on 4/30/21.
//

#ifndef PUZZLE_H
#define PUZZLE_H


#include <cstring>
#include <vector>

class Puzzle {

public:
    // Constructor
    Puzzle(const std::vector<std::vector<char>>&);

    // Class-member method (Public).
    bool print_all_solutions(std::ostream &out);

private:
    std::vector<std::vector<char>> board; // Represent the puzzle board.
    static const size_t BOARD_SIZE; // The size of the puzzle board.
    static const size_t SECTION_SIZE; // The size of an individual section of the puzzle board.
    static const char BLANK; // Represents a blank space on the puzzle board.
    static const std::vector<char> CHOICES; // Possible choices to be used to fill blank spaces and find a solution.
    unsigned int solution_count; // The current solution found. Used for numbering printed solutions.

    // Class-member methods (Private).
    bool validate_column(size_t, char) const;
    bool validate_row(size_t, char) const;
    bool validate_section(size_t, size_t, char) const;
    bool validate_choice(size_t, size_t, char) const;
    void print_solution(std::ostream&);

};


#endif //SUDOKUSOLVER_PUZZLE_H
