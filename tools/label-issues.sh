#!/usr/bin/env bash
# Label the open issues in togg53192-cmd/jailbreaks.
#
# Requires: gh CLI, authenticated with repo scope.
#   gh auth login          # or: export GH_TOKEN=ghp_...
#
# Safe to re-run: adding a label that is already present is a no-op.
# Every issue currently has zero labels, so this is purely additive.
#
# Usage:
#   ./label-issues.sh              # dry run, prints what it would do
#   ./label-issues.sh --apply      # actually label

set -uo pipefail

REPO="togg53192-cmd/jailbreaks"
APPLY="${1:-}"

if ! command -v gh >/dev/null 2>&1; then
  echo "gh CLI not found" >&2; exit 1
fi

if [ "$APPLY" = "--apply" ]; then
  if ! gh auth status >/dev/null 2>&1; then
    echo "not authenticated — run: gh auth login" >&2; exit 1
  fi
fi

# ---------------------------------------------------------------- labels
# Four new labels, plus reuse of GitHub defaults where they fit.
# keep: names here must match EXACTLY what is created below.
create_labels() {
  local apply="$1"
  local -a defs=(
    "add-model|0e8a16|Request for a new model or surface to be added"
    "model-update|1d76db|Existing prompt stopped working, or model version moved on"
    "broken-prompt|d73a4a|Prompt documented as working no longer works"
    "how-to|5319e7|Usage question, not a request or a bug"
    "meta|bfd4f2|Repo housekeeping: channel, stars, structure, moderation"
  )
  for d in "${defs[@]}"; do
    IFS='|' read -r name color desc <<< "$d"
    if [ "$apply" = "--apply" ]; then
      gh label create "$name" --repo "$REPO" --color "$color" --description "$desc" --force
      echo "label ok: $name"
    else
      echo "would create label: $name (#$color) $desc"
    fi
  done
}

# ---------------------------------------------------------------- mapping
# issue<TAB>labels<TAB>why
MAP=$(cat <<'EOF'
1	add-model,how-to	"deepseek 4.1" + asks what the prompt does
2	model-update,broken-prompt	glm5.3 jb — image report of failure
3	add-model	wants antigravity cli added
5	broken-prompt,model-update	Muse.ai denies every request
7	add-model	wants Qwen3.8
11	broken-prompt	grok build network security fails
12	broken-prompt	MiMo-V2.6-Flash ~95% fail rate
14	broken-prompt	Big Pickle refuses the persona
15	broken-prompt	deepseek 4.1 flash refuses torrent
17	add-model	proposes a new DeepSeek prompt
19	meta	promotion / collab offer
24	broken-prompt	gemini 反重力 not working
25	add-model	wants gpt-6 luna
27	broken-prompt	gemini argon screenshot report
28	meta	test issue from a git course
30	add-model	wants gemini 3.8 flash + 3.1 pro
31	meta	request for a telegram channel
32	meta	prompt leak dumps another model's prompt
35	broken-prompt	Opus 5.5 refuses
37	add-model	wants Agnes-3.0-flash
40	add-model	wants Manus 2.0 lite
41	add-model	wants Cue support
42	meta	telegram channel as deletion insurance
43	broken-prompt	"still not working" — prompt detected as framing
45	add-model	wants gemini 3.8 flash
47	broken-prompt	beam md fails on low/default thinking — 15 comments, highest activity
50	how-to	how to use AGENTS.md on DP 4.1
51	add-model,model-update	asks to drop Spacebunny in favour of Cro
52	meta	bot-generated test issue (Russian spam)
53	how-to	how to use with deepseek harness
54	add-model	wants opencode pulse alpha free
55	how-to	grok bot applicability
58	model-update,broken-prompt	dsv4.1 may need update
59	how-to	OmniRoute + DeepSeek 4.1 usage question
61	how-to	how to import md for gem after gem removal
62	broken-prompt	gemini argon worked hours ago, now refuses
63	meta	star history chart + badges PR request
64	broken-prompt	grok prompt fails on GrokBot specifically
EOF
)

echo
echo "=== labels to create ==="
create_labels "$APPLY"

echo
echo "=== issue mapping ($REPO) ==="
printf '%-6s %-34s %s\n' "issue" "labels" "reason"
n=0
while IFS=$'\t' read -r num labels why; do
  [ -z "${num:-}" ] && continue
  n=$((n+1))
  printf '%-6s %-34s %s\n' "#$num" "$labels" "$why"
  if [ "$APPLY" = "--apply" ]; then
    IFS=',' read -ra arr <<< "$labels"
    gh issue edit "$num" --repo "$REPO" "${arr[@]/#/--add-label=}" >/dev/null && \
      echo "    applied" || echo "    FAILED"
  fi
done <<< "$MAP"

echo
echo "$n issues mapped."
if [ "$APPLY" != "--apply" ]; then
  echo "Dry run. Re-run with --apply to label them."
fi
