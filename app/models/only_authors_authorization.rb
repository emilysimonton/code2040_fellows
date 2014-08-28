 class OnlyAuthorsAuthorization < ActiveAdmin::AuthorizationAdapter

      def authorized?(action, subject = nil)
        return true if user.super_duper
        case subject
        when normalized(Fellow)
          # Only let the author update and delete posts
          if action == :update || action == :destroy 
            if subject.class == Fellow 
              subject.email == user.email
            end
          # If it's not an update or destroy, anyone can view it
          else
            true
          end

        else
          true
        end
      end

  end