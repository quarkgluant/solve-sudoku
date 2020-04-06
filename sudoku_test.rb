require 'minitest/autorun'
require_relative 'sudoku'

class SudokuTest < Minitest::Test
  def test_it_finds_rows
    grid = [[5, 3, 4, 6, 7, 8, 9, 1, 2],
            [6, 7, 2, 1, 9, 5, 3, 4, 8],
            [1, 9, 8, 3, 4, 2, 5, 6, 7],
            [8, 5, 9, 7, 6, 1, 4, 2, 3],
            [4, 2, 6, 8, 5, 3, 7, 9, 1],
            [7, 1, 3, 9, 2, 4, 8, 5, 6],
            [9, 6, 1, 5, 3, 7, 2, 8, 4],
            [2, 8, 7, 4, 1, 9, 6, 3, 5],
            [3, 4, 5, 2, 8, 6, 1, 7, 9]]
    assert_equal grid, Sudoku.new(grid).rows
  end

  def test_it_finds_columns
    # skip
    grid = [[5, 3, 4, 6, 7, 8, 9, 1, 2],
            [6, 7, 2, 1, 9, 5, 3, 4, 8],
            [1, 9, 8, 3, 4, 2, 5, 6, 7],
            [8, 5, 9, 7, 6, 1, 4, 2, 3],
            [4, 2, 6, 8, 5, 3, 7, 9, 1],
            [7, 1, 3, 9, 2, 4, 8, 5, 6],
            [9, 6, 1, 5, 3, 7, 2, 8, 4],
            [2, 8, 7, 4, 1, 9, 6, 3, 5],
            [3, 4, 5, 2, 8, 6, 1, 7, 9]]
    expected = [[5, 6, 1, 8, 4, 7, 9, 2, 3],
                [3, 7, 9, 5, 2, 1, 6, 8, 4],
                [4, 2, 8, 9, 6, 3, 1, 7, 5],
                [6, 1, 3, 7, 8, 9, 5, 4, 2],
                [7, 9, 4, 6, 5, 2, 3, 1, 8],
                [8, 5, 2, 1, 3, 4, 7, 9, 6],
                [9, 3, 5, 4, 7, 8, 2, 6, 1],
                [1, 4, 6, 2, 9, 5, 8, 3, 7],
                [2, 8, 7, 3, 1, 6, 4, 5, 9]]
    assert_equal expected, Sudoku.new(grid).columns
  end

  def test_it_finds_9_regions
    # skip
    grid = [[5, 3, 4, 6, 7, 8, 9, 1, 2],
            [6, 7, 2, 1, 9, 5, 3, 4, 8],
            [1, 9, 8, 3, 4, 2, 5, 6, 7],
            [8, 5, 9, 7, 6, 1, 4, 2, 3],
            [4, 2, 6, 8, 5, 3, 7, 9, 1],
            [7, 1, 3, 9, 2, 4, 8, 5, 6],
            [9, 6, 1, 5, 3, 7, 2, 8, 4],
            [2, 8, 7, 4, 1, 9, 6, 3, 5],
            [3, 4, 5, 2, 8, 6, 1, 7, 9]]
    assert_equal 9, Sudoku.new(grid).regions.size
  end

  def test_it_finds_the_third_region
    # skip
    grid = [[5, 3, 4, 6, 7, 8, 9, 1, 2],
            [6, 7, 2, 1, 9, 5, 3, 4, 8],
            [1, 9, 8, 3, 4, 2, 5, 6, 7],
            [8, 5, 9, 7, 6, 1, 4, 2, 3],
            [4, 2, 6, 8, 5, 3, 7, 9, 1],
            [7, 1, 3, 9, 2, 4, 8, 5, 6],
            [9, 6, 1, 5, 3, 7, 2, 8, 4],
            [2, 8, 7, 4, 1, 9, 6, 3, 5],
            [3, 4, 5, 2, 8, 6, 1, 7, 9]]
    expected = [9, 1, 2, 3, 4, 8, 5, 6, 7]
    assert_equal expected, Sudoku.new(grid).regions[2].flatten
  end

  def test_it_finds_the_forth_region
    # skip
    grid = [[5, 3, 4, 6, 7, 8, 9, 1, 2],
            [6, 7, 2, 1, 9, 5, 3, 4, 8],
            [1, 9, 8, 3, 4, 2, 5, 6, 7],
            [8, 5, 9, 7, 6, 1, 4, 2, 3],
            [4, 2, 6, 8, 5, 3, 7, 9, 1],
            [7, 1, 3, 9, 2, 4, 8, 5, 6],
            [9, 6, 1, 5, 3, 7, 2, 8, 4],
            [2, 8, 7, 4, 1, 9, 6, 3, 5],
            [3, 4, 5, 2, 8, 6, 1, 7, 9]]
    expected = [8, 5, 9, 4, 2, 6,7, 1, 3]
    assert_equal expected, Sudoku.new(grid).regions[3].flatten
  end

  def test_it_is_valid_grid
    # skip
    grid = [[5, 3, 4, 6, 7, 8, 9, 1, 2],
            [6, 7, 2, 1, 9, 5, 3, 4, 8],
            [1, 9, 8, 3, 4, 2, 5, 6, 7],
            [8, 5, 9, 7, 6, 1, 4, 2, 3],
            [4, 2, 6, 8, 5, 3, 7, 9, 1],
            [7, 1, 3, 9, 2, 4, 8, 5, 6],
            [9, 6, 1, 5, 3, 7, 2, 8, 4],
            [2, 8, 7, 4, 1, 9, 6, 3, 5],
            [3, 4, 5, 2, 8, 6, 1, 7, 9]]
    assert_equal 'Finished!', Sudoku.done_or_not(grid)
  end

  def test_it_is_invalid_grid
    # skip
    grid = [[5, 3, 4, 6, 7, 8, 9, 1, 2],
            [6, 7, 2, 1, 9, 0, 3, 4, 9],
            [1, 0, 0, 3, 4, 2, 5, 6, 0],
            [8, 5, 9, 7, 6, 1, 0, 2, 0],
            [4, 2, 6, 8, 5, 3, 7, 9, 1],
            [7, 1, 3, 9, 2, 4, 8, 5, 6],
            [9, 0, 1, 5, 3, 7, 2, 1, 4],
            [2, 8, 7, 4, 1, 9, 6, 3, 5],
            [3, 0, 0, 4, 8, 1, 1, 7, 9]]
    assert_equal 'Try again!', Sudoku.done_or_not(grid)
  end

  def test_it_is_another_valid_grid
    # skip
    grid = [[1, 3, 2, 5, 7, 9, 4, 6, 8],
            [4, 9, 8, 2, 6, 1, 3, 7, 5],
            [7, 5, 6, 3, 8, 4, 2, 1, 9],
            [6, 4, 3, 1, 5, 8, 7, 9, 2],
            [5, 2, 1, 7, 9, 3, 8, 4, 6],
            [9, 8, 7, 4, 2, 6, 5, 3, 1],
            [2, 1, 4, 9, 3, 5, 6, 8, 7],
            [3, 6, 5, 8, 1, 7, 9, 2, 4],
            [8, 7, 9, 6, 4, 2, 1, 5, 3]]
    assert_equal 'Finished!', Sudoku.done_or_not(grid)
  end

  def test_it_is_another_invalid_grid_2
    # skip
    grid = [[1, 3, 2, 5, 7, 9, 4, 6, 8],
            [4, 9, 8, 2, 6, 1, 3, 7, 5],
            [7, 5, 6, 3, 8, 4, 2, 1, 9],
            [6, 4, 3, 1, 5, 8, 7, 9, 2],
            [5, 2, 1, 7, 9, 3, 8, 4, 6],
            [9, 8, 7, 4, 2, 6, 5, 3, 1],
            [2, 1, 4, 9, 3, 5, 6, 8, 7],
            [3, 6, 5, 8, 1, 7, 9, 2, 4],
            [8, 7, 9, 6, 4, 2, 1, 3, 5]]
    assert_equal 'Try again!', Sudoku.done_or_not(grid)
  end


  def test_it_is_incomplete_invalid_grid
    # skip
    grid = [[1, 3, 2, 5, 7, 9, 4, 6, 8],
            [4, 9, 8, 2, 6, 0, 3, 7, 5],
            [7, 0, 6, 3, 8, 0, 2, 1, 9],
            [6, 4, 3, 1, 5, 0, 7, 9, 2],
            [5, 2, 1, 7, 9, 0, 8, 4, 6],
            [9, 8, 0, 4, 2, 6, 5, 3, 1],
            [2, 1, 4, 9, 3, 5, 6, 8, 7],
            [3, 6, 0, 8, 1, 7, 9, 2, 4],
            [8, 7, 0, 6, 4, 2, 1, 3, 5]]
    assert_equal 'Try again!', Sudoku.done_or_not(grid)
  end


  def test_it_is_invalid_grid_with_repeated_diagonals
    # skip
    grid = [[1, 2, 3, 4, 5, 6, 7, 8, 9],
            [2, 3, 4, 5, 6, 7, 8, 9, 1],
            [3, 4, 5, 6, 7, 8, 9, 1, 2],
            [4, 5, 6, 7, 8, 9, 1, 2, 3],
            [5, 6, 7, 8, 9, 1, 2, 3, 4],
            [6, 7, 8, 9, 1, 2, 3, 4, 5],
            [7, 8, 9, 1, 2, 3, 4, 5, 6],
            [8, 9, 1, 2, 3, 4, 5, 6, 7],
            [9, 1, 2, 3, 4, 5, 6, 7, 8]]
    assert_equal 'Try again!', Sudoku.done_or_not(grid)
  end


  def test_it_is_invalid_grid_with_invalid_number
    # skip
    grid = [[5, 3, 4, 6, 7, 8, 9, 1, 2],
            [6, 7, 2, 1, 9, 0, 3, 4, 9],
            [1, 0, 0, 3, 4, 2, 5, 6, 0],
            [8, 5, 9, 7, 6, 1, 0, 2, 0],
            [4, 2, 6, 8, 5, 3, 7, 9, 1],
            [7, 1, 3, 9, 2, 4, 8, 5, 6],
            [9, 0, 1, 5, 3, 7, 2, 1, 4],
            [2, 8, 7, 4, 1, 9, 6, 3, 5],
            [0, 0, 0, 0, 0, 0, 0,0, 45]]
    assert_equal 'Try again!', Sudoku.done_or_not(grid)
  end

  def test_it_finds_coordinates_of_one_missing_digit
    # skip
    grid = [[5, 3, 4, 6, 7, 8, 9, 1, 2],
            [6, 7, 2, 1, 9, 5, 3, 4, 8],
            [1, 9, 8, 3, 4, 2, 5, 6, 7],
            [8, 5, 0, 7, 6, 1, 4, 2, 3],
            [4, 2, 6, 8, 5, 3, 7, 9, 1],
            [7, 1, 3, 9, 2, 4, 8, 5, 6],
            [9, 6, 1, 5, 3, 7, 2, 8, 4],
            [2, 8, 7, 4, 1, 9, 6, 3, 5],
            [3, 4, 5, 2, 8, 6, 1, 7, 9]]
    assert_equal [[3, 2]], Sudoku.new(grid).find_empty_positions
  end

  def test_it_finds_coordinates_of_three_missing_digit
    # skip
    grid = [[5, 3, 4, 6, 7, 8, 9, 1, 2],
            [6, 7, 2, 1, 9, 5, 3, 4, 8],
            [1, 9, 8, 3, 4, 2, 5, 6, 7],
            [8, 5, 0, 7, 6, 1, 4, 2, 3],
            [4, 2, 6, 8, 5, 3, 0, 9, 1],
            [7, 1, 3, 9, 2, 4, 8, 5, 6],
            [9, 6, 1, 5, 3, 7, 2, 8, 4],
            [2, 8, 7, 4, 1, 9, 6, 3, 5],
            [3, 4, 5, 2, 8, 6, 1, 0, 9]]
    assert_equal [[3, 2], [4, 6], [8, 7]], Sudoku.new(grid).find_empty_positions
  end

  def test_it_can_fill_one_missing_digit
    # skip
    grid = [[5, 3, 4, 6, 7, 8, 9, 1, 2],
            [6, 7, 2, 1, 9, 5, 3, 4, 8],
            [1, 9, 8, 3, 4, 2, 5, 6, 7],
            [8, 5, 0, 7, 6, 1, 4, 2, 3],
            [4, 2, 6, 8, 5, 3, 7, 9, 1],
            [7, 1, 3, 9, 2, 4, 8, 5, 6],
            [9, 6, 1, 5, 3, 7, 2, 8, 4],
            [2, 8, 7, 4, 1, 9, 6, 3, 5],
            [3, 4, 5, 2, 8, 6, 1, 7, 9]]
    filled_grid = Sudoku.new(grid).fill_all
    assert_equal 'Finished!', Sudoku.done_or_not(filled_grid)
  end

  def test_it_can_fill_three_missing_digits
    # skip
    grid_3 = [[5, 3, 4, 6, 7, 8, 9, 1, 2],
              [6, 7, 2, 1, 9, 5, 3, 4, 8],
              [1, 9, 8, 3, 4, 2, 5, 6, 7],
              [8, 5, 0, 7, 6, 1, 4, 2, 3],
              [4, 2, 6, 8, 5, 3, 0, 9, 1],
              [7, 1, 3, 9, 2, 4, 8, 5, 6],
              [9, 6, 1, 5, 3, 7, 2, 8, 4],
              [2, 8, 7, 4, 1, 9, 6, 3, 5],
              [3, 4, 5, 2, 8, 6, 1, 0, 9]]
    filled_grid = Sudoku.new(grid_3).fill_all
    assert_equal 'Finished!', Sudoku.done_or_not(filled_grid)
  end

  def test_it_can_fill_for_missing_digits
    # skip
    grid_4 = [[5, 3, 4, 6, 7, 8, 9, 1, 2],
              [6, 7, 2, 1, 9, 5, 3, 4, 8],
              [1, 9, 0, 3, 4, 2, 5, 6, 7],
              [8, 5, 0, 7, 6, 1, 4, 2, 3],
              [4, 2, 6, 8, 5, 3, 0, 9, 1],
              [7, 1, 3, 9, 2, 4, 8, 5, 6],
              [9, 6, 1, 5, 3, 7, 2, 8, 4],
              [2, 8, 7, 4, 1, 9, 6, 3, 5],
              [3, 4, 5, 2, 8, 6, 1, 0, 9]]
    filled_grid = Sudoku.new(grid_4).fill_all
    assert_equal 'Finished!', Sudoku.done_or_not(filled_grid)
  end

  def test_it_can_fill_six_missing_digits
    # skip
    grid_6 = [[0, 3, 4, 6, 7, 8, 9, 1, 2],
              [6, 7, 0, 1, 9, 5, 3, 4, 8],
              [1, 9, 8, 3, 4, 2, 5, 6, 7],
              [8, 5, 0, 7, 6, 1, 4, 2, 3],
              [4, 2, 6, 8, 5, 3, 0, 9, 1],
              [7, 1, 3, 9, 2, 4, 8, 5, 6],
              [9, 6, 1, 5, 3, 7, 2, 8, 4],
              [2, 8, 0, 4, 1, 9, 6, 3, 5],
              [3, 4, 5, 2, 8, 6, 1, 0, 9]]
    filled_grid = Sudoku.new(grid_6).fill_all
    assert_equal 'Finished!', Sudoku.done_or_not(filled_grid)
  end

  def test_it_can_fill_ten_missing_digit
    # skip
    grid_10 = [[5, 3, 4, 6, 0, 8, 9, 1, 2],
               [6, 7, 2, 1, 9, 5, 0, 4, 8],
               [1, 9, 8, 3, 4, 2, 5, 0, 7],
               [8, 5, 0, 7, 6, 1, 4, 2, 3],
               [4, 2, 6, 8, 0, 3, 0, 9, 1],
               [0, 1, 3, 9, 2, 4, 8, 5, 6],
               [9, 6, 1, 0, 3, 7, 2, 8, 4],
               [2, 8, 7, 4, 0, 9, 6, 3, 5],
               [3, 4, 5, 2, 8, 6, 1, 0, 9]]
    filled_grid = Sudoku.new(grid_10).fill_all
    assert_equal 'Finished!', Sudoku.done_or_not(filled_grid)
  end

  def test_it_can_fill_30_missing_digit
    # skip
    grid_30 = [[5, 3, 0, 6, 0, 8, 0, 1, 2],
               [6, 0, 2, 1, 0, 5, 0, 4, 8],
               [0, 9, 8, 0, 4, 0, 5, 0, 7],
               [8, 0, 0, 7, 6, 1, 4, 2, 0],
               [0, 2, 0, 8, 0, 3, 0, 9, 1],
               [0, 1, 0, 9, 2, 0, 8, 5, 6],
               [9, 0, 1, 0, 3, 7, 0, 8, 0],
               [2, 8, 7, 4, 0, 0, 6, 0, 5],
               [0, 0, 5, 2, 8, 6, 1, 0, 9]]
    filled_grid = Sudoku.new(grid_30).fill_all
    assert_equal 'Finished!', Sudoku.done_or_not(filled_grid)
  end

  def test_it_can_fill_40_missing_digit
    # skip
    grid_40 = [[0, 3, 0, 6, 0, 8, 0, 1, 0],
               [6, 0, 2, 0, 0, 5, 0, 0, 8],
               [0, 9, 0, 0, 4, 2, 5, 0, 7],
               [8, 0, 0, 7, 6, 0, 4, 2, 0],
               [0, 2, 6, 0, 0, 3, 0, 0, 1],
               [0, 1, 0, 9, 2, 0, 8, 5, 6],
               [9, 0, 1, 0, 0, 7, 0, 8, 0],
               [0, 8, 0, 4, 0, 0, 6, 0, 5],
               [0, 0, 5, 2, 8, 0, 1, 0, 9]]
    filled_grid = Sudoku.new(grid_40).fill_all
    assert_equal 'Finished!', Sudoku.done_or_not(filled_grid)
  end


end

