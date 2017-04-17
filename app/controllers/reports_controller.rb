class ReportsController < ApplicationController
  def index
    @reports = Report.all
  end

  def show
    model = report_model(name: params[:id])
    @rows = model.all
    render template: 'reports/detail'
  end

  private

  def report_model(name:)
    Object.const_set(
      name.singularize.camelize,
      Class.new(ActiveRecord::Base) do
        self.table_name = "reporting.#{name}"
      end
    )
  end
end
