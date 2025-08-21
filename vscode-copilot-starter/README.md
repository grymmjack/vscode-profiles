
# VS Code Copilot Starter Pack

Place this folder at the root of your project (it already contains `.vscode/copilot/`).

## Contents

- **hello-world.prompt.json** — a reusable prompt you can call as `@hello-world {"language": "python"}`
- **style-guide.instruction.json** — workspace rules Copilot should follow
- **devops-tools.toolset.json** — example tool commands Copilot can call
- **doc-writer.mode.json** — a preset mode that focuses on writing documentation
- **servers.json** — example MCP server definitions (adjust URLs to your servers)

## How to use

1. Open the Copilot side panel in VS Code.
2. Click the cog ⚙️ → choose the corresponding section (Prompt Files, Instructions, Tool Sets, Modes, MCP Servers).
3. Use *Add/Import* (or the equivalent) to point Copilot to files in `.vscode/copilot/`.
4. For the prompt, try: `@hello-world {"language": "typescript"}` in Copilot Chat.
5. Switch to **doc-writer** mode from the **Modes** menu to get documentation-focused responses.
6. Update `servers.json` to the MCP servers you actually run (localhost URLs are placeholders).

## Notes

- File shapes can vary between Copilot builds; treat these as templates.
- If your build expects different keys, rename `instructions`→`rules` or add `schemaVersion` fields as needed.
- Tool commands run inside your workspace terminal environment. Ensure required CLIs are installed (`kubectl`, `terraform`, `gh`).

Enjoy!
