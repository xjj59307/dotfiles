job_api_url="${JENKINS_URL}/api/json"
job_base_url="${JENKINS_URL}/job/"

job_urls=$(curl -s "${job_api_url}" | jq -r '.jobs[].name' | awk -v url="${job_base_url}" '{print url $0}')
open $(echo "${job_urls}" | fzf)

