#
# Сервис на входе принимает экземпляр класса ActiveRecord и возвращает массив экземпляров.
# Результирующий массив содержит всех родителей, включая сам экземпляр.
# Реализованы два способа:
# - через абстракцию orm (множество запросов)
# - чистый sql (один запрос)
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
