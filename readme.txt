(1)程式流程
>設定各種協定的header
>抓取網路設備pcap_lookupdev()
>獲取設備ip與網路遮罩pcap_lookupnet()
>打開網絡接口pcap_open_live()
>設定過濾(filter) pcap_compile() + pcap_setfilter()
>捕獲多個封包pcap_loop()
>用callback()處理所獲取的封包

(2)功能實作
callback()處理封包:

使用設定好的各種協定header
(Ethernet、IP、TCP、UDP header)

計算IP header的位移量(offset)
獲取IP位址 以及
協定種類資訊(TCP or UDP)

根據該協定種類進行特定的header offset計算
並獲得port號碼

運用time_t形態變數存取header的時間
用localtime()轉換成struct tm的形式
最後用strftime()轉換成string
印出time

(3)資料結構
各種協定struct...

(4)期望加分
N/A