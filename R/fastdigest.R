fastdigest = function(obj, algo = c("spooky", "crc32"), ref_serializer = NULL)
{
    algo = match.arg(algo)
    if (algo == "spooky")
        res = paste(.Call("R_fastdigest2", obj, ref_serializer, PACKAGE="fastdigest"), collapse="")
    else if(algo == "crc32")
        res = .Call("R_fastdigest", obj, ref_serializer, PACKAGE="fastdigest")
    res
}
