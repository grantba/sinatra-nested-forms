class Pirate

    attr_accessor :name, :weight, :height
    @@all = []

    def initialize(params)
        params.each do |k, v|
            self.send("#{k}=", v) if self.respond_to?("#{k}=")
        end
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

end