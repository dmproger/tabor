module App
  module Parents
    module SQL
      module_function

      def call(record)
        table = record.class.table_name

        result = record.class.connection.execute <<-SQL
          WITH RECURSIVE result AS (
            SELECT id, parent_id
            FROM #{table}
            WHERE id = #{record.id}

            UNION ALL

            SELECT #{table}.id, #{table}.parent_id
            FROM #{table}
              JOIN result
                ON #{table}.id = result.parent_id
          )

          SELECT * FROM result;
        SQL

        record.class.where(id: result.map { |attrs| attrs['id'] }).to_a
      end
    end
  end
end
