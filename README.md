 <div align="center">

# Jailbreaks

**A curated collection of system prompts, persona locks, workspace policies, and agent operating specifications for frontier, open-weight, and free stealth models.**

![Prompts](https://img.shields.io/badge/prompts-32-4c9f70)
![Targets](https://img.shields.io/badge/targets-26%2B-2f6f9f)
![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen?style=flat&logo=github)
![Stars](https://img.shields.io/github/stars/togg53192-cmd/jailbreaks?style=flat&logo=github&color=yellow)

</div>

---

## About

A working collection of **32 prompts targeting 26+ models**, including complete system prompts, persona definitions, workspace policies, `AGENTS.md` files, configuration blocks, and Ollama Modelfiles.

Every file is intended to be complete and paste-ready. No summaries. No partial excerpts.

The collection covers:

- Free stealth models available through OpenCode Zen
- Open-weight families including GLM, DeepSeek, Kimi, Qwen, Gemma, and GPT-OSS
- Closed frontier models including Claude, Gemini, Grok, and Mistral
- Coding-agent and workspace instruction formats
- Ollama Modelfiles and harness-specific configuration

**New here?** Start with the [collection](#collection) or jump directly to [how to use](#how-to-use).

> [!WARNING]
> **Research and educational purposes only.**
>
> This repository documents how instruction hierarchies, persona framing, prompt conflicts, and policy overrides can affect model behavior. These techniques are also useful to researchers and developers studying how to make AI systems more resistant to prompt injection and instruction manipulation.
>
> Do not use this material to harm others, bypass applicable laws, or violate the terms of service of a platform or model provider.

## Collection

### OpenCode Zen — Free Stealth Models

| Model | File | Type |
|---|---|---|
| **Big Pickle** | [BigPickle-opencode.md](./BigPickle-opencode.md) | VANTA persona lock with explicit operating floor |
| **Space Bunny** | [spacebunny-agents.md](./spacebunny-agents.md) | Assistant operating specification |
| **LongCat 2.5** | [longcat-agents.md](./longcat-agents.md) | Assistant operating specification |
| **MiMo V2.6** | [mimo-2.6-agents.md](./mimo-2.6-agents.md) | Assistant operating specification |
| **Step 5 Preview** | [Step-5-preview.md](./Step-5-preview.md) | Workspace operating profile |
| **Muse Spark 1.3** | [Muse spark 1.3.md](./Muse%20spark%201.3.md) | Agent deployment operating policy |
| **Muse Spark 1.3 v2** | [Muse-spark-1-3-v2.md](./Muse-spark-1-3-v2.md) | Runtime scope-note variant |
| **Muse.ai** | [muse-ai-AGENTS.md](./muse-ai-AGENTS.md) | Assistant operating specification |

### Anthropic — Claude

| Model | File | Type |
|---|---|---|
| **Opus** | [opus v1.md](./opus%20v1.md) · [opus v2.md](./opus%20v2.md) | Conversational groundwork persona, v1 / v2 |
| **Sonnet** | [sonnet v1.md](./sonnet%20v1.md) · [Sonnet v2.md](./Sonnet%20v2.md) | Writer's-room framing, v1 / v2 |

### Zhipu — GLM / ZCode

| Model | File | Type |
|---|---|---|
| **GLM-5.2** | [glm-5.2.md](./glm-5.2.md) | System prompt |
| **GLM ZCode 5.2** | [glm-zcode-5.2.md](./glm-zcode-5.2.md) | System prompt |
| **GLM ZCode 5.3** | [glm-zcode-5.3.md](./glm-zcode-5.3.md) · [glm-zcode-5.3-AGENTS.md](./glm-zcode-5.3-AGENTS.md) | System prompt + `AGENTS.md` drop-in |
| **GLM-5.3 Flash** | [glm-5-3-flash.md](./glm-5-3-flash.md) | Assistant operating specification |
| **GLM-5.3 (OpenCode)** | [glm5-3opencode.md](./glm5-3opencode.md) | Assistant operating specification |

### DeepSeek

| Model | File | Type |
|---|---|---|
| **DeepSeek V3** | [deepseek v3.md](./deepseek%20v3.md) | System prompt |
| **DeepSeek V4** | [deepseek v4.md](./deepseek%20v4.md) | System prompt |
| **DeepSeek 4.1** | [deepseek-4-1.md](./deepseek-4-1.md) | Assistant operating specification |
| **DeepSeek V4.1 Flash** | [deepseek-v4-1-flash.md](./deepseek-v4-1-flash.md) | Operator brief (abliterated Venice build covered in full) |

### Moonshot — Kimi

| Model | File | Type |
|---|---|---|
| **Kimi K2** | [kimi-k2.md](./kimi-k2.md) | System prompt |
| **Kimi K3** | [kimi-k3-agents.md](./kimi-k3-agents.md) | Workspace operating profile |

### xAI — Grok

| Model | File | Type |
|---|---|---|
| **Grok Build** | [Grok build.md](./Grok%20build.md) | Agent operating instructions |
| **Grok 4.7** | [grok-4.7.md](./grok-4.7.md) | App-builder workspace guide |
| **Grok Config** | [grok-config.txt](./grok-config.txt) | `<CFG>` priority and routing configuration |

### NVIDIA — Nemotron

| Model | File | Type |
|---|---|---|
| **Nemotron 3 Ultra 550B A55B** | [nemotron-3-ultra.md](./nemotron-3-ultra.md) | Assistant operating specification |

### Google / Mistral / Alibaba

| Model | File | Type |
|---|---|---|
| **Gemini 4 Argon** | [Gemini-4-Argon.md](./Gemini-4-Argon.md) | Operating policy |
| **Gemini 3.1 Pro** | [Gemini-3.1-Pro.md](./gemini-3.1-pro.md) | System prompt |
| **Mistral Large 4** | [Mistral-Large-4.md](./Mistral-Large-4.md) | Agent system prompt |
| **Qwen 3.7** | [qwen-3.7.md](./qwen-3.7.md) | System prompt |
| **Qwen 3.8** | [qwen-3.8.md](./qwen-3.8.md) | System prompt |

### Ollama Modelfiles

| Model | File | Type |
|---|---|---|
| **Gemma 4** | [gemma4.md](./gemma4.md) | `FROM` + `SYSTEM` block |
| **GPT-OSS 20B** | [gpt-oss-20b.md](./gpt-oss-20b.md) | `FROM` + `SYSTEM` block |

## How to Use

### System Prompts

Copy the contents of the relevant file into the system-prompt or custom-instructions field supported by your client or API.

Examples include:

- API `system` messages
- Chatbot custom-instruction fields
- Agent-level instruction blocks
- Harness-specific system prompt configuration

### AGENTS.md Files

Save the file as:

```text
AGENTS.md
```

Place it in the root of the relevant repository or workspace.

Coding agents and compatible tools can use `AGENTS.md` as project-level instructions.

### Workspace Policies

Files labeled as **assistant operating specification**, **workspace operating profile**, or similar are designed for environments that support persistent global instructions.

For example, an OpenCode installation may use:

```text
~/.config/opencode/AGENTS.md
```

The exact location depends on the client or harness being used.

### Ollama Modelfiles

Use the supplied file directly with Ollama:

```bash
ollama create gemma4-jb -f gemma4.md
```

Adjust the output model name and source file as needed.

### Grok Configuration

Files intended as Grok configuration should be placed in the configuration field expected by the target harness rather than inserted into the normal turn-by-turn conversation.

> [!NOTE]
> Prompt behavior is highly version-dependent.
>
> Models are updated, instruction hierarchies change, system prompts rotate, and behavior that worked against one release may stop working against another.
>
> If a file appears outdated, [open an issue](../../issues) or submit an updated version.

## Contributing

Pull requests are welcome.

A good contribution should follow these conventions:

1. **One prompt per file.**  
   New files should preferably use lowercase names with hyphens and no spaces:
   ```text
   model-name.md
   ```

2. **Include the complete prompt.**  
   Contributions should be paste-ready rather than shortened summaries or excerpts.

3. **Document where it belongs.**  
   Clearly identify whether the file is intended for a system prompt, `AGENTS.md`, Modelfile, configuration slot, or another instruction surface.

4. **Version changes explicitly.**  
   Significant revisions should receive a new version rather than silently replacing an older prompt:
   ```text
   opus-v3.md
   ```

5. **Keep descriptions accurate.**  
   Avoid claiming compatibility with versions or models that have not been tested.

Found something that no longer behaves as documented? Opening an issue with the model, version, and affected file is already useful.

## Disclaimer

All material in this repository is provided **for research and educational purposes only**.

The project exists to document prompt-level instruction behavior, instruction conflicts, persona framing, model configuration, and related LLM security concepts. This material may also help developers understand and harden systems against prompt injection and instruction manipulation.

The maintainers do not endorse unlawful, abusive, or harmful use of this repository.

Model providers may prohibit certain uses of these prompts under their terms of service. Users are responsible for understanding and complying with the rules, policies, and laws that apply to the systems they use.

---

<div align="center">

**Star the repository if the collection saved you a session of prompt archaeology.**

*Issue reports and pull requests help keep the collection current as models and instruction systems change.*

</div>
