class Segment

  attr_accessor :key, :translation, :language

  def initialize(key, translation, language)
    @key = key
    
    if translation.nil?
      puts 'empty translation of key:' + key
      @translation = ''
    else
      @translation = translation.replace_escaped
    end
    
    @language = language
  end

  def is_comment?
    @key == nil
  end
end