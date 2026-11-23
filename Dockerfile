# MCPJungle, self-hosted MCP gateway and registry, packaged for Railway.
# Upstream: https://github.com/mcpjungle/MCPJungle (MPL-2.0)
# The "-stdio" image is upstream's official image with uv (uvx) and Node.js (npx) added,
# so you can register STDIO MCP servers as well as Streamable HTTP ones.
FROM ghcr.io/mcpjungle/mcpjungle:0.4.7-stdio@sha256:4eae32ecba23e2970413a320ae1f0457f9f7dac1ee39c2b3f34f48753e918e33

COPY start.sh /usr/local/bin/mcpjungle-railway-start
RUN chmod 755 /usr/local/bin/mcpjungle-railway-start

EXPOSE 8080
ENTRYPOINT ["/usr/local/bin/mcpjungle-railway-start"]
