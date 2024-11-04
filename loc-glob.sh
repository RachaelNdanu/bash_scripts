v1='A'
v2='B'

myfunc () {
	local v1='C'
	v2='D'
	echo "inside my function v1:$v1 , v2:$v2"
}


echo "before calling myfunc() v1:$v1 , v2:$v2"

myfunc

echo "After calling myfunc() v1:$v1 , v2:$v2"

#v2 is a gobal variabe and will be updated after calling the functon