# openwrt_overture_script

用于overture的openwrt服务

## Usage

**位于 */etc/init.d/DNSListener* 和 */etc/init.d/overture* 的参数应正确设置**

```shell
chmod +x /root/overture/overture-linux-arm
chmod +x /etc/init.d/DNSListener
chmod +x /etc/init.d/overture
/etc/init.d/DNSListener enable
/etc/init.d/DNSListener start
/etc/init.d/overture enable
/etc/init.d/overture start
```

