# frozen_string_literal: true

name 'yum-amazon'
default_source :supermarket

run_list 'test::default'

cookbook 'yum-amazon', path: '.'
cookbook 'test', path: './test/cookbooks/test'

Dir.children('./test/cookbooks/test/recipes').grep(/\.rb\z/).sort.each do |recipe|
  recipe_name = File.basename(recipe, '.rb')

  named_run_list recipe_name.to_sym, "test::#{recipe_name}"
end
