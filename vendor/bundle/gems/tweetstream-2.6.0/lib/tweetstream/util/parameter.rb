class Parameter

  def initialize(params={})
    @params = params
  end

  def to_h
    query_parameters = @params.dup
    [:follow, :track, :locations].each do |param|
      if query_parameters[param].kind_of?(Array)
        query_parameters[param] = query_parameters[param].flatten.collect { |q| q.to_s }.join(',')
      elsif query_parameters[param]
        query_parameters[param] = query_parameters[param].to_s
      end
    end
    query_parameters
  end

end
