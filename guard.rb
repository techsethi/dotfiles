guard :shell do
  watch(%r{^(?:app|lib)/.+\.rb$}) { `ctags -R` }
end
