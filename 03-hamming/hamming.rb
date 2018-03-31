# strand_1 = 'GAGCCTACTAACGGGAT'
#
# strand_2 = 'CATCGTAATGACGGCCT'
class Hamming

  def self.compute(strand_1, strand_2)

    hamming_distance = 0

    if strand_1.length != strand_2.length
      raise ArgumentError.new("Cannot compare strands of different lengths.")
    end

    strand_1 = strand_1.split(//)
    strand_2 = strand_2.split(//)

    strand_1.each_with_index {|nucleotide, i|
        if nucleotide != strand_2[i]
          hamming_distance += 1
        end }

      return hamming_distance
  end
end
