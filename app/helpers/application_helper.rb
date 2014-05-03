# -*- encoding: utf-8 -*-
module ApplicationHelper
	require 'pathname'
	# from http://www.emersonlackey.com/article/rails3-error-messages-for-replacement
  def errors_for(object, message=nil)
    html = ""
    unless object.errors.blank?
      html << "<div class=' errors #{object.class.name.humanize.downcase}_errors'>\n"
      if message.blank?
        if object.new_record?
          html << "\t\t<h5>There was a problem creating the #{object.class.name.humanize.downcase}</h5>\n"
        else
          html << "\t\t<h5>There was a problem updating the #{object.class.name.humanize.downcase}</h5>\n"
        end    
      else
        html << "<h5>#{message}</h5>"
      end  
      html << "\t\t<ul>\n"
      object.errors.full_messages.each do |error|
        html << "\t\t\t<li>#{error.split(" ").last}</li>\n"
      end
			# html << "\t\t\t<li>两次密码不相等</li>\n" unless params[:user][:password] == params[:user][:password_confirmation]
      html << "\t\t</ul>\n"
      html << "\t</div>\n"
    end
    html
  end  
	
	# //返回对应id的fruit_images
	def get_images(id)
		# dir = 'F:/2012/proj/fruithome/app/assets/images/fruit_images/'
		dir = Pathname.new('F:/2012/proj/fruithome/app/assets/images/fruit_images/')
		files = []
		Dir[File.join(dir, "#{id}_270_270_[1-9].jpg")].each { |full_path|
			path = Pathname.new(full_path).relative_path_from(dir)
			files << path
		}
		files
	end
	
	# //返回对应id的fruit_intro_images
	def get_intro_images(id)
		# dir = 'F:/2012/proj/fruithome/app/assets/images/fruit_images/'
		dir = Pathname.new('F:/2012/proj/fruithome/app/assets/images/fruit_intro_images/')
		files = []
		Dir[File.join(dir, "#{id}_[1-9].jpg")].each { |full_path|
			path = Pathname.new(full_path).relative_path_from(dir)
			files << path
		}
		files
	end
	
	#//返回对应id的fruit_images的数量
	def count_images(id)
		self.get_images(id).length
	end
	
	#//返回对应id的fruit_intro_images的数量
	def count_intro_images(id)
		self.get_intro_images(id).length
	end
end

class TestApplicationHelper
	include ApplicationHelper
end
test = TestApplicationHelper.new
print test.count_intro_images 11
print test.get_intro_images 11