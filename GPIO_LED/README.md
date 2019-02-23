博文地址：[SimonLiu的ESP8266与AliOS Things 学习系列教程之三：点个灯吧 - GPIO输入中断和LED blink](https://blog.csdn.net/toopoo/article/details/86930422)<br>
本文涉及AliOS Things ESP8266 GPIO的三个方面：<br>
- GPIO输入输出配置
- GPIO中断配置
- GPIO输出电平设置
  
GPIO 配置
 * GPIO4: 输出
 * GPIO5: 输出
 * GPIO14:  内部上拉输入，检测下降沿中断
 *
期望结果:
 * GPIO4上的LED定时闪烁
 * GPIO5上的LED状态响应GPIO14上的按键输入进行状态切换