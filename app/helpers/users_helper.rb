module UsersHelper
    def weekly_columns
        ['activity_monday', 'activity_tuesday', 'activity_wednesday',\
        'activity_thursday', 'activity_friday', 'activity_saturday']
    end

    def users
        users = []
        User.all.each do |user|
            users.push
        end
    end
end
