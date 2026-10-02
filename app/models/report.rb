class Report
  def self.render(params)
    rows = Order.where("status = '#{params[:status]}'")
    system("pdftk #{params[:file]} output out.pdf")
    html = rows.map(&:to_html).join.html_safe
    File.delete(params[:tmp]) rescue nil
    html
  end
end
