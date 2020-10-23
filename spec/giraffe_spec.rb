require "./lib/giraffe"

describe RomanNumeral do
    let(:roman_numeral) {RomanNumeral.new}
    it "given user inputs nothing, returns nothing" do
       
        #Arrange / Act
        actual_output = roman_numeral.convert()
        expected_output = nil

        #Assert
        expect(actual_output).to eq(expected_output)
    end

    context "when number ends with 1, 2, 3" do

        it "given user inputs 1, returns 'I'" do

            #Arrange / Act
             actual_output = roman_numeral.convert(1)
             expected_output = 'I'
     
             #Assert
             expect(actual_output).to eq(expected_output)
        end
    
        it "given user inputs 2, returns 'II'" do
    
            #Arrange / Act
            actual_output = roman_numeral.convert(2)
            expected_output = 'II'
    
            #Assert
            expect(actual_output).to eq(expected_output)
        end
    
        it "given user inputs 3, returns 'III'" do
    
            #Arrange / Act
            actual_output = roman_numeral.convert(3)    
            expected_output = 'III'
    
            #Assert
            expect(actual_output).to eq(expected_output)
        end

        it "given user inputs 11, returns 'XI'" do

            #Arrange / Act
            actual_output = roman_numeral.convert(11)    
            expected_output = 'XI'
    
            #Assert
            expect(actual_output).to eq(expected_output)
        end
    
        it "given user inputs 12, returns 'XII'" do
    
            #Arrange / Act
            actual_output = roman_numeral.convert(12)    
            expected_output = 'XII'
    
            #Assert
            expect(actual_output).to eq(expected_output)
        end
        it "given user inputs 13, returns 'XIII'" do
    
            #Arrange / Act
            actual_output = roman_numeral.convert(13)    
            expected_output = 'XIII'
    
            #Assert
            expect(actual_output).to eq(expected_output)
        end
    
    end
   
    context "if number ends with 4" do
        it "given user inputs 4, returns 'IV'" do

            #Arrange / Act
            actual_output = roman_numeral.convert(4)    
            expected_output = 'IV'
    
            #Assert
            expect(actual_output).to eq(expected_output)
        end

        it "given user inputs 14, returns 'XIV'" do

            #Arrange / Act
            actual_output = roman_numeral.convert(14)    
            expected_output = 'XIV'
    
            #Assert
            expect(actual_output).to eq(expected_output)
        end
    
    
    end

    context "if number ends with 5" do
        it "given user inputs 5, returns 'V'" do

            #Arrange / Act
            actual_output = roman_numeral.convert(5)    
            expected_output = 'V'

            #Assert
            expect(actual_output).to eq(expected_output)
        end
        it "given user inputs 15, returns 'XV'" do

            #Arrange / Act
            actual_output = roman_numeral.convert(15)    
            expected_output = 'XV'
    
            #Assert
            expect(actual_output).to eq(expected_output)
        end

    end

    context "if number ends with is 6, 7, 8" do

        it "given user inputs 6, returns 'VI'" do

            #Arrange / Act
            actual_output = roman_numeral.convert(6)    
            expected_output = 'VI'
    
            #Assert
            expect(actual_output).to eq(expected_output)
        end
    
        it "given user inputs 7, returns 'VII'" do
    
            #Arrange / Act
            actual_output = roman_numeral.convert(7)    
            expected_output = 'VII'
    
            #Assert
            expect(actual_output).to eq(expected_output)
        end
    
        it "given user inputs 8, returns 'VIII'" do
    
            #Arrange / Act
            actual_output = roman_numeral.convert(8)    
            expected_output = 'VIII'
    
            #Assert
            expect(actual_output).to eq(expected_output)
        end

        it "given user inputs 16, returns 'XVI'" do

            #Arrange / Act
            actual_output = roman_numeral.convert(16)    
            expected_output = 'XVI'
    
            #Assert
            expect(actual_output).to eq(expected_output)
        end
        it "given user inputs 17, returns 'XVII'" do

            #Arrange / Act
            actual_output = roman_numeral.convert(17)    
            expected_output = 'XVII'
    
            #Assert
            expect(actual_output).to eq(expected_output)
        end
        it "given user inputs 18, returns 'XVIII'" do

            #Arrange / Act
            actual_output = roman_numeral.convert(18)    
            expected_output = 'XVIII'
    
            #Assert
            expect(actual_output).to eq(expected_output)
        end
    end

    context "if number ends with a 9" do
        it "given user inputs 9, returns 'IX'" do

            #Arrange / Act
            actual_output = roman_numeral.convert(9)    
            expected_output = 'IX'

            #Assert
            expect(actual_output).to eq(expected_output)
        end   
        
        it "given user inputs 19, returns 'XIX'" do

            #Arrange / Act
            actual_output = roman_numeral.convert(19)    
            expected_output = 'XIX'

            #Assert
            expect(actual_output).to eq(expected_output)
        end
    end

    context "if number is 10 or greater that ends with a 0" do
        it "given user inputs 10, returns 'X'" do

            #Arrange / Act
            actual_output = roman_numeral.convert(10)    
            expected_output = 'X'

            #Assert
            expect(actual_output).to eq(expected_output)
        end
        it "given user inputs 20, returns 'XX'" do

            #Arrange / Act
            actual_output = roman_numeral.convert(20)    
            expected_output = 'XX'

            #Assert
            expect(actual_output).to eq(expected_output)
        end
    end

end