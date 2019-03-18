# Section 3 DAG Technology



### Block DAG 
TODO: 用英文组织下这段话
"
Block DAG, 顾名思义就是账本的每一个节点是区块. 用账本的节点是区块还是交易本身并不严谨, 因为交易也可以看作是交易数为一的区块. 所以Block DAG代表的是一种完全不同的DAG模型, 也是一种狭义的定义. Block DAG要解决的其实是区块链的孤块率的问题, 即让区块淘汰并丢弃的区块也能贡献吞吐量. 比特币扩容, 最直观的思路就是提高出块率或者增加区块大小. 中本聪当然也会想到但是却没有这么做, 是因为这两者都会增加分叉率, 在比特币的最长链的竞争模型下, 高分叉率代表推翻最长分叉所需算力可能远不需要50%, 所以比特币是处于安全的考虑而通过牺牲扩容能力. 而Block DAG就是为了解决如何在不牺牲安全性的前提下提高扩容能力. 由于Block DAG是在经典的比特币的基础上进行的最简单和直观的扩容方案, 几乎没有改变比特币的任何设定, 即全节点通过算力自由参与而实现的完全去中心化, 50%安全性保证而区别于分片分层等其他扩容方案, 我们称之经典区块链设定. 而这种满足经典区块链设定的DAG协议统称为Block DAG协议"



## Consensus
## SPECTRE
### Advantage
#### Fast comformation
#### High througput
#### Fully decentrialized
#### High extensibility
#### High security

### Total ordering and fast confirmation trade-off
HLC public chain reduces the delay of the block, and improve its throughput. But the high throughput leads to the high fork rate. The Nakamoto consensus is no longer applicable, so we chose the consensus of SPECTRE to support fast confirmation, based on which we introduced PHANTOM protocol to solve the weak liveness of SPECTRE protocol.
 ## Methodology
 ### Vision
 HLC's vision is always simple, we just want to build a practical and usable public chain based on our traditional value of blockchain - decentrailzed, secure and scalable. 

### Birief Introduction
![An example of the voting procedure in the DAG for blocks x,y.](https://cdn-images-1.medium.com/max/1600/1*q82YuxF11M7LnxWWEkQzUw.png)

TODO: 5 rules

## PHANTOM
![PHANTOM](https://cdn-images-1.medium.com/max/1200/1*bjxmg-HgBF7I_0YmkEpoHg.png)

TODO: Total ordering to solve fair reward mechanism

## HLC improvement
### Both liveness and fast confirmation
### Consenus algorithms efficiency
### Storage efficiency
### Transaction replication

## Award
### CoinBase
### Transaction Fee
TODO: To English
DAG 奖励机制
矿工都是逐利的, 会倾向于打包手续费较高的交易. 这样会造成区块的重复率很高. 而重复的交易不会贡献吞吐量. 所以我们需要设计一种激励机制, 引导矿工尽量不要打包重复的交易. Inclusive [https://www.cs.huji.ac.il/~yoni_sompo/pubs/15/inclusive_full.pdf] 推出了一种平分交易费的机制, 这样如果矿工都去打包高手续费的交易, 最终可能导致矿工如果只打包交易费高的交易, 收益反而会降低, 最后通过博弈, 大家会从内存池随机选择交易, 达到纳什均衡. 根据论文的数据, 重复率可以控制在30%左右. 

Inclusive的交易平分方案实现起来比较复杂, 因为区块确认数是不固定的.  区块随时有可能被新产出的区块确认, 所以要实现这个逻辑得加许多的控制逻辑. 其次这样的设计其实是并没有激励用户去快速发布区块, 因为早点发布和晚一点发布, 都是可以平分到手续费. 此外, 简单地随机选取交易其实并不公平, 如果手续费高低被随机的概率都一样的话, 交易都会选择低手续费甚至发送垃圾交易, 也无法满足想要通过提高手续费得到快速确认的需求. 

所以HLC的方案是, 首先根据每笔交易的手续费加权随机选出想要的交易, 这样保证用户有意愿用更高的手续费吸引矿工去打包交易, 矿工的综合收益也提高了, 更有意愿去挖矿. 其次, 交易费只能被最早打包该交易的矿工所有. 交易所在区块的顺序通过PHANTOM协议来确定. 这样可以鼓励用户尽早地发布区块.

为了保证区块顺序的稳定, 区块奖励需要等待100个区块才能被花费. 
 
