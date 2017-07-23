task reset_all: :environment do

  Rake::Task['db:drop'].invoke
  Rake::Task['db:create'].invoke
  Rake::Task['db:migrate'].invoke

  User.create(email: 'web@cd2solutions.co.uk', password: 'pass123')

end
