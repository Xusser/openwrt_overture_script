# openwrt_overture_script

用于overture的openwrt服务

## Usage

**Upstream server configs in */root/overture/DNSCheck.sh* and */etc/init.d/overture* should be set correctly**

```bash
chmod +x /root/overture/DNSCheck.sh
chmod +x /root/overture/overture-linux-arm
chmod +x /etc/init.d/overture
/etc/init.d/overture enable
/etc/init.d/overture start
```

