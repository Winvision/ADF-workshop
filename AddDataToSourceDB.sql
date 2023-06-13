    --CREATE TABLE Adf_Inside_Temperature(
    --RoomId INT,
    --Temperature DECIMAL,
    --SensorId VARCHAR(MAX),
    --MeasurementTime DATETIME,
    --)

 

    DECLARE @COUNTER AS INT

 

    SET @COUNTER = 1

 

    WHILE @COUNTER < 10
    BEGIN
    DECLARE @ROOMID  AS INT

    IF @COUNTER <5 
    BEGIN
    SET @ROOMID = 123
    INSERT INTO [dbo].[Adf_Inside_Temperature]
    VALUES(@ROOMID, @COUNTER, CONCAT('TempSensor', CAST(@ROOMID AS VARCHAR(MAX))),  DATEADD(hh,-@COUNTER,GETDATE()))
    END

    IF @COUNTER >4 
    BEGIN
    SET @ROOMID = 456
    INSERT INTO [dbo].[Adf_Inside_Temperature]
    VALUES(@ROOMID, @COUNTER, 'TEST', DATEADD(hh,-@COUNTER + 4,GETDATE()))
    END

 

    SET @COUNTER = @COUNTER + 1;

 

END
