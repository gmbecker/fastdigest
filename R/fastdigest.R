fastdigest = function(obj, ref_serializer = NULL)
{
    res = paste(.Call(R_fastdigest, obj, ref_serializer, PACKAGE="fastdigest"), collapse="")
    res
}
