#!/usr/bin/env cwlrunner

class: Workflow

cwlVersion: v1.2

inputs:
  - id: input
    type: File
    doc: "to be hashed all the ways"

outputs:
  - id: output
    type: File
    outputSource: unify/output

steps:
  - id: md5
    run: hashsplitter-md5.cwl
    in:
      - { id: input, source: input }
    out:
      - { id: output }

  - id: sha
    run: hashsplitter-sha.cwl
    in:
      - { id: input, source: input }
    out:
      - { id: sha_output }

  - id: whirlpool
    run: hashsplitter-whirlpool.cwl
    in:
      - { id: input, source: input }
    out:
      - { id: output }

  - id: unify
    run: hashsplitter-unify.cwl
    in:
      - { id: md5, source: md5/output }
      - { id: sha, source: sha/sha_output }
      - { id: whirlpool, source: whirlpool/output }
    out:
      - { id: output }
