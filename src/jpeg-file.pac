%include jpeg-file-headers.pac

# The base record for a JPEG file
type JPEG_File = case $context.connection.is_done() of {
    false -> JPEG      : JPEG_Image;
    true  -> overlay   : bytestring &length=1 &transient;
};

type JPEG_Image = record {
    headers : Headers;
} &byteorder=bigendian;

refine connection MockConnection += {

    %member{
        bool done_;
    %}

    %init{
        done_ = false;
    %}

    function mark_done(): bool
        %{
        done_ = true;
        return true;
        %}

    function is_done(): bool
        %{
        return done_;
        %}
};
