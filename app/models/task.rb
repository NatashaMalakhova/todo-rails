class Task < ApplicationRecord

  def self.allTasks
    tasks_all = Task.all
    tasks_all .each do |task|
      puts "
            id: #{task.id}
            tasks: #{task.tasks}
            done: #{task.done}
            data_create: #{task.created_at}
            data_update: #{task.updated_at}"
    end
  end

  def self.unfinishedTasks
    tasks_uncomplited = Task.where(done: 0).order(:created_at)
    tasks_uncomplited .each do |task|
      puts "
            id: #{task.id}
            tasks: #{task.tasks}
            done: #{task.done}
            data_create: #{task.created_at}
            data_update: #{task.updated_at}"
    end
  end

  def self.finishedTasks
    tasks_complited = Task.where(done: 1).order(:created_at)
    tasks_complited .each do |task|
      puts "
            id: #{task.id}
            tasks: #{task.tasks}
            done: #{task.done}
            data_create: #{task.created_at}
            data_update: #{task.updated_at}"
    end
  end

  def self.add(text)
    Task.create(:tasks => text, :done => false)
  end

  def self.updateTask(id, newText)
    Task.update(id, :tasks => newText)
  end

  def self.check(id)
    taskChecked = Task.find(id)
    check = !taskChecked.done
    Task.update(id,:done => check)
  end

  def self.deleteTask(id)
    Task.delete(id)
  end

  def self.deleteFinished
    tasksFinishedDel = Task.where(done: 1)
    tasksFinishedDel .each do |task|
      Task.delete(task.id)
    end
  end

  def self.deleteUnfinished
    tasksUnfinishedDel = Task.where(done: 0)
    tasksUnfinishedDel .each do |task|
      Task.delete(task.id)
    end
  end

  def self.deleteAll
    tasksDel = Task.all
    tasksDel .each do |task|
      Task.delete(task.id)
    end
  end

end
