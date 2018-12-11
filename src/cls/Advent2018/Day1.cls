Class Advent2018.Day1
{

ClassMethod GetInput() As %Stream
{
   
    set fn="input1.txt"
    set stream = ##Class(%Stream.FileCharacter).%New()
    set sc=stream.LinkToFile(fn)
    return stream
}

ClassMethod Run() As %Integer
{
    set verbose=0
    set stream=..GetInput()
    set sum=0
	while 'stream.AtEnd {
		set line=stream.ReadLine()
        set sum=sum+line
        if verbose w "line="_line," ","sum="_sum,!
    }
    return sum
}

ClassMethod Run2(stream) As %Integer
{
        
        set verbose=1
        set stream=..GetInput()
        set freq=0
        set twice=0
        while ('twice) {
            while 'stream.AtEnd {
            set line=stream.ReadLine()
            set freq=freq+line
            set ^twice(freq)=$I(^twice(freq))
            if ^twice(freq)=2 set twice=1 quit
            if verbose w "line="_line," ","freq=",freq,!  
            }     
            do stream.Rewind()
        }
        if verbose w "freq=",freq
        return freq
}

}
