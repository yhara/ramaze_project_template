module MyProject
  include Innate::Optioned

  options.dsl do
    o "Path of database file",
      :db, nil
  end
end

# usage:
#   MyProject.options[:db]  #=> nil
#   MyProject.options[:db] = "foo"
#   MyProject.options[:db]  #=> "foo"
