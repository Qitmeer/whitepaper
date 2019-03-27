# Section 3 DAG Technology
### Block DAG 
Block DAG, as the name implies, each node of the ledger is a block. It is not rigorous whether the node of the ledger is a block or the transaction, because the transaction can also be seen as a block with one transaction. Therefore, Block DAG represents a completely different DAG model, which is also a narrow definition. Actually, what Block DAG wants to solve is the problem of the orphan block rate in blockchain, that is, the blocks eliminated and discarded can also contribute to the throughput. To scale Bitcoin, the most intuitive idea is to increase the block rate or increase the block size. Certainly, Nakamoto will think of it but he doesn't do it, because both of them will increase the fork rate. Under the longest chain competition model of Bitcoin, the high fork rate represents the power required to overturn the longest fork may not be far less 50%. So Bitcoin is for the sake of safety and sacrifice the scalability. Block DAG is to solve the problem of how to increase the scalability without sacrificing security. Since Block DAG is the simplest and most intuitive solution of scalability based on the classic bitcoin, there is almost no change to any setting of Bitcoin, namely, the whole node through the computing power of free participation realizes the complete decentralization, 50% security guarantee，which is different from other scalability schemes such as sharding and layering. We call it the classic blockchain setting. And this DAG protocol that satisfies the classic blockchain setting is collectively called the "Block DAG protocol".  

## Consensus
## SPECTRE  
### Introduction  

SPECTRE, a new protocol for the consensus core of cryptocurrencies that remains secure even under high throughput and fast conﬁrmation times. At any throughput, SPECTRE is resilient to attackers with up to 50% of the computational power (reaching the limit deﬁned by network congestion and bandwidth constraints). SPECTRE can operate at arbitrarily high block creation rates, which implies that its transactions conﬁrm in mere seconds (limited mostly by the round-trip-time in the network). 

The strength of SPECTRE is the fact that it satisﬁes weaker properties than classic consensus requires. In the conventional paradigm, the order between any two transactions must be agreed upon by all non-corrupt nodes. In contrast, SPECTRE only satisﬁes this with respect to transactions performed by honest users. In the context of money, two conﬂicting payments that are published concurrently could only have been created by a dishonest user, hence users can afford to delay the acceptance of such transactions without harming the usability of the system.   

### Consensus

SPECTRE协议包含三部分：区块 DAG 的产生，挖矿协议，TxO协议。我们主要介绍一下其中的TxO协议。TxO协议为我们必须提供一种让节点解释DAG并从中提取一组已接受的交易的方法。  

我们描述TxO协议如何完成的之前，我们需要明确一些符号代表的意义及一些概念：

$x$,$y$,$z$ :块  

$G$ : 一个包含交易的（抽象的）公共数据结构，挖矿协议的结果，即账本。通常表示为$G = (C, E)$。这里，$C$表示块，$E$表示散列引用。我们将经常写成$z \in G$而不是$z \in C$。

$past(z, G) \subset C$ : 可从z到达的块的子集.这可以证明是在z之前创建的块。  
 
$future(z, G) \subset C$ : 可到达z的块的子集.这可以证明是在z之后创建的块。

$\prec $ : SPECTRE将这个关系扩展为G块中的完整关系。同时，这个顺序可以直接解释成G中的交易顺序，即块的顺序决定了块内包含的交易的顺序。
注：虽然我们有时可能会提到$\prec $好像它可以给所有区块排序，但是我们要强调$\prec $不一定是传递关系。 因为可能会存在一系列的区块是循环前置关系。

$virtual(G)$ : 一个假设的区块，可以被认为是代表节点尝试创建的下一个块，该节点当前观察到的DAG是G.  

区块的成对排序

SPECTRE的基础层涉及确定块DAG上的成对块之间顺序。 指定两个块$x, y \in G$. 为了确定是$x \prec y$还是$y \prec x$，我们将DAG的结构理解为一个抽象的投票。 每个块$z \in G$被认为是对区块对 (x, y)进行投票的投票者，并且它的一票是从DAG的结构中推断出来的。 我们用{−1, 0, +1}中的一个数字来表示一票，并且我们用$vote(z, G)$表示z对所有区块对的投票信息。 $vote_{x,y}(z, G) = -1$代表x在y之前$(x \prec y)$，$vote_{x,y}(z, G) = +1$代表y在x之前，$vote_{x,y}(z, G) = 0$代表是平票的即$vote_{y,x}(z, G) = -vote_{x,y}(z, G)$。

为了简化演示，我们也让$virtual(G)$参与投票。 回想一下，$G$的虚拟块是一个满足$past(virtual(G)) = G$的假设块。 $virtual(G)$的投票本质上表示整个块DAG的聚合投票。 对于任何$z \in G \cup {virtual(G)}$，z的投票基本规则如下：

1. 如果$z \in G$在$future(x)$但不在$future(y)$中，则它将投票给x（即，$x \prec y$）。

2. 如果 $z \in G$在$future(x) \cap future(y)$中，那么z的投票则简化为根据其过去集来递归确定，即将z的过去集视为当前DAG，z本身当作一个虚拟块，结果为$virtual (past(z))$的投票。如果这次投票的结果是平票，z可以用任意规则打破。（任意规则就是自定义的规则，比如说用区块的散列值，因为这个规则所有节点都是一样的，所以可能会造成误判，但是可以保证一致性）  

3. 如果$z \in G$不在任何一个块的未来集中，那么它将以与其未来集大多数块的投票相同。

4. 如果z是G的虚拟块，那么它将以与G中大多数块的投票相同。

5. 最后，（对于z等于x或y的情况），z投票自己在$past(z)$中的任何块之后，并且在任何$past(z)$之外的块之前。     

![An example of the voting procedure in the DAG for blocks x,y.](https://cdn-images-1.medium.com/max/1600/1*q82YuxF11M7LnxWWEkQzUw.png)  

> 一个简单的DAG上投票流程的例子。   
![An example of the voting procedure in the DAG for blocks x,y.](https://cdn-images-1.medium.com/max/1600/1*q82YuxF11M7LnxWWEkQzUw.png)

> 规则1： 块x和块6-8投票$x \prec y$, 因为6-8在x的将来集。 同样，块y和块9-11投票$y \prec x$, 因为9-11在y的将来集。 块12的投票根据在不包含块10,11,12的DAG上的递归调用得到。  

> 规则2: 块12既属于x的将来集也属于y的将来集，块10，11，12并不属于块12的过去集，所以块12的投票根据在不包含块10,11,12的DAG上的递归调用得到，即$virtual(past(block12))$  

> 规则4: 统计块12的过去集中各个节点的票数，发现投 $x \prec y$的有块x,6,7,8,投$y \prec x$的有块y,9。4比2，所以$y≺x$   

> 规则3: 块1-5均不在x或y的未来集里，则他们看各自将来集中的投票情况，块2会投块x，因为其未来集块x，6，7，8，12都是投块x；块5会投块x，因为其未来集投块x的有块7，8，12，投块y的有块9，11，3比2；3块会投块x因为其未来集投块x的有块x，6，7，8，12，投块y的有块y，9，10，11，5比4；块4的未来集投块x的有块x，5，6，7，8，12，投块y的有块y，9，10，11，6比4；块1显然投x。所以块1-5均投票$x≺y$  


直观的理解就是，第一条规则规定，一个诚实节点发布的区块的投票会获得高于对被暗中扣留的区块，因为诚实的节点不断为其未来集合添加新的区块。 
第二和第四条规则共同保证了会放大大多数人的投票，因为新的区块投票给了符合先前决定的区块，从而增强了该区块。 
第三条规则是最微妙的; 
基本上，它允许$past(x)$ 的区块（加上$future(x)$的之外的区块）投票反对y，以防y被长时间扣留。 
请注意，所有投票都遵守DAG的拓扑结构的规则：如果可从y到达x，那么所有块都一致投票$x \prec y$。


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
 
