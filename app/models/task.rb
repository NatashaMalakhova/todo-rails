class Task < ApplicationRecord

  scope :unfinished, -> { where(done: false) }
  scope :finished, -> { where(done: true) }
  default_scope { order(created_at: :asc) }

  def self.add(text)
    Task.create(text: text, done: false)
  end

  def self.edit(id, new_text)
    Task.update(id, text: new_text)
  end

  def self.finish(id)
    Task.update(id, done: true)
  end

  def self.unfinish(id)
    Task.update(id, done: false)
  end

  def self.del(id)
    Task.delete(id)
  end

  def self.delete_finished
    Task.finished.delete_all
  end

  def self.delete_unfinished
    Task.unfinished.delete_all
  end

end
