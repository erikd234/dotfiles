google-chrome-stable --profile-directory="Default" "https://chat.openai.com" "https://slack.com" "https://www.google.com" &
google-chrome-stable --profile-directory="Profile 6" "https://asana.com" "https://figma.com" "https://notion.so" &
xterm -e "cd ~/work; bash" &
code ~/work/parrot/beta0-1/
i3-msg [class="Google-chrome"] move container to workspace number 2
i3-msg 'workspace 2; layout tabbed'
