
# Section 3 DAG Technology
### Block DAG 
Block DAG, as the name implies, each node of the ledger is a block. It is not rigorous whether the node of the ledger is a block or the transaction, because the transaction can also be seen as a block with one transaction. Therefore, Block DAG represents a completely different DAG model, which is also a narrow definition. Actually, what Block DAG wants to solve is the problem of the orphan block rate in blockchain, that is, the blocks eliminated and discarded can also contribute to the throughput. To scale Bitcoin, the most intuitive idea is to increase the block rate or increase the block size. Certainly, Nakamoto will think of it but he doesn't do it, because both of them will increase the fork rate. Under the longest chain competition model of Bitcoin, the high fork rate represents the power required to overturn the longest fork may not be far less 50%. So Bitcoin is for the sake of safety and sacrifices the scalability. Block DAG is to solve the problem of how to increase the scalability without sacrificing security. Since Block DAG is the simplest and most intuitive solution of scalability based on the classic bitcoin, there is almost no change to any setting of Bitcoin, namely, the whole node through the computing power of free participation realizes the complete decentralization, 50% security guarantee，which is different from other scalability schemes such as sharding and layering. We call it the classic blockchain setting. And this DAG protocol that satisfies the classic blockchain setting is collectively called the "Block DAG protocol".  

![](https://cdn-images-1.medium.com/max/1600/1*AIn97mEZKvgcrZn8SmXRzw.png)

From the diagram, we can see every block confirms all the unconfirmed blocks, i.e. tips, and all the blocks that can be reached from one block are deemed prior to this block.

## Consensus
HLC adopts Hybrid consensus that combines SPECTRE and GHOSTDAG in order to achieve fast confirmation and  high throughput. 

## SPECTRE  
### Introduction  
SPECTRE is a block-DAG based protocol  that achieves fast comfirmation and high throughput with 50% attack resilience.  SPECTRE guarantees safety, which means  a transaction is unlikely to be reverse once it is accepted. Also, SPECTRE guarantees fast confirmations for honest users rather than all users, so it is deemed as weak liveness.

There is a trade off between liveness and fast confirmation, SPECTRE prioritize the latter since weak liveness only affects maclicious users. SPECTRE is built for payment model,  double spend can only be initiated by malicious users therefore it is only  likely to make their transactions delayed indefinitely.

### Consensus
SPECTRE is built for stateless transaction model, so there is no need to gain a linear order from all the blocks, it is only need to  apply a pairwise ordering on two conflicting blocks. 

SPECTRE employs a voting algorithm to decide which block wins, suppose block x has a conflicting transaction with another transaction in block y and block z is voting on them with following rules:

1. if z is only in x's future, z votes x in favor of y, denoted as x<y, vice versa.
2. if both x and y are in the past of z, then z follows the majority votes in its past.
3. If neither x nor y is in the past of z, then z votes according to the  majority votes in its future.
4. Both x and y vote for themselves unless one is in the past of another.


An example on how a new block, number 12, votes:
![An example of the voting procedure in the DAG for blocks x,y.](https://cdn-images-1.medium.com/max/1600/1*q82YuxF11M7LnxWWEkQzUw.png)


>  according to rule 4 and 1 x, 6, 7, 8 vote $x \prec y$, y, 9, 10, 11 vote $y \prec x$
> according to rule 2 rule 2, 12 votes according to its past, since not all blocks of its past have voted,  we change global view to block 12's local view, which means block 10 and 11 are excluded
> according to rule 3, block 5 votes $x \prec y$, since the majority votes of its future vote in favor x over y, that is  7, 8 over 9.  Note that current view is block'12 local view and block 11 is exculded so we cannot take its vote.
> block 1~4 vote $x \prec y$ according to rule 3

Now all the blocks in block 12' past have votes, 10 votes on x over 2 votes on y, so block 12 follows the majority and votes $x \prec y$ as well.

## PHANTOM
As we just explained, SPECTRE's weak liveness won't affect honest users.  

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
 
