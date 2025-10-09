class SimpleCalculator
  class UnsupportedOperation < StandardError; end
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  def self.calculate(first_operand, second_operand, operation)
    raise(UnsupportedOperation) unless ALLOWED_OPERATIONS.include?(operation)
    raise(ArgumentError, "Numbers only") if first_operand.is_a?(String) || second_operand.is_a?(String)
    begin
      result = first_operand.send(operation, second_operand)
      return "#{first_operand} #{operation} #{second_operand} = #{result}"
    rescue ZeroDivisionError
      "Division by zero is not allowed."
    end
  end
end
