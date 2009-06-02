module GrammTest
  include Treetop::Runtime

  def root
    @root || :other
  end

  module Other0
    def hello
      elements[1]
    end
  end

  module Other1
 
	
	def test 
	  puts "lol ---> " + hello
	end
  end

  def _nt_other
    start_index = index
    if node_cache[:other].has_key?(index)
      cached = node_cache[:other][index]
      @index = cached.interval.end if cached
      return cached
    end

    i0, s0 = index, []
    if input.index('ops ', index) == index
      r1 = instantiate_node(SyntaxNode,input, index...(index + 4))
      @index += 4
    else
      terminal_parse_failure('ops ')
      r1 = nil
    end
    s0 << r1
    if r1
      r2 = _nt_hello
      s0 << r2
    end
    if s0.last
      r0 = instantiate_node(SyntaxNode,input, i0...index, s0)
      r0.extend(Other0)
      r0.extend(Other1)
    else
      self.index = i0
      r0 = nil
    end

    node_cache[:other][start_index] = r0

    return r0
  end

  def _nt_hello
    start_index = index
    if node_cache[:hello].has_key?(index)
      cached = node_cache[:hello][index]
      @index = cached.interval.end if cached
      return cached
    end

    if input.index('hello there', index) == index
      r0 = instantiate_node(SyntaxNode,input, index...(index + 11))
      @index += 11
    else
      terminal_parse_failure('hello there')
      r0 = nil
    end

    node_cache[:hello][start_index] = r0

    return r0
  end

end

class GrammTestParser < Treetop::Runtime::CompiledParser
  include GrammTest
end
