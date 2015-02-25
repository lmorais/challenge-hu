# This file should contain all the record creation needed to seed the database with its default values.
puts "Cleaning current database (env: #{Rails.env})" if Mongoid.purge!


Hotel.create( name: 'Hotel Cabo Frio', city: 'Cabo Frio',          neighborhood: 'Braga',
              unavailability: [
                              '2015-03-30'.to_date,
                              '2015-04-01'.to_date,
                              '2015-04-02'.to_date
                            ]
            )

Hotel.create( name: 'Buzios Resort',   city: 'Armacao dos Buzios', neighborhood: 'Tamoios',
              unavailability: [
                              '2015-03-01'.to_date,
                              '2015-03-15'.to_date,
                              '2015-03-20'.to_date
                              ]
            )

Hotel.create( name: 'Fortaleza Hotel Inn', city: 'Fortaleza',      neighborhood: 'Centro',
              unavailability: []
            )

Hotel.create( name: 'Angra Eco Resort', city: 'Angra dos Reis',    neighborhood: 'Centro',
              unavailability: []
            )

Hotel.create( name: 'Serra Hotel', city: 'Petropolis', neighborhood: 'Centro',
              unavailability: []
            )



Package.create(name: 'Verão Cabo Frio', daily: 3,          guests: 2, price: 12000)
Package.create(name: 'Ferias Orlando', daily: 2,          guests: 1, price: 11000)