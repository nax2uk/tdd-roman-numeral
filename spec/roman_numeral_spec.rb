require "./lib/roman_numeral"

describe RomanNumeral do
    let(:roman_numeral) {RomanNumeral.new}
    it "given user inputs nothing, returns nothing" do
       
        #Arrange / Act
        actual_output = roman_numeral.convert()
        expected_output = nil

        #Assert
        expect(actual_output).to eq(expected_output)
    end

    context "given user enters a 1 digit number, returns the correct symbols " do
        it "given user inputs 0, returns ''" do 
  
            #Arrange / Act
            actual_output = roman_numeral.convert(0)
            expected_output = ''
    
            #Assert
            expect(actual_output).to eq(expected_output)
        end

        context "if user inputs 1, 2, 3, returns symbols containing I" do
            # Arrange
            inputs = {
                1 => 'I',
                2 => 'II',
                3 => 'III'
            }

            # Act && Assert        
            inputs.each do |input, output|
                it "given user inputs #{input}, returns #{output}\n" do
                    actual_output = roman_numeral.convert(input)
                    expected_output = output
            
                    #Assert
                    expect(actual_output).to eq(expected_output)
                end
            end
        end

        it "given user inputs 4, returns 'IV'" do

            #Arrange / Act
            actual_output = roman_numeral.convert(4)    
            expected_output = 'IV'
    
            #Assert
            expect(actual_output).to eq(expected_output)
        end

        context "if user inputs 5, 6, 7, 8 returns symbols containing V or/and I" do
            # Arrange
            inputs = {
                5 => 'V',
                6 => 'VI',
                7 => 'VII',
                8 => 'VIII'
            }

            # Act && Assert        
            inputs.each do |input, output|
                it "given user inputs #{input}, returns #{output}" do
                    actual_output = roman_numeral.convert(input)
                    expected_output = output
            
                    #Assert
                    expect(actual_output).to eq(expected_output)
                end
            end
        end

        it "given user inputs 9, returns 'IX'" do

            #Arrange / Act
            actual_output = roman_numeral.convert(9)    
            expected_output = 'IX'

            #Assert
            expect(actual_output).to eq(expected_output)
        end   

    end
      
    context "given user enters a 2 digit number that has 1, 2, or 3 tens, returns 'X's at the start of the output\n" do
        context "given user inputs a number which has n tens returns output starting with n number of 'X's\n" do

            # Arrange
            inputs = {
                10 => 'X',
                11 => 'XI',
                12 => 'XII',
                13 => 'XIII',
                14 => 'XIV',
                15 => 'XV',
                16 => 'XVI',
                17 => 'XVII',
                18 => 'XVIII',
                19 => 'XIX',
                20 => 'XX',
                21 => 'XXI',
                22 => 'XXII',
                23 => 'XXIII',
                24 => 'XXIV',
                25 => 'XXV',
                26 => 'XXVI',
                27 => 'XXVII',
                28 => 'XXVIII',
                29 => 'XXIX'
            }

            # Act
            inputs.each do |input, output|
                it "given user inputs #{input} returns #{output}\n" do 
                    actual_output = roman_numeral.convert(input)    
                    expected_output = output
            
                    #Assert
                    expect(actual_output).to eq(expected_output)
                end
            end
            
        end
     
    end

    context "given user enter a 2 digit number that has 4 tens, returns 'XL' at the start of the output" do
        inputs = {
            40 => 'XL',
            41 => 'XLI',
            44 => 'XLIV'
        }

        inputs.each do |input, output|
            it "given user inputs #{input}, returns #{output}\n" do
                #Arrange / Act
                actual_output = roman_numeral.convert(input)
                expected_output = output

                #Assert
                expect(actual_output).to eq(expected_output)
            end
        end
    end

    context "given user enters a 2 digit number that has 5, 6, 7 or 8 tens, returns symbols 'L' or/and 'I' at the start of the output" do
        # Arrange
        inputs = {
            50 => 'L',
            51 => 'LI',
            54 => 'LIV',
            60 => 'LX',
            61 => 'LXI',
            64 => 'LXIV',
            70 => 'LXX'
        }

        # Act / Assert
        inputs.each do |input, output|
            it "given user inputs #{input}, returns #{output}" do
                actual_output = roman_numeral.convert(input)
                expected_output = output

                expect(actual_output).to eq(expected_output)
            end
        end
    end
    context "given user enters a 2 digit number that has 9 tens, returns symbols 'XC' at the start of the output" do
        # Arrange
        tests = {
            90=>'XC',
            95=>'XCV'
        }
        # Act / Assert
        tests.each do |input, output|
            it "given user inputs #{input}, returns #{output}" do


                actual_output = roman_numeral.convert(input)
                expected_output = output
                    
                expect(actual_output).to eq(expected_output)
            end
        end

    end

    context "given user enters a 3 digit number, returns the appropriate symbols" do
        # Arrange
        tests = {
            100 => 'C',
            101 => 'CI',
            104 => 'CIV',
            110 => 'CX',
            140 => 'CXL',
            400 => 'CD',
            440 => 'CDXL',
            500 => 'D',
            600 => 'DC',
            900 => 'CM',
            954 => 'CMLIV'

        }
        # Act / Assert
        tests.each do |input, output|
            it "given user inputs #{input}, returns #{output}" do


                actual_output = roman_numeral.convert(input)
                expected_output = output
                    
                expect(actual_output).to eq(expected_output)
            end
        end
    end
    context "given user enters a 4 digit number (up to 3000), returns the appropriate symbols" do
              # Arrange
              tests = {
                1000 => 'M',
                2465 => 'MMCDLXV',
                3948 => 'MMMCMXLVIII',
                3999 => 'MMMCMXCIX'
            }
            # Act / Assert
            tests.each do |input, output|
                it "given user inputs #{input}, returns #{output}" do
    
                    actual_output = roman_numeral.convert(input)
                    expected_output = output
                        
                    expect(actual_output).to eq(expected_output)
                end
            end
    end

end
