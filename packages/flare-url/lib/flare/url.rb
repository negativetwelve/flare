module Flare
  class Url

    #
    # Base parse method which handles invalid uris.
    #
    def self.parsed(url)
      Addressable::URI.heuristic_parse(url)
    rescue Addressable::URI::InvalidURIError => error
      nil
    end

    #
    # Uses PublicSuffix to lookup validated domain names.
    #
    def self.parse_host(string)
      PublicSuffix.parse(host(string))
    end

    #
    # Returns if a url is valid after being parsed.
    #
    def self.is_valid?(url)
      %w(http https).include?(scheme(url))
    end

    #
    # Attempts to parse a string to get the `host` value from it. Typically
    # this value is in the form of `google.com` or `inbox.google.com` with
    # subdomains.
    #
    def self.host(string)
      parsed(string)&.host
    end

    #
    # Returns the scheme (http, https, ftp) for a url.
    #
    def self.scheme(url)
      parsed(url)&.scheme
    end

    def initialize(url: "", query: {})
      @url = url
      @query = query

      @addressable = self.class.parsed(url)
      @addressable.query_values = query
    end

    def to_s
      @addressable.to_s
    end

  end
end
