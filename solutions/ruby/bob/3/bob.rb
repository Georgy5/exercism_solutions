class Bob
  def self.hey(remark)
    minified_remark = remark.gsub(/\s+/, "")

    asking = minified_remark[-1] == '?'
    yelling = remark =~ /[A-Z]/ && remark !~ /[a-z]/
    silent = minified_remark.empty?

    case
    when asking && yelling
      "Calm down, I know what I'm doing!"
    when asking
      "Sure."
    when silent
      "Fine. Be that way!"
    when yelling
      "Whoa, chill out!"
    else
      "Whatever."
    end
  end
end
