# Toplama işlemini gerçekleştiren fonksiyon
def toplama(x, y):
    return x + y

# Çıkarma işlemini gerçekleştiren fonksiyon
def cikarma(x, y):
    return x - y

# Çarpma işlemini gerçekleştiren fonksiyon
def carpma(x, y):
    return x * y

# Bölme işlemini gerçekleştiren fonksiyon
def bolme(x, y):
    if y != 0:  # Sıfıra bölme kontrolü
        return x / y
    else:
        return "Hata: Bir sayı sıfıra bölünemez!"

# Sürekli çalışacak döngü başlatılır
while True:  
    print("Hesap Makinesine Hoşgeldiniz")  # Kullanıcıya hoşgeldiniz mesajı
    print("Lütfen yapmak istediğiniz işlemi seçin:")  # Kullanıcıdan işlem seçmesi istenir
    print("1. Toplama işlemi")
    print("2. Çıkarma işlemi")
    print("3. Çarpma işlemi")
    print("4. Bölme işlemi")  

    # Kullanıcının işlem seçimi alınıyor
    secim = input("Lütfen seçiminizi yapın (1/2/3/4): ")

    # Kullanıcıdan iki sayı girmesi istenir
    sayi1 = float(input("Birinci sayıyı giriniz: "))
    sayi2 = float(input("İkinci sayıyı giriniz: "))

    # Kullanıcının seçimine göre ilgili işlem yapılır
    if secim == '1':
        print(f"Sonuç: {sayi1} + {sayi2} = {toplama(sayi1, sayi2)}")

    elif secim == '2':
        print(f"Sonuç: {sayi1} - {sayi2} = {cikarma(sayi1, sayi2)}")
    
    elif secim == '3':
        print(f"Sonuç: {sayi1} * {sayi2} = {carpma(sayi1, sayi2)}")
    
    elif secim == '4':
        print(f"Sonuç: {sayi1} / {sayi2} = {bolme(sayi1, sayi2)}")
    
    else:
        print("Geçersiz bir seçim yaptınız!")  # Geçersiz bir işlem seçimi yapılırsa uyarı verilir

    # Kullanıcıya devam edip etmek istemediği sorulur
    cevap = input("Devam etmek istiyor musunuz? (evet/hayır): ")
    if cevap.lower() == "hayır":  # Kullanıcı "hayır" derse döngü sonlanır
        print("Hesap makinesi kapandı.")
        break
    else:
        continue  # Kullanıcı "evet" derse döngü yeniden başlar