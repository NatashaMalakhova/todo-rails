# ActiveRecord To Do List на Ruby on Rails

## Создать задачу

      Task.add('Ваш текст')

## Показать все задачи

      Task.allTasks

## Показать незавершённые задачи

      Task.unfinishedTasks

## Показать завершённые задачи

      Task.finishedTasks

## Отредактировать текст задачи

      Task.updateTask(id_задачи, 'новый текст')

## Сменить статус задачи

      Task.check(id_задачи)

## Удалить определённую задачу

      Task.deleteTask(id_задачи)

## Удалить все задачи

      Task.deleteAll

## Удалить завершённые задачи

      Task.deleteFinished

## Удалить незавершённые задачи

      Task.deleteUnfinished



