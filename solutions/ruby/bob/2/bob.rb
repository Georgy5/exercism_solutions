class Bob
  def self.hey(remark)
    minified_remark = remark.gsub(/\s+/, "")

    return "Fine. Be that way!" if silent?(minified_remark)
    return "Calm down, I know what I'm doing!" if yelling_question?(minified_remark)
    return "Whoa, chill out!" if yelling?(minified_remark)
    return "Sure." if question?(minified_remark)
    "Whatever."
  end

  private
    def self.silent?(remark)
      remark.empty?
    end

    def self.yelling?(remark)
      remark == remark.upcase && remark =~ /[A-Z]/
    end

    def self.question?(remark)
      remark[-1] == '?'
    end

    def self.yelling_question?(remark)
      yelling?(remark) && question?(remark)
    end
end
