#!/bin/csh -f

if ( `pwd` != "/home/faculty/d/davidkebo/davidkebo/csce689/labs/lab3-davidkebo/zebu" ) then
  echo "Warning: Working directory is changed."
  echo "Executing the postelab script in the same working directory is recommended."
  echo "    Previous path: /home/faculty/d/davidkebo/davidkebo/csce689/labs/lab3-davidkebo/zebu"
  echo "    Current path: `pwd`"
  echo ""
endif

cd /home/faculty/d/davidkebo/davidkebo/csce689/labs/lab3-davidkebo/zebu
/bin/sh -f /home/faculty/d/davidkebo/davidkebo/csce689/labs/lab3-davidkebo/zebu/zcui.work/vcs_splitter/simv.daidir/.elabcomCmd
