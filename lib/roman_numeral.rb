class RomanNumeral

    def convert(num)
        raise ArgumentError.new("You must enter a positive number") unless num
        recursive_convert(num,1)
  
    end

    def recursive_convert(num, place_value_position)

        roman_numeral = {
            1 => 'I',
            5 => 'V',
            10 => 'X',
            50 => 'L',
            100 => 'C',
            500 => 'D',
            1000 => 'M',
            5000 => 'V',
            10000=> 'X'
        }

        output_string = ""
        current_hash_index = 2 * place_value_position - 2
        current_place_value = value_at_position(num, place_value_position)
        
        if num >= roman_numeral.keys[current_hash_index]
            output_string = recursive_convert(num, place_value_position+1) + convert_helper(current_place_value, roman_numeral.values[current_hash_index], roman_numeral.values[current_hash_index+ 1], roman_numeral.values[current_hash_index + 2])
        end
        output_string
    end


    def convert_helper(place_value, first_symbol, middle_symbol, last_symbol)
        case place_value
        when 0..3
            return first_symbol * place_value 
        when 4
            return first_symbol << middle_symbol
        when 5..8
            return middle_symbol << first_symbol*(place_value - 5)
        when 9
            return first_symbol << last_symbol
        end
    end

    def value_at_position(number, position)
        (number % (10**position)) / (10**(position-1))
    end
end