CREATE TABLE bolum (
    bolumID INT PRIMARY KEY NOT NULL,
    bolumAd VARCHAR(100) NOT NULL
);


CREATE TABLE ogrenci (
    OgrNo INT PRIMARY KEY,
    OgrAd VARCHAR(50) NOT NULL,
    OgrSoyad VARCHAR(50) NOT NULL,
    bolumID INT NOT NULL,
    FOREIGN KEY (bolumID) REFERENCES bolum(bolumID)
);



CREATE TABLE Ders (
    DersKod INT PRIMARY KEY,
    DersAd VARCHAR(100) NOT NULL
);



CREATE TABLE Notlar (
    OgrNo INT,
    DersKod INT,
    VizeNot TINYINT,
    FinalNot TINYINT,
    PRIMARY KEY (OgrNo, DersKod),
    FOREIGN KEY (OgrNo) REFERENCES ogrenci(OgrNo),
    FOREIGN KEY (DersKod) REFERENCES Ders(DersKod)
);




--VERÝ EKLEME--

INSERT INTO bolum (bolumID, bolumAd) VALUES (1, 'Bilgisayar Mühendisliði');
INSERT INTO bolum (bolumID, bolumAd) VALUES (2, 'Yazýlým Mühendisliði');
INSERT INTO bolum (bolumID, bolumAd) VALUES (3, 'Elektrik Elektronik Mühendisliði');



INSERT INTO ogrenci (OgrNo, OgrAd, OgrSoyad, bolumID) VALUES (101, 'Ayþe', 'Diken', 1);
INSERT INTO ogrenci (OgrNo, OgrAd, OgrSoyad, bolumID) VALUES (102, 'Ali', 'Aydýn', 2);
INSERT INTO ogrenci (OgrNo, OgrAd, OgrSoyad, bolumID) VALUES (103, 'Esma', 'Ýnce', 1);
INSERT INTO ogrenci (OgrNo, OgrAd, OgrSoyad, bolumID) VALUES (104, 'Ferdi', 'Yýlmaz', 3);
INSERT INTO ogrenci (OgrNo, OgrAd, OgrSoyad, bolumID) VALUES (105, 'Beril', 'Erdem', 2);
INSERT INTO ogrenci (OgrNo, OgrAd, OgrSoyad, bolumID) VALUES (106, 'Ahmet', 'Küçük', 1);



INSERT INTO Ders (DersKod, DersAd) VALUES (1, 'Matematik 1');
INSERT INTO Ders (DersKod, DersAd) VALUES (2, 'Fizik 1');
INSERT INTO Ders (DersKod, DersAd) VALUES (3, 'Programlama');
INSERT INTO Ders (DersKod, DersAd) VALUES (4, 'Algoritma');
INSERT INTO Ders (DersKod, DersAd) VALUES (5, 'Veritabaný Yönetimi');
INSERT INTO Ders (DersKod, DersAd) VALUES (6, 'Yapay Zeka');
INSERT INTO Ders (DersKod, DersAd) VALUES (7, 'Mikroiþlemciler');




INSERT INTO Notlar (OgrNo, DersKod, VizeNot, FinalNot) VALUES (101, 1, 70, 90);
INSERT INTO Notlar (OgrNo, DersKod, VizeNot, FinalNot) VALUES (103, 6, 40, 50);
INSERT INTO Notlar (OgrNo, DersKod, VizeNot, FinalNot) VALUES (101, 2, 80, 90);
INSERT INTO Notlar (OgrNo, DersKod, VizeNot, FinalNot) VALUES (105, 6, 60, 90);
INSERT INTO Notlar (OgrNo, DersKod, VizeNot, FinalNot) VALUES (102, 1, 80, 100);
INSERT INTO Notlar (OgrNo, DersKod, VizeNot, FinalNot) VALUES (102, 2, 60, 70);
INSERT INTO Notlar (OgrNo, DersKod, VizeNot, FinalNot) VALUES (104, 5, 90, 100);
INSERT INTO Notlar (OgrNo, DersKod, VizeNot, FinalNot) VALUES (106, 7, 80, 90);


--VERÝ SÝLME--

DELETE FROM ogrenci WHERE OgrNo = 106 ;

DELETE FROM Notlar WHERE OgrNo = 105 AND DersKod = 2 ;




--VERÝ GÜNCELLEME--

UPDATE Ders SET DersAd = 'Kim2' WHERE DersKod = 7  ;

UPDATE bolum SET bolumAd = 'Yazýlým Mühendisliði' WHERE bolumID = 3 ;




SELECT * FROM ogrenci 
JOIN bolum  ON bolum.bolumID = ogrenci.bolumID
WHERE bolum.bolumAd IN ('Bilgisayar Mühendisliði', 'Elektrik Elektronik Mühendisliði');




SELECT * FROM Ders WHERE DersKod BETWEEN  1 AND 7 ;


SELECT * FROM Notlar ORDER BY VizeNot ASC ;


SELECT * FROM Notlar ORDER BY FinalNot DESC ;





SELECT * FROM bolum ;

SELECT * FROM ogrenci;

SELECT * FROM Ders;

SELECT * FROM Notlar;