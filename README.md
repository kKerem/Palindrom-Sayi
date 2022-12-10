[![Open in Visual Studio Code](https://classroom.github.com/assets/open-in-vscode-c66648af7eb3fe8bc4f294546bfd86ef473780cde1dea487d3c4ff354943c9ae.svg)](https://classroom.github.com/online_ide?assignment_repo_id=9518738&assignment_repo_type=AssignmentRepo)
Palindrom Sayı
==============

Bir **palindrom** sayı, iki taraftan okunuş yönüyle aynı olan sayıdır; örneğin `3`, `5`, `8`, `101`, `232`, `3663`, `8008`, `13431`. Bir sayı palindrom değilse, tersiyle toplanarak elde edilen sayının polindrom olup olmadığına tekrar bakılır. Değilse işlemler tekrarlanır. İşlemlerin tekrar sayısını **derinlik** (`depth`) olarak tanımlıyoruz. Çoğu sayı birkaç aşamadan sonra palindrom halini alır. Verilen derinlik sayısı kadar işlemden sonra sayı hala palindrom değilse, özel sayı olarak ifade edilir.  Örnekler:

- `12` sayısı `1` işlemden sonra palindrom halini alır (aşağıdaki diyagramda **1 ok** var) ve dolayısıyla derinlik `1`'dir.

   ```mermaid
   graph LR;
     A[12] -->|12 + 21| B[33];
   ```
- `97` sayısı `6` işlemden (derinlik) sonra palindrom halini alır (diyagramda **6 ok** var).

   ```mermaid
   graph LR;
     A[97] -->|97 + 79| B[176] -->|176 + 671|847 -->|847 + 748|1595 -->|1595 + 5951|7546 -->|7546 + 6457|14003 -->|14003 + 30041|44044;
   ```
   
-  `98` sayısı ise `9` derinlikli bir işleme rağmen palindrom halini alamaz (deneyerek görebilirsiniz).  Bu nedenle `9` derinlik için bu sayı bir "özel sayı"dır.

Ödev kapsamında kullanıcıdan bir sayı (`number`) ve derinlik (`depth`) bilgisi istenecek ve sayının derinlik bilgisi kadar işlem geçirerek palindrom halini alıp almadığına bakılacaktır. Palindrom halini alırsa **`palindrom`**, değilse **`ozelsayi`** olarak ekrana yazılacaktır. Örnek ekran alıntısı aşağıdaki gibidir:

```sh
echo 98 9 | ruby main.rb
ozelsayi
echo 97 8 | ruby main.rb
palindrom
echo 97 4 | ruby main.rb
ozelsayi
```

**Not:** Örneklere dikkat ederseniz aynı sayı farklı derinlik değerlerine göre palindromik veya özel sayı olabilmektedir. Sayının tersini bulmak için hazır fonksiyon ***kullanmayın.***

---

**DİKKAT!  AŞAĞIDAKİ AÇIKLAMALARI OKUMADAN ÖDEVE BAŞLAMAYIN!**

1. Birden fazla Github hesabınız varsa ödevde tutarlı olarak sadece bir hesap kullanın.  Birden fazla Github hesabı
   üzerinden ödevin birden fazla kopyasını oluşturmayın.  Bu durumda olan depoları "Settings"e girerek "Delete this
   repository" butonuyla silmelisiniz.  **Aksi halde ödeviniz geçersiz kabul edilecektir.**

2. Programda istenen çıktıların büyük/küçük harf farkları ve varsa boşluklarla birlikte tam olarak açıklandığı gibi
   yazıldığına emin olun.

3. Dizinde bulacağınız [`main.rb`](./main.rb) isimli şablon kodda **sadece** `=== WRITE CODE ===` yazan bölgeyi
   düzenleyin. **Dosyanın adını değiştirmeyin veya (aksi belirtilmedikçe) başka bir dosya açarak düzenleme yapmayın.**

4. Şablon kodda kullanıcıdan veri girişi yapan satırlar (ör. `a, b = gets.chomp.split`) verilmişse **bu satırları olduğu
   gibi koruyun ve kendiniz veri girişi yapan bir kod yazmaya çalışmayın.**  Aksi halde programınız testlerde hata
   verecektir.

5. Depoyu açtığınızda ödev dosyalarını tarayıcıda veya (bu satırları okurken) `.` (nokta) tuşuna basarak Web üzerinde
   Visual Studio Code ile düzenleyebilirsiniz.

6. Depoda nokta ile başlayan dosya ve dizinlerde (ör. `.github`, `.vscode`) **düzenleme yapmayın**.  Bu dosyalara
   yapılan müdahaleler izlenmekte olup kurala uymayanların ödevleri geçersiz sayılacaktır.
