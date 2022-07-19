all: csharp javascript ruby

csharp: csharp/bin/Debug/net6.0/csharp.dll
	dotnet csharp/bin/Debug/net6.0/csharp.dll	

csharp/bin/Debug/net6.0/csharp.dll: csharp/Program.cs
	dotnet build csharp

clean:
	dotnet clean csharp

.PHONY: javascript ruby

javascript:
	node javascript/index.js

ruby:
	ruby ruby/main.rb

