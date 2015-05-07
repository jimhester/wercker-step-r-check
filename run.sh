#!/bin/bash

check () {
  Rscript -e 'devtools::check(document = FALSE, check_dir = ".", cleanup = FALSE)'
  check_result=$?
  warnings=0
  if [ "$WERCKER_R_CHECK_WARNINGS_ARE_ERRORS" == "true" ]; then
    grep -q -R "WARNING" ./*.Rcheck/00check.log;
    warnings=$?
  fi
  if [ "$check_result" -ne 0 ] || [ "$warnings" -ne 0 ]; then
    warn "Check Failed, dumping logs"
    find ./*.Rcheck -type f \( -name "*out" -o -name "*log" -o -name "*fail" \) \
      -exec echo ">>> File: {} <<<" \; \
      -exec cat {} \;
    fail "Check Failed"
  else
    success "Checks Passed"
  fi
}

check
