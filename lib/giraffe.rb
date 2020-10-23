class RomanNumeral
    def convert(num = nil)
        return nil unless num
        
        if num <= 10
            return '' << 'I' * (num - 0) if num >= 1 && num <= 3
            return 'IV' if num == 4
            return 'V' if num == 5
            return 'V' << 'I'*(num - 5) if num >= 6 && num <= 8
            return 'IX' if num == 9
            return 'X' if num == 10
            
        else
            return 'X' << 'I' * (num - 10) if num >= 11 && num <= 13
            return 'XIV' if num == 14
            return 'XV' if num == 15
            return 'XV' << 'I'*(num - 15) if num >= 16 && num <= 18
            return 'XIX' if num == 19
            return 'XX' if num == 20

        end
    end
end

# X = 10
# IX = 9
# V = 5
# IV = 4
# I = 1