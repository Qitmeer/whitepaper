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
TODO:First Come First Get
 
