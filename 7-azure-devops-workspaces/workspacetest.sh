echo "*********** Create or select workspace $(Release.EnvironmentName)"
if [ $(terraform workspace list | grep -c "$(Release.EnvironmentName)") -eq 0 ]
then
  echo "Create new workspace $(Release.EnvironmentName)"
  terraform workspace new "$(Release.EnvironmentName)"
else
  echo "Switch to workspace $(Release.EnvironmentName)"
  terraform workspace select "$(Release.EnvironmentName)"
fi