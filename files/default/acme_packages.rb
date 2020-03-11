Ohai.plugin(:AcmePackages) do
  depends 'platform'
  provides 'acme_packages'

  def platform_packages
    case platform
    when 'windows'
      registered_applications
    when 'ubuntu'
      apt_packages
    when 'rhel', 'suse', 'redhat'
      rpm_packages
    end
  end

  collect_data(:default) do
    acme_packages Mash.new
    if platform == 'windows'
      acme_packages['SYSWIN'] = ::Dir.glob("/ProgramData/*/*").map { |p| p.split("/")[3] }
    else
      %w{ DEV TST GTU TGT UAT PTP PRD }.each do |env|
        acme_packages[env] = ::Dir.glob("/#{env}/*/*") - ['.', '..']
      end
      r.flatten!
    end
  end
end
