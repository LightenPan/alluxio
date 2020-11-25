@set PROTOC=E:\download\soft\protoc-3.14.0-win64\bin\protoc.exe
@set PROTOC_GRPC_PLUGIN=E:\download\soft\protoc-3.14.0-win64\bin\protoc-gen-grpc-java-1.9.1-windows-x86_64.exe
@set PROTO_FILES_DIR=F:\devel\work\tbds\alluxio\core\transport\src\main\proto

cd %PROTO_FILES_DIR%

REM 编译proto文件
%PROTOC% --java_out=..\java\ grpc\*.proto
%PROTOC% --java_out=..\java\ grpc\table\*.proto
%PROTOC% --java_out=..\java\ grpc\tablelayout\hive\*.proto
%PROTOC% --java_out=..\java\ proto\client\*.proto
%PROTOC% --java_out=..\java\ proto\dataserver\*.proto
%PROTOC% --java_out=..\java\ proto\journal\*.proto
%PROTOC% --java_out=..\java\ proto\meta\*.proto
%PROTOC% --java_out=..\java\ proto\shared\*.proto


REM 编译grpc文件
%PROTOC% --plugin=protoc-gen-grpc-java=%PROTOC_GRPC_PLUGIN% --grpc-java_out=..\java\ grpc\*.proto
%PROTOC% --plugin=protoc-gen-grpc-java=%PROTOC_GRPC_PLUGIN% --grpc-java_out=..\java\ grpc\table\*.proto
%PROTOC% --plugin=protoc-gen-grpc-java=%PROTOC_GRPC_PLUGIN% --grpc-java_out=..\java\ grpc\tablelayout\hive\*.proto
%PROTOC% --plugin=protoc-gen-grpc-java=%PROTOC_GRPC_PLUGIN% --grpc-java_out=..\java\ proto\client\*.proto
%PROTOC% --plugin=protoc-gen-grpc-java=%PROTOC_GRPC_PLUGIN% --grpc-java_out=..\java\ proto\dataserver\*.proto
%PROTOC% --plugin=protoc-gen-grpc-java=%PROTOC_GRPC_PLUGIN% --grpc-java_out=..\java\ proto\journal\*.proto
%PROTOC% --plugin=protoc-gen-grpc-java=%PROTOC_GRPC_PLUGIN% --grpc-java_out=..\java\ proto\meta\*.proto
%PROTOC% --plugin=protoc-gen-grpc-java=%PROTOC_GRPC_PLUGIN% --grpc-java_out=..\java\ proto\shared\*.proto

pause