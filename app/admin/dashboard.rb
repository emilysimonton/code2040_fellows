ActiveAdmin.register_page "Dashboard" do
  menu :if => proc{ current_admin_user.super_duper }
  # menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    # div class: "blank_slate_container", id: "dashboard_default_message" do
      # span class: "blank_slate" do
      #   span I18n.t("active_admin.dashboard_welcome.welcome")
      #   small I18n.t("active_admin.dashboard_welcome.call_to_action")
      # end
    # end

    # Here is an example of a simple dashboard with columns and panels.
    

    columns do
      column do
        panel "Approval Queue" do
          ul do
            Fellow.not_approved.map do |fellow|
              li link_to fellow.name, admin_fellow_path(fellow)
            end
          end
        end
      end
    end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end
