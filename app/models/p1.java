String[] str = answer.split(" ")
HashMap<String,Integer> h = new HashMap<String,Integer>();
String x = "";
for(i=0;i<str.length;i++){
	x = str[i];
	if(h.containsKey(x)){
		h.put(x,h.get(x)+1)
	}
	else
		h.put(x,1)
}
String y = ""
foreach(Map.Entry entry:h){
	if(entry.getValue > 1)
		y += entry.getKey() + " "
}
System.out.println(y);