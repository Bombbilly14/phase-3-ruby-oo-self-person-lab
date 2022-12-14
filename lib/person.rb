# your code goes here



class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name, bank_account=25, happiness=8, hygiene=8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happy?
        self.happiness > 7
    end
    def clean?
        self.hygiene > 7
    end

    # def hygiene
    #     [@hygiene, 10].min
    # end

    def hygiene=(value)
        # @hygiene = [value, 0].max
        @hygiene = value.clamp(0, 10)
    end

    # def happiness
    #     [@happiness, 10].min
    # this one would be for the method below that is ####
    # end

    def happiness=(value)
        # @happiness = [value, 0].max
        ## orrrrr
        # if @happiness < 0
        #     @happiness = 0
        # elsif @happiness > 10 
        #     @happiness = 10
        # end
        
        @happiness = value.clamp(0, 10)

    end

    def get_paid(amount)
        @bank_account += amount

        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    
    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(name)
        self.happiness += 3
        name.happiness += 3
        "Hi #{name.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        case topic
        when "politics"
            self.happiness -= 2
            person.happiness -= 2
            "blah blah partisan blah lobbyist"
        when "weather"
            self.happiness += 1
            person.happiness += 1
            'blah blah sun blah rain'
        else
            'blah blah blah blah blah'
        end
    end

end

# require 'pry'


# class Person
#     attr_reader :name
#     attr_writer :happiness
#     attr_accessor :bank_account

#     def initialize(name, bank_account=25, happiness=8)
#         @name = name
#         @bank_account = bank_account
#         @happiness = happiness
#     end
#     def happiness=(value)
#         @happiness = [value, 10].max
#     end
# end
