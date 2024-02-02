#!/bin/sh

mason make github_actions_dart --on-conflict overwrite --exclude '' --minCoverage 100 --flutterVersion '3.13.6' --flutterChannel stable --dartChannel stable --dependabotFrequency weekly --generateDependabot false --generateSemanticPullRequest true --generateSpellCheck true --spellCheckConfig cspell.json --workflowRef main