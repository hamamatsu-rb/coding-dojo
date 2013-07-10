class MarriageChecker
  attr_accessor :men, :women, :favorites, :couple

  def initialize(options)
    self.men = options[:men]
    self.women = options[:women]
  end

  def add_favorites(person, favorites)
    self.favorites ||= {}
    self.favorites[person] = favorites
  end

  def engage!(man)
    self.couple ||= {}
    self.favorites[man].each do |woman|
      unless couple.values.include?(woman)
        self.couple[man] = woman
        break
      end
    end
  end

  def engage_women_for(man)
    self.couple[man]
  end
end