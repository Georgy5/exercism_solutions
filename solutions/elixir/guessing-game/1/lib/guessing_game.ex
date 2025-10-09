defmodule GuessingGame do
  def compare(secret_number, guess \\ :no_guess)
  def compare(_secret_number, guess) when guess == :no_guess do
    "Make a guess"
  end
  def compare(secret_number, guess) do
    cond do
      secret_number == guess -> "Correct"
      abs(secret_number - guess) == 1 -> "So close"
      guess > secret_number -> "Too high"
      guess < secret_number -> "Too low"
    end
  end
end
