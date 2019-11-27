module JPEG;
export {
type FileAnalyzers::JPEGMarker: record {
    # The type of marker
	marker_val               : count;
	# The length, including the length
	len                      : count;
	## Data
	data                     : string;
	## The marker index in the JPEG
	marker_num               : count;
};
}