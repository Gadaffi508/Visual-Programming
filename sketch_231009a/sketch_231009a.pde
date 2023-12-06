float x = 100; // Ev konumunun x koordinatı
int y = 150; // Ev konumunun y koordinatı
float roofHeight = 50; // Çatı yüksekliği
float houseWidth = 80; // Ev genişliği
float houseHeight = 70; // Ev yüksekliği

void setup() {
  size(400, 400);
}

void draw() {
  background(240); // Arka planı temizle
  
  // Ev çizimi
  fill(255, 0, 0); // Ev rengi (kırmızı)
  rect(x, y, houseWidth, houseHeight); // Ev dikdörtgeni
  
  // Çatı çizimi
  fill(0, 0, 255); // Çatı rengi (mavi)
  triangle(x, y, x + houseWidth / 2, y - roofHeight, x + houseWidth, y); // Üçgen çatı
  
  // Ev animasyonu
  x = x + 1; // Ev sağa doğru kayar
  if (x > width) {
    x = -houseWidth; // Ev ekranın dışına çıktığında sol tarafa geri getir
  }
  
  delay(10); // Animasyonun daha yavaş olması için bekleme süresi
}
