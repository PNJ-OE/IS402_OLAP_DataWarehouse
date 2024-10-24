 -- Create Dim_Date table 

CREATE TABLE Dim_Date ( 
  Date DATE NOT NULL PRIMARY KEY, 
  DayOfWeek INT NOT NULL, 
  Quarter INT NOT NULL, 
  Year INT NOT NULL 
); 
-- Create Dim_Airport table 

CREATE TABLE Dim_Airport ( 
  Origin  nVARCHAR(100) PRIMARY KEY,
 Org_Airport nVARCHAR(100) NOT NULL, 
 Dest nVARCHAR(100),
 Dest_Airport nVARCHAR(100)

); 

  

-- Create Dim_Flight table 

CREATE TABLE Dim_Flight ( 
FlightNum int NOT NULL PRIMARY KEY, 
  UniqueCarrier NVARCHAR(50) NOT NULL, 
  TailNum NVARCHAR(50) 
); 

  

-- Create Dim_Time table 

CREATE TABLE Dim_Time ( 
  DepTime INT primary key, 
  ArrTime INT, 
  CRSArrTime INT, 
  CRSDepTime INT, 
  CRSElapsedTime INT, 
  ActualElapsedTime INT 
); 

  

-- Create Dim_Delay table (Optional) 

CREATE TABLE Dim_Delay ( 


  CarrierDelay INT primary key, 

  WeatherDelay INT, 

  NASDelay INT, 

  SecurityDelay INT, 

  LateAircraftDelay INT, 

  ArrDelay INT, 

  DepDelay INT, 

  TaxiIn INT, 

  TaxiOut INT 

); 

  

-- Create Flights_Fact table 
CREATE TABLE Flights_Fact ( 
	Flight_num INT Not NULL primary key, 
  Date DATE NOT NULL,
  Origin  nVARCHAR(100),
    CarrierDelay INT NOT NULL, 
	DepTime INT,
  Airline nVARCHAR(50) NOT NULL, 
  Distance INT, 
); 

drop table Dim_Date
drop table Dim_Airport
drop table Dim_Flight
drop table Dim_Delay
drop table Dim_Time
drop table Flights_Fact
