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

    it "given user inputs 50, returns 'L'" do
        #Arrange / Act
        actual_output = roman_numeral.convert(50)
        expected_output = 'L'

        #Assert
        expect(actual_output).to eq(expected_output)
    end
    it "given user inputs 51, returns 'LI'" do
        #Arrange / Act
        actual_output = roman_numeral.convert(51)
        expected_output = 'LI'

        #Assert
        expect(actual_output).to eq(expected_output)
    end
    it "given user inputs 54, returns 'LIV'" do
        #Arrange / Act
        actual_output = roman_numeral.convert(54)
        expected_output = 'LIV'

        #Assert
        expect(actual_output).to eq(expected_output)
    end

    it "given user inputs 60 returns 'LX'" do
        #Arrange / Act
        actual_output = roman_numeral.convert(60)
        expected_output = 'LX'

        #Assert
        expect(actual_output).to eq(expected_output)
    end
    it "given user inputs 61 returns 'LXI'" do
        #Arrange / Act
        actual_output = roman_numeral.convert(61)
        expected_output = 'LXI'

        #Assert
        expect(actual_output).to eq(expected_output)
    end
    it "given user inputs 64 returns 'LXIV'" do
        #Arrange / Act
        actual_output = roman_numeral.convert(64)
        expected_output = 'LXIV'

        #Assert
        expect(actual_output).to eq(expected_output)
    end
    it "given user inputs 70, returns 'LXX" do
            #Arrange / Act
            actual_output = roman_numeral.convert(70)
            expected_output = 'LXX'
    
            #Assert
            expect(actual_output).to eq(expected_output)

    end
    it "given user inputs 90, returns 'XC" do
        #Arrange / Act
        actual_output = roman_numeral.convert(90)
        expected_output = 'XC'

        #Assert
        expect(actual_output).to eq(expected_output)

    end
    it "given user inputs 95, returns 'XCV" do
        #Arrange / Act
        actual_output = roman_numeral.convert(95)
        expected_output = 'XCV'

        #Assert
        expect(actual_output).to eq(expected_output)

    end
    it "given user inputs 100, returns 'C'" do
        #Arrange / Act
        actual_output = roman_numeral.convert(100)
        expected_output = 'C'

        #Assert
        expect(actual_output).to eq(expected_output)
    end
    it "given user inputs 101, returns 'C'" do
        #Arrange / Act
        actual_output = roman_numeral.convert(101)
        expected_output = 'CI'

        #Assert
        expect(actual_output).to eq(expected_output)
    end
    it "given user inputs 104, returns 'CIV'" do
        #Arrange / Act
        actual_output = roman_numeral.convert(104)
        expected_output = 'CIV'

        #Assert
        expect(actual_output).to eq(expected_output)
    end
    it "given user inputs 110, returns 'CX'" do
        #Arrange / Act
        actual_output = roman_numeral.convert(110)
        expected_output = 'CX'

        #Assert
        expect(actual_output).to eq(expected_output)
    end
    it "given user inputs 140, returns 'CXL'" do
        #Arrange / Act
        actual_output = roman_numeral.convert(140)
        expected_output = 'CXL'

        #Assert
        expect(actual_output).to eq(expected_output)
    end
    it "given user inputs 400, returns 'CD'" do
        #Arrange / Act
        actual_output = roman_numeral.convert(400)
        expected_output = 'CD'

        #Assert
        expect(actual_output).to eq(expected_output)
    end

    it "given user inputs 440, returns 'CDXL'" do
        #Arrange / Act
        actual_output = roman_numeral.convert(440)
        expected_output = 'CDXL'

        #Assert
        expect(actual_output).to eq(expected_output)
    end

    it "given user inputs 500, returns 'D" do
        #Arrange / Act
        actual_output = roman_numeral.convert(500)
        expected_output = 'D'

        #Assert
        expect(actual_output).to eq(expected_output)
    end

    it "given user inputs 600, returns 'DC" do
        #Arrange / Act
        actual_output = roman_numeral.convert(600)
        expected_output = 'DC'

        #Assert
        expect(actual_output).to eq(expected_output)
    end

    it "given user inputs 900, returns 'CM" do
        #Arrange / Act
        actual_output = roman_numeral.convert(900)
        expected_output = 'CM'

        #Assert
        expect(actual_output).to eq(expected_output)
    end
    
    

end
