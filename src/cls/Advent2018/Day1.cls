Class Advent2018.Day1
{

ClassMethod Run() As %Integer
{
    
    set fn="input1.txt"
    set verbose=1
    set stream = ##Class(%Stream.FileCharacter).%New()
	set sc=stream.LinkToFile(fn)
    set sum=0
	while 'stream.AtEnd {
        set line=stream.ReadLine()
        set sum=sum+line
        if verbose w "line="_line,"sum="_sum,!
    }
    return sum
}

}
