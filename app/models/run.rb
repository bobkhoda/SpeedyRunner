class Run < ActiveRecord::Base

  def runs_week
    # @run_week = self.where("date_run >= ?", 1.week.ago.utc).order("date_run DESC")
  end

end
