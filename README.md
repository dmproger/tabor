Parent records (plain Ruby application)
=========================================

Testcase that inlcude:
- Getting parent nodes of `ActiveRecord` instance in a tree-like model

# A given code:
```ruby
create_table "locations", force: true do |t|
  t.integer "location_type"
  t.integer "location_id"
end


class Location < ActiveRecord::Base

  belongs_to :parent_location, class_name: 'Location', foreign_key: 'location_id'

  LOCATION_TYPES = [
    :region,
    :district,
    :city,
    :street,
    :address
  ]
  enum location_type: LOCATION_TYPES

  def self.parent_locations(location)
    #Реализовать метод класса Location, который на вход будет принимать экземпляр класса Location и будет возвращать на выходе массив экземпляров класса Location.
    #Результирующий массив должен содержать рекурсивно всех родителей location, включая сам location. Метод для получения родителя у location - parent_location.
  end
end
```

# Smoke

```bash
git clone https://github.com/dmproger/tabor.git 

cd tabor

bundle

#
# create .env.test file and provide nessesary data (see .env.example)
#

bundle exec rspec
```

# Solution

I've packed this solution in embed __plain Ruby application__ (not Rails):
- `rake` tasks for database (need `ENV` variable provided)
- specs for `Parents` service

I've made a few changes to original code for some improvements:
- any parentable model has name convension for naming of parent node in database (`parent_id`)
- there is special service `Parents` that make work for any kind of `Parentable` model
- `Parents` has two interface methods `via_orm` and `via_sql` (Postgres) for getting parent nodes
- enum `Location::TYPES` is a hash with values

For more details see project folder

# Notes

This testcase was given by [Tabor](https://tabor.ru)
