condition = {
  "ab" = {
    "account_id"                   = 3995249
    "type"                         = "static"
    "name"                         = "pitambar"
    "description"                  = "Alert when transactions are taking too long"
    "runbook_url"                  = "https://www.example.com"
    "enabled"                      = true
    "violation_time_limit_seconds" = 3600
    "aggregation_method"           = "event_flow"
    "aggregation_delay"            = 120
    "slide_by"                     = 30
    "baseline_direction"           = "upper_only"
    "query"                        = "SELECT count(*) FROM Transaction WHERE appName = 'PitambarApp' "
    "operator"                     = "above"
    "threshold"                    = 5.5
    "threshold_duration"           = 150
    "threshold_occurrences"        = "ALL"
    "operator"                     = "above"
    "threshold"                    = 3.5
    "threshold_duration"           = 300
    "threshold_occurrences"        = "ALL"
  }

  "cd" = {
    "account_id"                   = 3995249
    "type"                         = "static"
    "name"                         = "pitambar-1"
    "description"                  = "Alert when transactions are taking too long"
    "runbook_url"                  = "https://www.example.com"
    "enabled"                      = false
    "violation_time_limit_seconds" = 3600
    "aggregation_method"           = "event_flow"
    "aggregation_delay"            = 120
    "slide_by"                     = 30
    "baseline_direction"           = "upper_only"
    "query"                        = "SELECT count(*) FROM Transaction WHERE appName = 'PitambarApp' "
    "operator"                     = "below"
    "threshold"                    = 5.5
    "threshold_duration"           = 300
    "threshold_occurrences"        = "ALL"
    "operator"                     = "above"
    "threshold"                    = 3.5
    "threshold_duration"           = 600
    "threshold_occurrences"        = "ALL"
  }


  "ef" = {
    "account_id"                   = 3995249
    "type"                         = "static"
    "name"                         = "pitambar-2"
    "description"                  = "Alert when transactions are taking too long"
    "runbook_url"                  = "https://www.example.com"
    "enabled"                      = true
    "violation_time_limit_seconds" = 3600
    "aggregation_method"           = "event_flow"
    "aggregation_delay"            = 120
    "slide_by"                     = 30
    "baseline_direction"           = "upper_only"
    "query"                        = "SELECT count(*) FROM Transaction WHERE appName = 'PitambarApp' "
    "operator"                     = "below"
    "threshold"                    = 5.5
    "threshold_duration"           = 180
    "threshold_occurrences"        = "ALL"
    "operator"                     = "above"
    "threshold"                    = 3.5
    "threshold_duration"           = 120
    "threshold_occurrences"        = "ALL"
  }

  "gh" = {

    "account_id"                   = 3995249
    "type"                         = "static"
    "name"                         = "pitambar-3"
    "description"                  = "Alert when transactions are taking too long"
    "runbook_url"                  = "https://www.example.com"
    "enabled"                      = false
    "violation_time_limit_seconds" = 3600
    "aggregation_method"           = "event_flow"
    "aggregation_delay"            = 120
    "slide_by"                     = 30
    "baseline_direction"           = "upper_only"
    "query"                        = "SELECT count(*) FROM Transaction WHERE appName = 'PitambarApp' "
    "operator"                     = "below"
    "threshold"                    = 5.5
    "threshold_duration"           = 180
    "threshold_occurrences"        = "ALL"
    "operator"                     = "above"
    "threshold"                    = 3.5
    "threshold_duration"           = 120
    "threshold_occurrences"        = "ALL"
  }


}


