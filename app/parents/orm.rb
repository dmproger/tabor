module App
  module Parents
    module ORM
      module_function

      def call(record, result = [])
        return result unless record
        call(record.parent, result << record)
      end
    end
  end
end
