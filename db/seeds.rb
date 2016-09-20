if Rails.env.development?
  User.destroy_all
  Comic.destroy_all

  clark, tony, rick = User.create!([
    {name: 'Clark Kent', email: 'clark@ironhack.com', password: 'ironhack', password_confirmation: 'ironhack'},
    {name: 'Tony Stark', email: 'tony@ironhack.com', password: 'ironhack', password_confirmation: 'ironhack'},
    {name: 'Rick Grimes', email: 'rick@ironhack.com', password: 'ironhack', password_confirmation: 'ironhack'}
  ])

  clark.comics.create([{title: 'Watchmen', publisher: 'Vertigo'}, {title: 'The walking dead', publisher: 'Planeta'}])
  rick.comics.create([{title: 'V for vendetta', publisher: 'Vertigo'},{title: '300', publisher: 'Norma'}])
end
