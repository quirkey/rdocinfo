def init
  sections :header, [:method_signature, T('docstring'), :source]
end

def source
  return if object.tags(:overload).size > 1
  erb(:source)
end
