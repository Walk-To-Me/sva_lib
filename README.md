# sva_lib

OVL 2.8.1（April 2014）源码与中文 checker 使用手册。包含 **55 种 V2 checker**、**33 个旧版 `assert_*` 兼容接口**和 **88 份 SystemVerilog 接线模板**。

## 阅读手册

克隆或下载仓库后，用浏览器打开根目录的 [`index.html`](index.html)。页面支持离线搜索和分类浏览；GitHub 文件页只显示 HTML 源码。也可以在仓库根目录执行 `python3 -m http.server 8000`，然后访问 `http://localhost:8000`。

- [分类目录](index.html)
- [公共参数、编译宏与 Formal 接入指南](common.html)
- [手册与实现差异、常见误用](errata.html)
- [旧版接口索引](legacy.html)
- [官方 LRM](sources/docs/ovl_lrm.pdf)
- [机器可读 checker 清单](reference/catalog.json)

每个 checker 页面包含语义与触发时机、完整参数和默认值、端口、合法/违例场景、接线模板、formal 注意事项、SVA 属性及带行号的源码。

## 分类

| 类别 | V2 checker 数量 |
|---|---:|
| 布尔条件与事件采样 | 5 |
| 位编码、互斥与数据完整性 | 12 |
| 数值范围与变化步长 | 7 |
| 周期、窗口与稳定性 | 11 |
| 状态转移与寄存器传递 | 5 |
| 握手、仲裁与事务 ID | 5 |
| FIFO、栈与存储器 | 6 |
| 覆盖采集与交叉覆盖 | 4 |

33 个旧版接口与相应 V2 模块共享检查语义，不另计为 33 种新 checker。

## 目录

```text
sources/       原始 OVL 源码、各语言后端及官方 PDF
checkers/      55 个 V2 checker 的中文说明
legacy/        33 个旧接口的中文说明
examples/      88 个命名参数/端口连接模板
reference/     参数端口清单、SHA-256、验证记录、带行号源码页面
assets/        离线网页样式
```

`sources/psl11 -> ./psl05` 和 `sources/sva31a -> ./sva05` 保留上游兼容符号链接。Windows checkout 若不支持符号链接，这两个入口可能显示为包含目标路径的文本文件；直接使用实际 `psl05/` 和 `sva05/` 目录即可。

## 使用与验证边界

- 原始 406 个普通文件与发行归档逐字节比对一致，SHA-256 见 [manifest](reference/manifest.json)。原始版权声明保留。
- 手册已检查模块覆盖、内部链接以及模板端口；[检查记录](reference/validation.json)记录的是文档检查，不是 RTL 证明结果。
- `examples/*.sv` 是接线片段，**不是独立 testbench，也没有逐项编译或形式证明**。需按设计配置宽度、延迟、时钟、复位和功能开关。
- 本手册重点对照本版 SVA 实现，不保证其他后端、版本和所有参数组合行为相同。
- 特别注意：`ovl_code_distance` 的 SVA 使用汉明距离；部分 SVA wrapper 的 `fire` 绑零；多端口 FIFO 和 memory 的数据检查默认关闭。详见各 checker 页面。

## 来源

上游：[Accellera OVL](https://www.accellera.org/downloads/standards/ovl)，归档 `std_ovl_v2p8.1_Apr2014.tgz`。中文文档于 2026-11-08 整理；仓库于 2026-11-09 汇总。原始代码及文档的权利声明见 [NOTICE](NOTICE.md)，本仓库没有为上游内容重新指定许可证。
