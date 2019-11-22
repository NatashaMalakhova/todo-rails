# ActiveRecord To Do List на Ruby on Rails

## Создать задачу

      Task.add('Ваш текст')

## Показать все задачи

      Task.all

## Показать незавершённые задачи

      Task.unfinished

## Показать завершённые задачи

      Task.finished

## Отредактировать текст задачи

      Task.edit(id_задачи, 'новый текст')

## Сменить статус задачи на true (выполнено)

      Task.finish(id_задачи)

## Сменить статус задачи на false (не выполнено)

      Task.unfinish(id_задачи)

## Удалить определённую задачу

      Task.del(id_задачи)

## Удалить все задачи

      Task.delete_all

## Удалить завершённые задачи

      Task.delete_finished

## Удалить незавершённые задачи

      Task.delete_unfinished



