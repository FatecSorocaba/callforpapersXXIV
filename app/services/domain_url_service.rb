class DomainUrlService
  def self.perform(domain, subdomains)
    if subdomains.empty?
      domain
    else
      "#{subdomains.join('.')}.#{domain}"
    end
  end
end
