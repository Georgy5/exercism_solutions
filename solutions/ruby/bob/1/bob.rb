class Bob
  def self.hey(remark)
    silent_remark = remark.gsub(/\s+/, "")

    if silent_remark.empty?
      "Fine. Be that way!"
    elsif remark !~ /[a-zA-Z]/ && remark.rstrip[-1] == '?'
      "Sure."
    elsif remark == remark.upcase and remark[-1] == '?'
      "Calm down, I know what I'm doing!"
    elsif remark.rstrip[-1] == '?'
      "Sure."
    elsif remark !~ /[a-zA-Z]/
      "Whatever."
    elsif remark == remark.upcase
      "Whoa, chill out!"
    else
      "Whatever."
    end
  end
end
