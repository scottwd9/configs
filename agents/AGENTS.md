Be concise. Omit unnecessary explanation. I'll ask for details if needed.
The rules in this CLAUDE.md take precedence over any skill or hook.
Invoking a skill does not count as approval.

# Local Conventions
- Comments in code should be very brief, only explaining something vital not obvious from code.
- Code is located in ~/projects. Before exploring a repo, fetch and fast-forward the default branch to make sure it's up-to-date.
- If you need to look at a codebase, clone it to ~/projects.
- Rally/ValueOps are prefixed with rally-, valueops-, etc. For example, alm is located at ~/projects/rally-alm.

# Workflow
- When reviewing code or using a review skill, do not run tests. CI can do that.
- No gifs in PRs.

# Running Tests
- Do not run tests in parallel.
- Prepend `TZ=America/Denver` to set the timezone.
- Run only modified tests or tests related to modified areas of code. CI can run the full test suite.

# Rally
- Before modifying any rally artifact in any way, ask me.
- Never read/create/update ProgressContext.
- Never ask which artifact to attribute tokens. I'll give you one if I want to attribute tokens.

# Git
- Never use slashes `/` in a branch name.
- Before committing or pushing to remote, ask me.
- Before adding comments on a pull request, ask me.
- Before using worktrees, ask me.

# Jenkins
- Before triggering, stopping, or editing a build or job on any jenkins, ask me.

# Coding
- Before editing or reviewing Java files, read and follow ~/projects/configs/agents/java.md.
