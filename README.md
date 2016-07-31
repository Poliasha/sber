# sber
Дана таблица System, в которой содержатся имена систем. Количество систем больше 2

System
ID	Sys_Name
1	   Система1
2	   Система2
	
	

Дана таблица Message, в которой содержатся сообщения, отправляемые системой
Ключ: System.id = Message.sysId

Message
Id	SysId	 Message
2	    1	   TestMsg1
3	    1	   TestMsg2
5	    2	   TestMsg457
17	  3	   SUM=451
		

Дана таблица Dictoinary, в которой каждой системе соответствует код справочника
Ключ: System.Id = Dictionary.SysId

Dictionary
Id	SysId	  Code
3	    1	    SYSTEM_OUT
6	    2	    SYSTEM_IN
1	    3	    CALCULATOR
2	    4	    SYSTEM_Z


Задача: зная 2 кода систем - SYSTEM_OUT и SYSTEM_IN– необходимо написать SQL запрос, который выведет имена указанных систем и количество сообщений, переданных каждой системой.
Sys_Name	Количество сообщений
	
	
