ATTACH TABLE _ UUID '056d5da6-9e02-46ba-9c65-3be468fefaf8'
(
    `event_date` Date,
    `event_time` DateTime,
    `event_time_microseconds` DateTime64(6),
    `metric` LowCardinality(String),
    `value` Float64
)
ENGINE = MergeTree
PARTITION BY toYYYYMM(event_date)
ORDER BY (event_date, event_time)
SETTINGS index_granularity = 8192
