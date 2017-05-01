#!/bin/bash -e

plugins=(
    ryantxu-ajax-panel
    grafana-simple-json-datasource
    vonage-status-panel
    btplc-peak-report-panel
    raintank-kubernetes-app
    natel-influx-admin-panel
    mtanda-heatmap-epoch-panel
    savantly-heatmap-panel
    jdbranham-diagram-panel
    briangann-gauge-panel
)
for plugin in $plugins
do
    grafana-cli plugins install $plugin
done
