#
# Сервис на входе принимает экземпляр класса ActiveRecord и возвращает на массив экземпляров.
# Результирующий массив содержит всех родителей, включая сам экземпляр (метод для получения родителя - parent)
# Реализованы два способа: через абстракции orm (множество запросов) и на чистом sql (один запрос)
#
module App
  module Parents
    require_relative 'parents/orm'
    require_relative 'parents/sql'

    module_function

    def via_orm(record)
      ORM.call(record)
    end

    def via_sql(record)
      SQL.call(record)
    end
  end
end
