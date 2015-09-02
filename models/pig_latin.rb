class PigLatin

  def self.latin word
    word[0].upcase.concat word[1..word.length]
  end

end