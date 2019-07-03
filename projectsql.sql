 create table Admin180628(Id int not null primary key,
                                    UserName nvarchar(30),
									Password nvarchar(30))
						
									insert into Admin180628 values(1,'mahesh','mahi7278')
									select * from Admin180628

create table Mahesh_180628SoftwareInventory(SItemId INT NOT NULL PRIMARY KEY,
                                                SItem_Name NVARCHAR(30),
												SItem_Type NVARCHAR(20),
												IsLicensed NVARCHAR(10),
												Quantity INT)

create table Mahesh_180628HardwareInventory(HItem_Id INT NOT NULL PRIMARY KEY,
                                                 HItem_Name NVARCHAR(30),
												 Location_Id int,
												 HItem_Type NVARCHAR(20),
												 Quantity INT,
										         Reorder_Level INT)
 create table Mahesh_180628EmployeeMaster(Employee_Id INT NOT NULL PRIMARY KEY,
                                             Employee_Name NVARCHAR(30),
											 Location NVARCHAR(20),
											 Joining_Date datetime,
											 Password nvarchar(20))

create table Mahesh_180628AllocationMaster(HItem_Id int NOT NULL FOREIGN KEY REFERENCES Mahesh_180628HardwareInventory(HItem_Id),
                                               Employee_Id int NOT NULL FOREIGN KEY REFERENCES Mahesh_180628EmployeeMaster(Employee_Id) ,
											   Serial_No int not null primary key,
											   Location nvarchar(20),
											   Alloc_Qty int,
											   Allocation_Date datetime)

create table Mahesh_180628TicketMaster(Ticket_Id int not null primary key,
                                           Created_By int NOT NULL FOREIGN KEY REFERENCES Mahesh_180628EmployeeMaster(Employee_Id),
										   Created_Date datetime,
										   Subject nvarchar(20),
										   Description nvarchar(20),
										   Expected_Completion_Time datetime,
										   Status nvarchar(20),
										   SItem_Name nvarchar(30),
										   SItem_Type nvarchar(20))


