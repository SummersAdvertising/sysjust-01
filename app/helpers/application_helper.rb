# -*- encoding : utf-8 -*-
module ApplicationHelper
	def get_current_host_and_port
		request.protocol+request.host_with_port+"/"
  end

	def xq_download_link(log, full = true)
    file_name = "setup.exe"
    file_name = (full) ? "setup.exe" : "update.exe"

  	"http://login3.xq.com.tw/dassvr/installer/DAQ/TW/#{sprintf('%.2f', log.version)}/#{file_name}"
  end

  def xqlite_download_link(log, full = true)
    file_name = "setup.exe"
    file_name = (full) ? "xqlitesetup.exe" : "xqliteupdate.exe"

    "http://login3.xq.com.tw/dassvr/installer/DAQXQLITE/TW/#{sprintf('%.2f', log.version)}/#{file_name}"
  end

end
