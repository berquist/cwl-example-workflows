#!/usr/bin/env cwl-runner

cwlVersion: v1.2

class: CommandLineTool

doc: "unify hashed values into a single output"

hints:
  DockerRequirement:
    dockerPull: frolvlad/alpine-bash:latest

inputs:
  md5:
    type: File
    inputBinding:
      position: 1

  sha:
    type: File
    inputBinding:
      position: 2

  whirlpool:
    type: File
    inputBinding:
      position: 3

outputs:
  output:
    type: stdout

stdout: unify

baseCommand: [cat]
