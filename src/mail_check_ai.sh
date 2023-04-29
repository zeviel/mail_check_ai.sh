#!/bin/bash

api="https://api.mailcheck.ai/v1"
user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36"

function set_api_key() {
    # 1 - api_key: (string): <your_api_key>
    api_key=$1
}

function check_domain() {
    # 1 - domain: (string): <domain>
    curl --request GET \
        --url "$api/domain/$1" \
        --user-agent "$user_agent" \
        --header "authorization: Bearer $api_key" \
        --header "content-type: application/json"
}

function check_email() {
    # 1 - email: (string): <email>
    curl --request GET \
        --url "$api/email/$1" \
        --user-agent "$user_agent" \
        --header "authorization: Bearer $api_key" \
        --header "content-type: application/json"
}
