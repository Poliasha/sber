# sber
Дана таблица System, в которой содержатся имена систем. Количество систем больше 2
System {ID, Sys_Name} Value {1, 2} {Система1, Система2};

Дана таблица Message, в которой содержатся сообщения, отправляемые системой
Ключ: System.id = Message.sysId

Message{Id, SysId, Message} Value{2, 3, 5, 17} {1, 1, 2, 3} {TestMsg1, TestMsg2, TestMsg457, SUM=451};

Дана таблица Dictoinary, в которой каждой системе соответствует код справочника
Ключ: System.Id = Dictionary.SysId

Dictionary {Id, SysId, Code} Value{3, 6, 1, 2} {1, 2, 3, 4} {SYSTEM_OUT, SYSTEM_IN, CALCULATOR, SYSTEM_Z};

Задача: зная 2 кода систем - SYSTEM_OUT и SYSTEM_IN– необходимо написать SQL запрос, который выведет имена указанных систем и количество сообщений, переданных каждой системой.

Result {Sys_Name; Количество сообщений};
	
	
