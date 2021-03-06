#!/bin/sh

echo -e "${bakcyn}[Google Chrome] Start Install ${txtrst}";

cat << EOF > /etc/yum.repos.d/google-chrome.repo
[google-chrome]
name=google-chrome - \$basearch
baseurl=http://dl.google.com/linux/chrome/rpm/stable/\$basearch
enabled=1
gpgcheck=1
gpgkey=https://dl-ssl.google.com/linux/linux_signing_key.pub
EOF

dnf install -y google-chrome-stable ;

echo -e "${bakgrn}[Google Chrome] Finish Install ${txtrst}";

