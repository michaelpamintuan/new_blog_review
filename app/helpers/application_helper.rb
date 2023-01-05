module ApplicationHelper
    def main_or_devise_container_class
        if is_devise_class?
            "container mx-auto mt-28 px-5 flex"
        else 
            "mx-auto max-w-7xl py-6 sm:px-6 lg:px-8"
      end
    end

    def is_devise_class?
        ['sessions', 'registrations', 'passwords'].include?(controller_name)
    end

    def page_title
        if controller_name == 'pages'
            'Dashboard'
        else 
            controller_name.titleize
        end
    end

    def navigation_active_state cname
        if cname == controller_name
            'bg-gray-900 text-white'
        else
            'text-gray-300 hover:bg-gray-700 hover:text-white'
        end
    end
end
