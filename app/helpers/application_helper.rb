module ApplicationHelper
    def choose_new_or_edits
    if action_name == 'new' || action_name == 'confirm'
      confirm_instagramms_path
    elsif action_name == 'edit'
      instagramms_path
    end
    end
    
    
    def choose_edit_or_feeds
    if action_name == 'new' || action_name == 'confirm'
      confirm_feeds_path
    elsif action_name == 'edit'
      feeds_path
    end
    end
    
end
