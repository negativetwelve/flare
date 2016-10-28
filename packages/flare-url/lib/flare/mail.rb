module Flare
  class Mail

    #
    # Parses a string into a Address object or returns nil if it's invalid.
    #
    def self.parsed(string)
      ::Mail::Address.new(string)
    rescue ::Mail::Field::ParseError => error
      nil
    end

    #
    # Attempts to parse an email string to get the domain from it.
    #
    def self.domain(string)
      parsed(string)&.domain
    end

  end
end
