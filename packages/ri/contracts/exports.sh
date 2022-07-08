#! usr/bin/bash
ABIS=(
  # Add greps to export here 
  *Component
  *Facet
  *System
  World
  Diamond
  LocalLatticeGameLocator
  LibQuery
)

EXCLUDE=(
  # Add files not to export here 
  Component 
  IComponent
)

for file in ${ABIS[@]}; do
  cp out/$file.sol/*.json abi/;
done

for file in ${EXCLUDE[@]}; do
  rm abi/$file.json;
done
