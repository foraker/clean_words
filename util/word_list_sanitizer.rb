class WordListSanitizer
  def initialize
    @words ||= File.new(file_path).readlines.map(&:chomp)
  end

  def run!
    update_word_file
  end

  private
  def file_path
    File.dirname(__FILE__) + '/../data/words.txt'
  end

  def processed_words
    @words.reject { |w| w.match(/^\w+$/).nil? }.map(&:downcase).sort.uniq
  end

  def update_word_file
    File.open(file_path, 'w') { |f| processed_words.each { |w| f.puts(w) } }
  end
end
