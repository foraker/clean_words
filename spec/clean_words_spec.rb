require File.expand_path("spec_helper", File.dirname(__FILE__))

module CleanWords
  describe Random do
    describe '#fetch' do
      it 'calls fetch on a new instance' do
        words = double(fetch: 'test')
        allow(CleanWords::Random).to receive(:new).and_return(words)

        expect(CleanWords::Random.fetch).to eq 'test'
      end
    end

    describe '.fetch' do
      it 'returns a word' do
        words = CleanWords::Random.new
        allow(words).to receive(:words).and_return(%w(test))

        expect(words.fetch).to eq 'test'
      end

      it 'returns the specified number of words' do
        words = CleanWords::Random.new.fetch(nil, 3)

        expect(words.size).to eq 3
      end

      it 'returns a word of the specified size' do
        word = CleanWords::Random.new.fetch(5)

        expect(word.size).to eq 5
      end

      it 'returns words that match an array of size options' do
        words = CleanWords::Random.new.fetch([5,7], 100)
        sizes = words.map(&:size).uniq

        expect(sizes).to match_array [5,7]
      end

      it 'returns words that match a range of sizes' do
        words = CleanWords::Random.new.fetch((4..6), 100)
        sizes = words.map(&:size).uniq

        expect(sizes).to match_array [4,5,6]
      end
    end
  end
end
