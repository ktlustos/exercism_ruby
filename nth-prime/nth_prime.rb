class Prime

  def self.nth(num)
    prime_hash = {}
    prime = 2
    if num == 0
        raise ArgumentError
    else
      begin
        if !prime_hash.keys.include?(prime) && !prime_hash.values.include?(prime)
          prime_hash[prime] = prime + prime
        elsif prime_hash.values.include? prime
          prime_hash.update(prime_hash) {|key, value| prime == value ? value += key : value }
        end
        prime += 1
      end while prime_hash.length < num
    end
    primes = prime_hash.keys
    primes.last
  end

end


module BookKeeping
  VERSION = 1
end
