class WordListSanitizer
  def initialize
    @words ||= File.new(file_path).readlines.map(&:chomp)
  end

  def run!
    process_words
    write_file
  end

  private
  def file_path
    File.dirname(__FILE__) + '/../data/words.txt'
  end

  def process_words
    @processed = @words.reject { |w| w.match(/^\w+$/).nil? }.map(&:downcase).sort.uniq
  end

  def write_file
    File.open(file_path, 'w') { |f| @processed.each { |w| f.puts(w) } }
  end
end
