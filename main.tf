resource "newrelic_alert_policy" "pitambar" {
  name = "pitambar"
}

resource "newrelic_nrql_alert_condition" "pitambar_alert" {
  for_each                     = var.condition
  account_id                   = each.value.account_id
  policy_id                    = newrelic_alert_policy.pitambar.id
  type                         = each.value.type
  name                         = each.value.name
  description                  = each.value.description
  runbook_url                  = each.value.runbook_url
  slide_by                     = each.value.slide_by
  baseline_direction           = each.value.baseline_direction
  enabled                      = each.value.enabled
  violation_time_limit_seconds = each.value.violation_time_limit_seconds
  aggregation_method           = each.value.aggregation_method
  aggregation_delay            = each.value.aggregation_delay


  nrql {
    query = each.value.query
  }

  critical {
    operator              = each.value.operator
    threshold             = each.value.threshold
    threshold_duration    = each.value.threshold_duration
    threshold_occurrences = each.value.threshold_occurrences
  }

  warning {
    operator              = each.value.operator
    threshold             = each.value.threshold
    threshold_duration    = each.value.threshold_duration
    threshold_occurrences = each.value.threshold_occurrences
  }
}