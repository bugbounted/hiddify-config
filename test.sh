#!/bin/bash

. common/ticktick.sh

bob=Bob

``
  people = {
    "domains": [
      {
        "domain": "1.1.1.1.sslip.io",
        "id": 1,
        "mode": "direct"
      },
      {
        "domain": "www.wikipedia.org",
        "id": 2,
        "mode": "telegram_faketls"
      },
      {
        "domain": "fa.wikipedia.org",
        "id": 3,
        "mode": "ss_faketls"
      }
    ],
    "hconfigs": {
      "admin_secret": "d67329d0-5eff-4e6e-8244-dbe58f1d7ecf",
      "allow_invalid_sni": true,
      "auto_update": true,
      "block_iran_sites": true,
      "decoy_site": "https://www.wikipedia.org/",
      "fake_cdn_domain": null,
      "firewall": false,
      "http_ports": "80",
      "http_proxy": true,
      "kcp_ports": "443",
      "netdata": true,
      "only_ipv4": true,
      "proxy_path": "OFsEIWaAEy7cIwet6zNb",
      "speed_test": true,
      "ssfaketls_enable": false,
      "ssfaketls_fakedomain": "fa.wikipedia.org",
      "ssfaketls_secret": "de92a679-1dc9-4d32-8c49-189a12454acd",
      "telegram_adtag": "",
      "telegram_enable": true,
      "telegram_fakedomain": "www.wikipedia.org",
      "telegram_secret": "de92a679-1dc9-4d32-8c49-189a12454acd",
      "tls_ports": "443",
      "vmess_enable": true
    },
    "users": [
      {
        "current_usage_GB": 0,
        "expiry_time": "2033-01-19",
        "id": 1,
        "monthly_usage_limit_GB": 9000,
        "name": "default",
        "uuid": "50f17d86-029d-417f-875e-b126fb05cb04"
      }
    ]
  }
``

function printEmployees() {
  echo
  echo "  The ``people.domains.length()`` Employees listed are:"

  for employee in ``people.domains.items()``; do
    printf "    - %s\n" "${!employee}"
  done

  echo 
}



printEmployees

echo ``people.hconfigs.ssfaketls_fakedomain``
echo ``people.domains[1].domain``




#
#
