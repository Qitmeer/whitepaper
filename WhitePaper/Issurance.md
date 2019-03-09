# Section 2 Asset Issuance
Individuls or organizations are able to issure assets on HLC to increase the liquility and offer finicial services. The HLc solution is reliable, user-friendly and practical especially in the field of Islamic economy and finance.
The main efforts in Islamic economics so far has been to create new forms Shariah compliance instruments to operationalise Shariah and ethical values into the current conventional economic system and financial services products. While this is crucial to sustain the global economy as it is today, the Islamic economics needs to develop new strategies to cope with the next economy, which starts with a clear and deliverable vision of a new world economy. And the new vision of a new world economy will be driven by those who embrace innovation that will build the future. 

However, it is necessary to look at the main building block to enable trust in impersonal financial transactions in a highly globalized society. This innovation called the “blockchain” will play a crucial role in boosting the Islamic financial sectors in all its segments which include banking, insurance, Capital market, Zakah and Waqf management. Addressing the digital revolution that is happening right now will foster competitive advantage for the Islamic economy and finance industry. This innovation is in accordance with Shariah rules and principles
The blockchain lets people who have no particular confidence in each other collaborate without having to go through a neutral central authority. Simply put, it is a mechanism for creating trust. Within this open ledger system, the blockchain offers an inherent level of trust for the user, eliminating the need for the middleman and mitigating the risk of human error. Justice and creditworthiness has been emphasized in the Holy Quran in Surat al Nisa which Allah says: 
O you who believe! Stand firmly for justice, as witnesses to Allah, even if against yourselves, or your parents, or your relatives. Whether one is rich or poor, Allah takes care of both. So do not follow your desires, lest you swerve. If you deviate, or turn away—then God is Aware of what you do” (4:135)
In the blockchain transaction, it is publicly accessible log of transactions ensures that the data is protected against tampering and revision, and it is virtually impossible for individuals to modify or replace parts of the blockchain secretly. The need for transparency, justice is, above all, an important Sharī`ah consideration in blockchain transaction. Any form of concealment, fraud or attempt at misrepresentation violates the principles of justice and fairness in Sharī`ah as mentioned in the Qur’an in Sūrah Al-Mutaffifin: 
Woe to the defrauders. Those who, when they take a measure from people, they take in full. But when they measure or weigh to others, they cheat. (83: 1-3)
A full copy of the blockchain contains every transaction ever executed, making information on the value belonging to every active address (account) accessible at any point in history. Every block contains a long reference number or hash of the previous block, thus creating a chain of blocks from the genesis block to the current block. The below paragraphs explain the concept of blockchain and how a transaction is recorded on the blockchain, based on the cryptocurrency protocol.
 

The HLC public chain platform is one of the latest underlying technologies based on Directed Acyclic Graph which has been defined as Blockchain 3.0 technology. The DAG involves and supports quick transactions, and is friendly to small payment. This innovation shows that there is correlation between revealing civilization and blockchain consensus, which is transparency, justice, creditworthiness, trust and witness described in the Holy Quran and shared by the whole humanity. The public blockchain could act as a complete set of ecosystems to support start-ups in the Islamic digital economy and beyond. 


## Asset Compliance and Applicable use cases on HLC public chain
### Asset compliance 
There is a contradiction between the openess of public blockchain and the compliance of assets issued on it. Blockchain is an autonomous peer-to-peer network, so there is no central authority to authorize who can join and leave. However, for a specific application scenario, we have to make sure the assets we issue is compliable on local law, saying, Muslics don't eat pork by their faith, so if someone wants to sell foods to Islamic market, how could he to convince his customers. 
### Value relevance
All the current assets issurance platforms, like ethereum, don't have a threshold to issure assets. So people could create assets whatever "market value" they want. Firstly it makes users hard to tell which asset is valuable or just a spam; secondly, abuse issurance increases the computation load and finally user will have to pay for it in the form of transaction fees.

## Problem analysis
### Asset compliance 
The problems of asset compliance is that the current solutions don't seperate application governance from consensus. Public blockchain itself is just a temper-proof ledger or database, so it is able to provide trustful computation services, which means the service will deliver what its code promises, so we could deem it as a technology problem. However, application governance is a bussiness problem and should be managed by the users rather than miners or developers. 
### Asset relevance
The cause of asset relevance problem is that the value of asset (tokens) and underlying currency (coin) don't  enter in a unified ecosystem. For instance, some token could be no connection with the ETH coin. In theory, this problem cannot be solved because we cannot estimate the market value of one toke, however, at least we should offer a benign mechanism that make tokens related to the coin, so it will encourgae the issuer to devote more value to gain more their customer's trust.
# HLC Technical Solution
OP_TOKEN is based on OP_GROUP, a referenced solution of issuring assets on Bitcoin Cash, and redesigned to fit various practical scenarios with unique features like asset compliable and value relevent.

## Related concepts
### UTXO
UTXO represents Unspent Transaction Output. One transaction has multiple sources and destinations, we call them as inputs and outpus. There are no accounts in HLC, what users have and spend are a bunch of unspent transaction ouputs and we could get  balance by summing up them. 

### Script system
The mechanism behind how users spend their UTXOs is to execute a special script. The output stores a half of the script and we have to present the other half and combine both to verify if we could spend the money. The former half is called locking script, like a locked treasure box, and the latter is unlocking script, like the only key to the box.

### Color coin
Color coin is a class of methods to represent assets on top of the blockchain, so it can leverage the temper-proof capibility of blockchain. It is like an organization issues their conference tickets with cash to make sure the tickets cannot be forged. There are a lot of ways to implement color coin and the most common way is to use a special script operation - OP_RETURN - to interupt script execution early, so we can add information of the assets after it without violating the script validation.

### OP_GROUP
The OP_RETURN scheme is more suitable to apply on mature blockchain since it doesn't change the underlying blockchain protocol and won't risk forking. However, the weakness OP_RETURN is that miners cannot verify its protocol so there would be some security risks.

OP_GROUP is a proposal of assets issurance  on Bitcoin Cash (BCH) from Bitcoin Unlimited (BU) and has been approved by BU. OP_GROUP supports token issurance, tranfer, destroy, etc. Since OP_GROUP is an extention to BCH script sytem,  it is part of BCH protocol and can be verified by miners, which is more reliable.

### OP_TOKEN
HLC extends OP_GROUP, i.e. OP_TOKEN, to support assets authentication.

## OP_TOKEN Design
There is a special token named LICENSE in OP_TOKEN. Licenses are held by renowned expects or organizations with public credibility. Any entitity planing to issue a token needs to be warranted a license. Since license is also a token, it is able to be transfered between peers. However, license transfer can be tracked through transaction history, so the originator would be very cautious in case transfering to a wrong hand.

### Issue a license
Licenses are all generated in genesis block and distribted to 100 preserved committe members. One smallest unit of HLC (SAND) represents a license,  one block has 100 HLC,  1 HLC= 10^8   SAND , so we have 10 ^10 license in total, which is sufficient for asset issurance.

### warrant a license
Oraganizations must be warranted a license to issue assets. They can request license from any committe member. Once approved, they would receive a special token transfer from the commitee member and the token is the license.
### Issurance assets
Once warranted a license, organizations are able to issue assets. Assets cannot be built from the air, they required equal amount smallest unit (sand) of HLC to be converted. We also call the process as token mint. Just like to mint a gold coin requires the same weight of gold sands, tokens need same amount HLC sands. The advantage is not only that the token has a value support by underlying currency but also that all tokens and HLC are invovled in the same ecosytem, which would improve the liquidity and make whole network healthier.

### Transfer
Assets can be transfered between parties. Moreover, we could transfer mulitple assets within one transaction. The transaction needs to ensure the  input sum of each asset equals the output sum of each asset. 


### Unmint
In addition to mint token, we can unmint token. Like we cannot build token from nothing, we cannot destroy tokens into ashes, instead, we melt  tokens into HLC. Also, tokens can be melt into the same amount of HLC sands. So, tokens have minimum value sustain. 

HLC encourages token holders to increase their token values rather than unminting them. But there are some scenarios to make unminting practical, such as stable coins. So, HLC only allow the token issuer to umint tokens.