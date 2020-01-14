for i in $(find . -name 'Refinement.*' -not -name '*.tex' -type f); do
	rm $i
done;
