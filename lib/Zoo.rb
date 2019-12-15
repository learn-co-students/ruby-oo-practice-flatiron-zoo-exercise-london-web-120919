class Zoo

    attr_reader :name, :location

    @@all = []

    def initialize(name,location)
        @name = name
        @location = location
        @@all << self
    end

    def self.all
        @@all
    end

    def animals
        Animal.all.select{|animal|animal.zoo == self}
    end

    def animal_species
        animals.map{|animal| animal.species}.uniq
    end

    def find_by_species(this_species)
        animals.select{|animal| animal.species == this_species}
    end

    def animal_nicknames
        animals.map{|animal| animal.nickname}.uniq
    end

    def self.find_by_location(this_location)
        self.all.select{|zoo|zoo.location == this_location}
    end

   



end
