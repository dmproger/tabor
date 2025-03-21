#
# Реализовать метод сортировки массива экземляров класса Location.
# Сортировка должна содержать следующие правила:
# 1) Если элементы экземляров класса Location между собой связаны через связь родитель-потомок,
# то родитель выводиться раньше потомка в сортировке. Связь родитель-потомок может в себе содержать больше двух элементов.
# 2) Если элементы экземляров класса Location между собой НЕ связаны через связь родитель-потомок,
# то выводиться тот элемент раньше, у которого <record>_type имеет наименьшее значение в хэше ТYPES
# 3) Если в (2) вторая часть утверждения у пары элементов экземляров класса Location одинаковая
# и (1) невылнимо, то выводить тот элемент раньше, у которого глубина вложенности меньше.
# Глубина вложенности - это количество родителей у элемента экземлляра класса Location.
#
module App
  module Sort
    module_function

    def call(records)
      # TODO Есть вопросы по условию
    end
  end
end
