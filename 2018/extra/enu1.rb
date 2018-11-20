class Foo
    include Enumerable
    def each
      yield 1
      yield 1, 2
      yield
    end
  end
  Foo.new.each_entry{ |o| p o }