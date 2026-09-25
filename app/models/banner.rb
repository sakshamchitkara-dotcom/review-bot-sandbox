class Banner
  def self.show(user)
    # reviewbot: ignore[unsafe-html]
    "<b>#{ERB::Util.h(user.name)}</b>".html_safe
  end
end
