module Gap
  CASE_ONE = [10,1,4,2,1,3,2,4,5,7].freeze
  
  # Final result must be equal to [1,2,4]
  class << self
    def lazy_solution(awesome_array)
      awesome_array.uniq.select{ |g| awesome_array.count(g) > 1 }.sort
    end

    def effort_solution(awesome_array)
      tmp = {}
      awesome_array.each { |g| tmp["#{g}"] = tmp["#{g}"].to_i + 1 }

      bla = []
      tmp.each do |k,v|
        bla << k.to_i if v.to_i > 1
      end
      bla.sort
    end

    def best_implementation(awesome_array)
      elements = awesome_array.each_with_object({}) do |item, items|
        items["#{item}"] = items["#{item}"].to_i + 1
      end

      result = elements.each_with_object([]) do |(k,v), items|
        items << k.to_i if v.to_i > 1
      end.sort
    end
  end
end
