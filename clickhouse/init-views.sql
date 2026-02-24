-- Stub views for local development. These return empty result sets.
-- Production uses real views from the Livepeer analytics pipeline.

CREATE VIEW IF NOT EXISTS v_api_gpu_metrics AS
SELECT
    toDateTime('1970-01-01') AS window_start,
    '' AS orchestrator_address,
    '' AS pipeline,
    CAST(NULL AS Nullable(String)) AS model_id,
    CAST(NULL AS Nullable(String)) AS gpu_id,
    CAST(NULL AS Nullable(String)) AS region,
    CAST(0 AS Float64) AS avg_output_fps,
    CAST(0 AS Float32) AS p95_output_fps,
    CAST(NULL AS Nullable(Float64)) AS jitter_coeff_fps,
    CAST(0 AS UInt64) AS status_samples,
    CAST(NULL AS Nullable(String)) AS gpu_name,
    CAST(NULL AS Nullable(UInt64)) AS gpu_memory_total,
    CAST(NULL AS Nullable(String)) AS runner_version,
    CAST(NULL AS Nullable(String)) AS cuda_version,
    CAST(NULL AS Nullable(Float64)) AS prompt_to_first_frame_ms,
    CAST(NULL AS Nullable(Float64)) AS startup_time_ms,
    CAST(NULL AS Nullable(Float64)) AS startup_time_s,
    CAST(NULL AS Nullable(Float64)) AS e2e_latency_ms,
    CAST(NULL AS Nullable(Float32)) AS p95_prompt_to_first_frame_ms,
    CAST(NULL AS Nullable(Float32)) AS p95_startup_time_ms,
    CAST(NULL AS Nullable(Float32)) AS p95_e2e_latency_ms,
    CAST(0 AS UInt64) AS valid_prompt_to_first_frame_count,
    CAST(0 AS UInt64) AS valid_startup_time_count,
    CAST(0 AS UInt64) AS valid_e2e_latency_count,
    CAST(0 AS UInt64) AS known_sessions,
    CAST(0 AS UInt64) AS success_sessions,
    CAST(0 AS UInt64) AS excused_sessions,
    CAST(0 AS UInt64) AS unexcused_sessions,
    CAST(0 AS UInt64) AS swapped_sessions,
    CAST(0 AS Float64) AS failure_rate,
    CAST(0 AS Float64) AS swap_rate
FROM system.one
WHERE 0;

CREATE VIEW IF NOT EXISTS v_api_network_demand AS
SELECT
    toDateTime('1970-01-01') AS window_start,
    '' AS gateway,
    CAST(NULL AS Nullable(String)) AS region,
    '' AS pipeline,
    CAST(0 AS UInt64) AS total_sessions,
    CAST(0 AS UInt64) AS total_streams,
    CAST(0 AS Float64) AS avg_output_fps,
    CAST(0 AS Float64) AS total_inference_minutes,
    CAST(0 AS UInt64) AS known_sessions,
    CAST(0 AS UInt64) AS served_sessions,
    CAST(0 AS UInt64) AS unserved_sessions,
    CAST(0 AS UInt64) AS total_demand_sessions,
    CAST(0 AS UInt64) AS unexcused_sessions,
    CAST(0 AS UInt64) AS swapped_sessions,
    CAST(0 AS UInt64) AS missing_capacity_count,
    CAST(0 AS Float64) AS success_ratio,
    CAST(0 AS Float64) AS fee_payment_eth
FROM system.one
WHERE 0;

CREATE VIEW IF NOT EXISTS v_api_sla_compliance AS
SELECT
    toDateTime('1970-01-01') AS window_start,
    '' AS orchestrator_address,
    '' AS pipeline,
    CAST(NULL AS Nullable(String)) AS model_id,
    CAST(NULL AS Nullable(String)) AS gpu_id,
    CAST(NULL AS Nullable(String)) AS region,
    CAST(0 AS UInt64) AS known_sessions,
    CAST(0 AS UInt64) AS success_sessions,
    CAST(0 AS UInt64) AS excused_sessions,
    CAST(0 AS UInt64) AS unexcused_sessions,
    CAST(0 AS UInt64) AS swapped_sessions,
    CAST(NULL AS Nullable(Float64)) AS success_ratio,
    CAST(NULL AS Nullable(Float64)) AS no_swap_ratio,
    CAST(NULL AS Nullable(Float64)) AS sla_score
FROM system.one
WHERE 0;
