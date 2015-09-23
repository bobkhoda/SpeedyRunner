class Run < ActiveRecord::Base

  def self.runs_week
    Run.where("date_run >= ?", 1.week.ago.utc).order("date_run DESC")
  end

  def self.runs_month
    Run.where("date_run >= ?", 1.month.ago.utc).order("date_run DESC")
  end

  def self.total_miles
    Run.sum(:miles)
  end

  def self.total_time
    Run.sum(:time_run)
  end

end
