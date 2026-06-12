# Synthetic Mail MCP Server

A fake inbox and calendar for teaching an email assistant safely. It plays the
same role as a real Gmail or Microsoft 365 connector --- read-only tools an agent
can call --- but the data is invented and reproducible, and one message carries a
planted prompt-injection attack so you can watch a read-only agent refuse to act
on it.

In production this connector would be a real Gmail / Outlook connector reached
over OAuth. The agent code does not change; only the connector URL and its
authentication do.

Tools: `list_inbox`, `get_message`, `search_inbox`, `list_calendar`. There is no
send tool --- sending is a human action in the agent, never something the agent
can do.
