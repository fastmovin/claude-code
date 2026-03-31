# API client and OAuth

**Primary paths:** `src/services/api/`, `src/services/oauth/`, `src/utils/api.ts`, `src/utils/auth.ts`

`services/api/client.ts` and `claude.ts` implement HTTP and streaming calls to Anthropic APIs (including retries, errors, session ingress, files API, usage, bootstrap). Provider-specific paths (Bedrock, Vertex, Foundry) are gated through auth and endpoint configuration in `utils/aws.ts`, `utils/auth.ts`, and related modules.

`services/oauth/` implements the browser-based OAuth flow (auth code listener, token exchange, crypto).

**See also:** [Authentication](https://code.claude.com/docs/en/authentication), [Amazon Bedrock](https://code.claude.com/docs/en/amazon-bedrock), [Google Vertex AI](https://code.claude.com/docs/en/google-vertex-ai).
