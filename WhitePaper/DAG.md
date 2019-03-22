# Section 3 DAG Technology



### Block DAG 
TODO: 用英文组织下这段话
"
Block DAG, 顾名思义就是账本的每一个节点是区块. 用账本的节点是区块还是交易本身并不严谨, 因为交易也可以看作是交易数为一的区块. 所以Block DAG代表的是一种完全不同的DAG模型, 也是一种狭义的定义. Block DAG要解决的其实是区块链的孤块率的问题, 即让区块淘汰并丢弃的区块也能贡献吞吐量. 比特币扩容, 最直观的思路就是提高出块率或者增加区块大小. 中本聪当然也会想到但是却没有这么做, 是因为这两者都会增加分叉率, 在比特币的最长链的竞争模型下, 高分叉率代表推翻最长分叉所需算力可能远不需要50%, 所以比特币是处于安全的考虑而通过牺牲扩容能力. 而Block DAG就是为了解决如何在不牺牲安全性的前提下提高扩容能力. 由于Block DAG是在经典的比特币的基础上进行的最简单和直观的扩容方案, 几乎没有改变比特币的任何设定, 即全节点通过算力自由参与而实现的完全去中心化, 50%安全性保证而区别于分片分层等其他扩容方案, 我们称之经典区块链设定. 而这种满足经典区块链设定的DAG协议统称为Block DAG协议"

Block DAG, as the name implies, each node of the ledger is a block. It is not rigorous whether the node of the ledger is a block or the transaction, because the transaction can also be seen as a block with one transaction. Therefore, Block DAG represents a completely different DAG model, which is also a narrow definition. Actually, what Block DAG wants to solve is the problem of the orphan block rate in blockchain, that is, the blocks eliminated and discarded can also contribute to the throughput. Bitcoin scaling, the most intuitive idea is to increase the block rate or increase the block size. Certainly, Nakamoto will think of it but he doesn't do it, because both of them will increase the fork rate. Under the longest chain competition model of Bitcoin, the high fork rate represents the power required to overturn the longest fork may not be far less 50%. So Bitcoin is for the sake of safety and sacrifice the scalability. Block DAG is to solve the problem of how to increase the scalability without sacrificing security. Since Block DAG is the simplest and most intuitive solution of scalability based on the classic bitcoin, there is almost no change to any setting of Bitcoin, namely, the whole node through the computing power of free participation realizes the complete decentralization, 50% security guarantee，which is different from other scalability schemes such as sharding and layering. We call it the classic blockchain setting. And this DAG protocol that satisfies the classic blockchain setting is collectively called the "Block DAG protocol".  

## Consensus
## SPECTRE  
### Birief Introduction
![An example of the voting procedure in the DAG for blocks x,y.](https://cdn-images-1.medium.com/max/1600/1*q82YuxF11M7LnxWWEkQzUw.png)

TODO: 5 rules
### Advantage  

比特币是一种由中本聪发明和部署的新型加密货币系统和协议。不幸的是，中本聪共识有严重的可扩展性限制：通过创建更大或更频繁的块来支持高交易吞吐量，需要对底层网络进行更强的假设，因此会导致更小的安全系数。  

Bitcoin is a novel cryptocurrency system, and an accompanying protocol, invented and deployed by Satoshi Nakamoto. Unfortunately, Nakamoto Consensus has serious scalability limitations: creating larger or more frequent blocks to support a high transaction throughput, and requiring stronger assumptions on the underlying network, hence smaller safety margins.   

而SPECTRE协议是一个即使在高吞吐量和快速确认时间下仍保持安全的加密货币的共识核心的新协议。在任何吞吐量情况下，SPECTRE具有达到对计算能力占比高达50%的攻击者的可恢复性（达到网络拥塞和带宽限制所定义的极限）。SPECTRE可以以任意高的区块创建速率运行，这意味着其交易仅在几秒钟内（主要受限于网络中的往返时间）确认。因此该协议不必像中本聪共识那样在安全性和可扩展性之间进行取舍。  

SPECTRE, a new protocol for the consensus core of cryptocurrencies that remains secure even under high throughput and fast conﬁrmation times. At any throughput, SPECTRE is resilient to attackers with up to 50% of the computational power (reaching the limit deﬁned by network congestion and bandwidth constraints). SPECTRE can operate at arbitrarily high block creation rates, which implies that its transactions conﬁrm in mere seconds (limited mostly by the round-trip-time in the network). 

SPECTRE相比于其他传统共识的优势在于它只需满足比传统共识所要求的更弱的属性。在传统模型中，任何两个交易之间的顺序必须由所有非损坏节点决定并同意。相反，SPECTRE只需满足诚实用户进行的交易。在作为货币的场景下，同时发布的两个冲突的支付只能由非诚实的用户创建，因此用户可以承担延迟接受这种交易而不影响系统的使用性。  

The strength of SPECTRE is the fact that it satisﬁes weaker properties than classic consensus requires. In the conventional paradigm, the order between any two transactions must be decided and agreed upon by all non-corrupt nodes. In contrast, SPECTRE only satisﬁes this with respect to transactions performed by honest users. In the context of money, two conﬂicting payments that are published concurrently could only have been created by a dishonest user, hence users can afford to delay the acceptance of such transactions without harming the usability of the system.   

接下来，将从以下几个方面进行阐述：  
Next, it will be explained from the following aspects:  

#### Fast comformation
#### High througput
#### Fully decentrialized
#### High extensibility
#### High security

### Total ordering and fast confirmation trade-off
HLC public chain reduces the delay of the block, and improve its throughput. But the high throughput leads to the high fork rate. The Nakamoto consensus is no longer applicable, so we chose the consensus of SPECTRE to support fast confirmation, based on which we introduced PHANTOM protocol to solve the weak liveness of SPECTRE protocol.

## PHANTOM
![PHANTOM](https://cdn-images-1.medium.com/max/1200/1*bjxmg-HgBF7I_0YmkEpoHg.png)

TODO: Total ordering to solve fair reward mechanism

## HLC Innovation
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

Miners are profitable and tend to pack the transaction with higher fees. This will result in high repetition rates of blocks. Repeated transactions will not contribute to the throughput. So we need to design an incentive mechanism to guide the miners, which makes them try not to pack duplicate transactions. Inclusive[https://www.cs.huji.ac.il/~yoni_sompo/pubs/15/inclusive_full.pdf] introduced a mechanism to split the transaction fee. In this way, if all the miners go to package a high-fee transaction, it may eventually cause the miner to only package the transaction with high transaction fee, but the income will decrease. Finally, through the game, everyone will randomly select the transaction from the memory pool to reach the Nash equilibrium. According to the data of the paper, the repetition rate can be controlled at around 30%.
 
Inclusive的交易平分方案实现起来比较复杂, 因为区块确认数是不固定的. 区块随时有可能被新产出的区块确认, 所以要实现这个逻辑得加许多的控制逻辑. 其次这样的设计其实是并没有激励用户去快速发布区块, 因为早点发布和晚一点发布, 都是可以平分到手续费. 此外, 简单地随机选取交易其实并不公平, 如果手续费高低被随机的概率都一样的话, 交易都会选择低手续费甚至发送垃圾交易, 也无法满足想要通过提高手续费得到快速确认的需求.  

The trasaction halving scheme of Inclusive is complicated to implement, because the block confirmed number is not fixed. The block may be confirmed by the newly generated block at any time, so it is supposed to add a lot of control logic to implement this. Secondly, this design, in fact, it does not motivate users to quickly release blocks. Because whether it is released early or later, it can be divided into fees. In addition, it is unfair to simply randomly select transactions. If the probability how much the fees is random, the transaction will choose a low fee or even send a junk transaction, nor will it meet the need to quickly be confirmed by increasing the fee.

所以HLC的方案是, 首先根据每笔交易的手续费加权随机选出想要的交易, 这样保证用户有意愿用更高的手续费吸引矿工去打包交易, 矿工的综合收益也提高了, 更有意愿去挖矿. 其次, 交易费只能被最早打包该交易的矿工所有. 交易所在区块的顺序通过PHANTOM协议来确定. 这样可以鼓励用户尽早地发布区块.

Therefore, HLC's plan, firstly, is to randomly select the desired transaction according to the weight of each transaction, so as to ensure that the user is willing to use the higher handling fee to attract the miners to pack the transaction, and the comprehensive income of the miner is also improved and they are more willing to mine. Secondly, the transaction fee can only be owned by the miners who originally packed the transaction. The order of the blocks in the transaction is determined by the PHANTOM protocol. This encourages the user to publish the block as early as possible.

为了保证区块顺序的稳定, 区块奖励需要等待100个区块才能被花费.   

In order to ensure the stability of the block order, the block reward needs to wait for 100 confirmed blocks to be spent.
 
