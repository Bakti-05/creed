# First Helm
Helm adalah package manager untuk kubernetes, helm berfungsi selayaknya *apt* di ubuntu.

## Prequisite
Untuk membuat Helm, beberapa hal yang diperlukan :
- Kubernetes Cluster (Saat membuat Chart Helm ini author menggunakan Kubernetes Cluster versi v1.27.7)
- Helm yang terinstall (Saat membuat Chart Helm ini author menggunakan Helm version v3.15.3),
  atau jika ingin menginstall helm, dapat mengeksekusi perintah ini :
  ```bash
  curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash
  ```
## Membuat Helm
Untuk membuat helm, eksekusi perintah ini
```bash
# helm create <namaHelm>
helm create creed

Outputnya :
Creating creed
```
Maka akan otomatis terbuat sebuah folder dengan nama creed, di dalam folder tersebut terdapat 
- Chart.yaml : berisi informasi mengenai nama chart, versi, maintainer, dsb
- values.yaml : berisi nilai-nilai yang akan digunakan sebagai parameter untuk manifestnya
- templates/_helper.tpl
- templates/*.yaml : manifest dari rss yang akan dijalankan

## Menjalankan Helm dari Chart ini
```bash
git clone https://github.com/Bakti-05/creed.git
rm -f creed/README.md
```
Pastikan chart helm berjalan dengan baik 
```bash
helm lint creed

Outputnya :
==> Linting creed
[INFO] Chart.yaml: icon is recommended

1 chart(s) linted, 0 chart(s) failed
```
Jalankan Helm
```bash
helm install creed ./creed -f creed/values.yaml -n creed --create-namespace
```
By default aplikasi creed berjalan dengan service loadBalancer
