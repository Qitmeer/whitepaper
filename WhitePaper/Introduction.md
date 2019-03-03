# Introduction
## Goal
Simple but hard: a usable public blockchain serving for islamic bussiness. 

## Ideal setting
A public chain has various performance metrics, the most of which we care about are confirmation time, security including decetrialization degree and faulty tolerance threshold and high throuput. Specificly, we are persuing:
### Confirmation time: order of seconds
Confirmation time is the waiting time when user has high confidence that a transaction being confirmed permanently, which means it can not be overun by malicious users. Confirmation time is the most important  factor in terms of user expirence, people don't have patience to bear long time confirmation. Comparing to bitcoin, we need to wait for 6 blocks i.e. 1 hour to reach secure confirmation. HLC is leveraging the fast confirmation feature in SPECTRE protocol and would be able to achive promising confirmation in order of seconds, meaning less than 1 minute, even less than 10 seconds when there is no active attack.

### High security
#### Decetrialization degree: fully decentrialized
Decetrialization is the soul of a public blockchain because this is what the trust comes from for an fully autonomous system. Numbers of projects sacrifice their dectrialization to gain better throughput because of less consensus workload. We deem this is a risky trade-off becuase less nodes to participate in consensus would bring higher possiblility to be targeted by attackers and prone to make collusion. HLC's consensus protocol SPECTRE is fully decentrailized, so all nodes have full ledger and there are no super nodes.
#### Faulty tolerance threshold: 50% 
Faulty tolerance is refering the percentage of incapable nodes: including malicious nodes and non-operational nodes. For an autonomous network, it obeys the marjority law, so 50% would be the highest standard. HLC has the same 50% faulty tolerance threshold with bitcoin, so we can provides as much security as bitcoin.

### High throughput: order of thousands
Throughput is a repsentative metric of scalabilty, also it is a strong factor affecing practical scenarios. Bitcoin and ethereum don't scale, which have only 7 TPS and 15 TPS in theory. As a global value transfer network, such low throughput limits the vairious applications. HLC is using Block DAG as our ledger underlying data structure and it could provde a conservative estimation of at least one thousand transaction per second throughput to meet most applications on blockchain so far.

## Design Principles
Blockchain has a big picture and we think that it requres an architecture to undertake. The foundation of Blockchain is value transfer, so we firstly focus on this point and make it better than all public chains so far, then on top of that, we will extend it with much functionalities like virtual machines for smart contracts.
### Respect classic
Bitcoin has various problems so far, like scability, like centralization due to monopolized mining pools. However, most of its mechanisms are long time proved robust and promising. So we followed most of its classical designs, like UTXO, like Proof of work, etc. and build our public chain on based on bitcoin model.
### Embrace innovation
Bitcoin is undoutly not perfect. As we just mentioned, scability and centralization, in addition, long confirmation time is also a big problem. So we are bold in new Block DAG protocols, SPECTRE and SPECTRE, to solve those problems.
### Simple and extensible
The scenarios in blockchain are complex and we won't solve all of them in a single complex system, which is probably unmaintainable. Instead, we design an extensilbe architect, each layer of which is simple enought to solve only a core problem. Moreover, communications are through flexible interfaces between layers. For instance, public chain is a strong foundamental value transfer network and we will make off-chain smart contracts solution on top of it. Another case is we are using block DAG to gain suffienct scalabilty for current application scenarios, since it is a leger tech, it natually could combine Sharding and layer 2 scalabilty solution to provide further scalability.



