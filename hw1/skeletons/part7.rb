class CartesianProduct
    include Enumerable
    def initialize(a,b)
        @a = a
        @b = b
    end

    def each(&block)
        arr = []
        @a.each do |ae|
            @b.each do |be|
                if block_given?
                    yield [ae,be]
                else
                    arr << [ae,be]
                end
            end
        end
        unless block_given?
            return Enumerator.new(arr)
        end
    end
end
