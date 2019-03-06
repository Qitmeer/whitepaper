# Section 3 DAG Technology

## Public Chain
### Introduction
HLC public chain is a common block DAG framework, it seperates consensus layer, which is usually mutable in different scenarios,  from foundamental and is open to developers. 
## Methodology
### Vision
HLC's vision is always simple, we just want to build a practical and usable public chain based on our traditional value of blockchain - decentrailzed, secure and scalable. 
### What problem ?
Bitcoin just passed her 10 years birthday without severe problems, the most urgent issue is sacalability. The current average transaction rate of bitcoin is lower than 5, as a global payment solution, this performance is far behind our expectation, not to mention that people find the underlying technolgy blockchain - a  dectrentrailzed temper-proof ledger - might solve trust problems in a large number of industries. 

The other problem is the trend of centralization. Bitcoin was born with decentralization, which is the main source of its security. You may imagine some blockchain had a really high hash power threshold, say 99%, but was controlled in just a few hands, so their high security threshold didn't mean anything if we had broken down these owners. 

Current bitcoin is against its original will and is controlled in a small bunch of mining pools, the top 5 pools take up the 90% of network's hash power. I don't want to argue here if they have the motivation to collude with each other to cheat the network or whether the cost of hackers to destroy these pools would make them profitable or not. We just think it deviates our traditional blockchain value, so we need make some change.

### Why block DAG?
Our vison is simple, to truly achieve that is not that simple. Serveral ways to make blockchain scalale, even infinitely scalable. The intuitive solutions are mainly consists of sharding, off-chain and POA and DAG. We will explain why we choose DAG as our first option, at least on public chain side.

### Balance first or scalability first
HLC  appreciates all kinds of cryptotech,  so there are various solutions along the HLC architect, including POA or pemissioned solutions. We have principles on every layer of the architect, for public which is the foundation,  decentralization and security theshold are our basic principles. So POA-like or pemissioned solutions like DPOS and PBFT are not suitable. 

Sharding can divide computation into small groups (shards), so transactions are able to be processed concurrently. Off-chain solutions like Plasma, Lightning Network add a second layer to the chain, which undertakes most of the computation. The two solutions can reach to theoreodical infinite scalability and we will incoperate them on our dApp layer, but we consider they are independent scaling solutions and can empower any existing blockchain implementation. Before we incorpate these solutions, we need make sure our chain itself is scalable. 

DAG is the most promosing solution we have found. Actually there is no essential difference between blockchain and DAG. Essentially, blockchain is the special case of DAG when transaction rate is low. Likewise, DAG is the common case when transaction rate of blockchain is considerablely high. So if we could exploit the potential scalability of blockchain or DAG itself, then we will have a strong base when we incoporate the compensary solutions like Sharding , off-chain or POA solutions.

### Difficulties of DAG
It is intuitive to improve scalability by increasing the block rate, let's say 1 block/second or enlarge the block size, e.g. 1G/block. So why didn't Satoshi do that? It's all because high transaction rate will lead to high forks rate. By Nakamoto consensus - the longest-chain rule - the longest chain won't accumulate 50% hash power, which means it is prone to be overrun.

So we could know that DAG and blockchain is essentially homologous and the main cause that prevent DAG from prevalency is the DAG-compatitble consensus algorithms or  protocols. More and more researches and projects dedicate on DAG protocols. PHANTOM, SPECTRE and Conflux are the most farmous block

### Block DAG and Transactional DAG
TODO: Difference between HLC and IOTA 

## Consensus
## SPECTRE
### Advantage
#### Fast comformation
#### High througput
#### Fully decentrialized
#### High extensibility
#### High security

### Total ordering and fast confirmation trade-off
TODO: fast confiramtion over total ordering for better user expeirence
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
 
