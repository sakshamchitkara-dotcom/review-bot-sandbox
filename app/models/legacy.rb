class Legacy
  def self.run(cmd)
    `sh -c #{cmd}`
  end
end
