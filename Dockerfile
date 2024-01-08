# Python resmi imajını temel alarak başlayın
FROM python:3.8

# Çalışma dizinini ayarlayın
WORKDIR /app

# Bağımlılıkları kopyalayın ve kurun (eğer requirements.txt dosyanız varsa)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Uygulama dosyalarını kopyalayın
COPY . .

# Uygulamanızı başlatmak için gerekli komut (örneğin main.py çalıştırmak)
CMD ["python", "./main.py"]
