receivers:
  otlp:
    protocols:
      grpc:
        endpoint: 0.0.0.0:${grpc_port}

exporters:
  logging:
    loglevel: debug
  honeycomb:
    api_key: "my-api-key"
    dataset: "my-dataset"
	api_url: "${mock_endpoint}"
	debug: true

service:
  pipelines:
    traces:
      receivers: [otlp]
      exporters: [logging, honeycomb]
