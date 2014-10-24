require "clean_words/version"

module CleanWords
  class Random
    def self.fetch(size=nil, count=1)
      new(size, count).fetch
    end

    def fetch(size=nil, count=1)
      @size = size
      @count = count
      @count > 1 ? @count.times.map { get_word } : get_word
    end

    private

    def get_word
      word_pool.shuffle.pop
    end

    def word_pool
      @size.nil? ? words : words_for_size
    end

    def words
      @words ||= File.new(file_path).readlines.map(&:chomp)
    end

    def file_path
      File.dirname(__FILE__) + '/../data/words.txt'
    end

    def words_for_size
      sizes.map { |size| words_by_length[size] }.flatten
    end

    def sizes
      @size.respond_to?(:to_a) ? @size.to_a : [@size]
    end

    def words_by_length
      @words_by_length ||= words.group_by(&:size)
    end
  end
end
