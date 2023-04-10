---
# This workflow contains examples of:
#
# 1. steps that do not use input/output from other steps; these steps can run
#    independently at any time and will always run
#
# 2.

cwlVersion: v1.2
class: Workflow

inputs: []

outputs: []

steps:
  # The first three steps are independent of each other and all other steps.
  - id: first
    run: random_failure.tool.cwl
    in: []
    out: []
  - id: second
    run: random_failure.tool.cwl
    in: []
    out: []
  - id: third
    run: random_failure.tool.cwl
    in: []
    out: []
