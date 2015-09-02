class PigLatin

  def self.latin word
    word[0].downcase.concat word[1..word.length]
  end

end