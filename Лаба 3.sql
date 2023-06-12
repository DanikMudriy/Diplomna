CREATE Table ����
(
  		Cubd_ID INT NOT NULL,
  		Cubd_Name TEXT NOT NULL,
  		Date_Dowload DATE NOT NULL,
  		PRIMARY KEY (Cubd_ID)
);
CREATE TABLE ����������
(
  	Sotrudnik_ID INT NOT NULL,
  	IPN INT NOT NULL,
  	PIP VARCHAR(25) NOT NULL,
  	Telefon INT NOT NULL,
  	Mail VARCHAR(25) NOT NULL,
	Cubd_ID INT NOT NULL,
  	PRIMARY KEY (Sotrudnik_ID),
  	FOREIGN KEY (Cubd_ID) REFERENCES ���� (Cubd_ID)
);
CREATE TABLE ����
(
  	Komp_ID INT NOT NULL,
 	 Model VARCHAR(50) NOT NULL,
 	 Virobnyk VARCHAR(50) NOT NULL,
  	Date_Pokupka DATE NOT NULL,
 	 Cubd_ID INT NOT NULL,
 	 PRIMARY KEY (Komp_ID),
  	FOREIGN KEY (Cubd_ID) REFERENCES ����(Cubd_ID)
);
 
 INSERT INTO [����]
VALUES('1',
'Paradox',
'22.11.2001');

INSERT INTO [����]
VALUES('2',
'Microsoft Access',
'12-06-2005');

INSERT INTO [����]
VALUES('3',
'FoxPro',
'20-10-2007');

INSERT INTO [����]
VALUES('4',
'dBase',
'01-05-2019'
);
select * from ����

INSERT INTO [����������]
VALUES('1',
'579321456',
'������ ���� ��������',
'442035',
'abcdEgor@gmail.com',
'1');

INSERT INTO [����������]
VALUES('2',
'000317825',
'������� ������ �����������',
'132567',
'RudAndriy@gmail.com',
'2');

INSERT INTO [����������]
VALUES('3',
'123456789',
'������ ������ �������������',
'055793321',
'Mudriy.danik@gmail.com',
'3');

INSERT INTO [����������]
VALUES('4',
'372456891',
'��������� ����� ����������',
'0673954785',
'Beregovoy@gmail.com',
'4');

select * from ����������

INSERT INTO [����]
VALUES('1',
'Asus',
'AsusVyrobnik',
'22.11.2001',
'2');

INSERT INTO [����]
VALUES('2',
'MSI',
'MSIKompany',
'05.12.2011',
'4');

INSERT INTO [����]
VALUES('3',
'Asus',
'AsusVyrobnik',
'01.05.2010',
'1');

INSERT INTO [����]
VALUES('4',
'Lenovo',
'MOYO',
'25.05.2021',
'3');

select * from ����