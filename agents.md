# Deployed Agents

This file lists the agents deployed in the Hub and Spoke projects, and explains how to discover them.

## Why the new agent didn't show up immediately

The agent `urn:agent:projects-371207989051:projects:371207989051:locations:us-west1:aiplatform:reasoningEngines:8828119596901859328` was deployed in **`us-west1`**.

If you search the Agent Registry using the location `us-central1` (which is used in some examples), it will not appear. You must specify `--location=us-west1` in your search command because App Hub discovery and Agent Registry searches are regional.

### Search Command for us-west1:
```bash
gcloud alpha agent-registry agents search \
    --project=wortz-project-352116 \
    --location=us-west1
```

---

## How Discovery and Search Work

### Discovery is Automatic
You do **not** need to run the `search` command to configure discovery. 
Once the Spoke project is attached to the Hub project's App Hub, App Hub continuously and automatically scans the Spoke project for new agents (Reasoning Engines). 

### Search is a Query, Not Configuration
The `gcloud alpha agent-registry agents search` command is a read-only query tool used to find available agents. You run it whenever you want to see what is currently deployed.

### Regional Constraints
*   **Single Location Only**: The `search` command requires a specific `--location` (e.g., `us-west1` or `us-central1`). You **cannot** query multiple locations at once; wildcards (like `--location=-`) are not supported.
*   **Search vs. List**: 
    *   `list` only shows agents that are *local* to the project and location you are querying.
    *   `search` queries across the App Hub boundary to find both local and *discovered* agents from attached Spoke projects in that location.

---

## Agent List (Hub Project Context: `wortz-project-352116`)

### Region: `us-west1`

#### Discovered from Spoke (`agent-spoke` / `371207989051`)
*   **Spoke Agent** (User's new agent)
    *   **URN**: `urn:agent:projects-371207989051:projects:371207989051:locations:us-west1:aiplatform:reasoningEngines:8828119596901859328`
    *   **Registry Name**: `projects/wortz-project-352116/locations/us-west1/agents/agentregistry-00000000-0000-0000-e4c5-d4fde41ee0ab`
    *   **Framework**: `google-adk`
    *   **Description**: Test
*   **AGENT_DESIGNER_GENERATED_DO_NOT_DELETE**
    *   **URN**: `urn:agent:projects-371207989051:projects:371207989051:locations:us-west1:aiplatform:reasoningEngines:6554364735033180160`

#### Local to Hub (`wortz-project-352116` / `679926387543`)
*   **Test Low Code Agent**
    *   **URN**: `urn:agent:projects-679926387543:projects:679926387543:locations:us-west1:aiplatform:reasoningEngines:7935421708264013824`
*   **AGENT_DESIGNER_GENERATED_DO_NOT_DELETE**
    *   **URN**: `urn:agent:projects-679926387543:projects:679926387543:locations:us-west1:aiplatform:reasoningEngines:2319406584653938688`
*   **Workspace Agent** (Global)
    *   **URN**: `urn:agent:googleapis.com:locations:global:workspaceagent:workspaceagent--a2a`

### Region: `us-central1`

#### Discovered from Spoke (`agent-spoke` / `371207989051`)
*   **coordinator_agent** (ID: `4240726738134368256`)
    *   **URN**: `urn:agent:projects-371207989051:projects:371207989051:locations:us-central1:aiplatform:reasoningEngines:4240726738134368256`
*   **coordinator_agent** (ID: `8226975358310678528`)
    *   **URN**: `urn:agent:projects-371207989051:projects:371207989051:locations:us-central1:aiplatform:reasoningEngines:8226975358310678528`
*   **Agent** (ID: `1761495143266910208`)
    *   **URN**: `urn:agent:projects-371207989051:projects:371207989051:locations:us-central1:aiplatform:reasoningEngines:1761495143266910208`

#### Local to Hub (`wortz-project-352116` / `679926387543`)
*   **coordinator_agent**
    *   **URN**: `urn:agent:projects-679926387543:projects:679926387543:locations:us-central1:aiplatform:reasoningEngines:12409637986893824`
*   **router_agent**
    *   **URN**: `urn:agent:projects-679926387543:projects:679926387543:locations:us-central1:aiplatform:reasoningEngines:3003309963956191232`
*   **coordinator_agent** (ID: `4491186690848718848`)
    *   **URN**: `urn:agent:projects-679926387543:projects:679926387543:locations:us-central1:aiplatform:reasoningEngines:4491186690848718848`
*   **Workspace Agent** (Global)
    *   **URN**: `urn:agent:googleapis.com:locations:global:workspaceagent:workspaceagent--a2a`
