# 设计哲学
我们的目标简单而又艰巨 - 打造一条服务于伊斯兰经济的好用的公链. 
Halal Chain 的使命是服务于伊斯兰经济, 而目前能真正发挥区块链的技术价值的相对成熟的场景几乎都在金融领域, 也几乎都跟资产通证化的有关. 在我们看来, 目前区块链的应用落地最大的问题, 不是没有杀手级的应用,  至少区块链技术可以让金融领域的很多业务变得更有价值,  而是目前区块链的技术基础还有经济模型还是很难提供媲美于传统金融技术的体验. 所以我们的目标很简单, 打造一条服务于伊斯兰金融的好用的公链, 同时这个目标也很艰巨, 需要我们在技术设计上有较大创新.
 
## 理想设定
我们追求的理想设定, 就是在保证安全性的情况下做到可扩容, 其中安全性包括容错等级和去中心化等级.
具体而言, 就是在遵循中本聪设计的50%容错等级, 网络节点全部为全账本节点的设定下能追求尽可能高的扩容能力. 扩容能力, 容错等级和去中心化等级之间存在着一定的矛盾, 即所谓的区块链不可能三角,  理论上是没法调和的, 只能找到最好的平衡, 并去逼近物理上的极限. 公链在Halal Chain整个生态来说是承载整个价值的基础, 在网络的物理能力可以承载的情况下, 我们希望通过技术优化, 尽可能提供一个强健的公链, 在此基础上, 我们再考虑和多种扩容技术, 比如分片和分层, 结合, 以应对未来更加庞杂的业务场景.

安全性是区块链的基石, 经典区块链项目在没有找到更好的理论支持的情况下, 并且早期交易量不是太大的情况下, 只能是牺牲扩容能力. 比如说比特币的实际TPS不到5TPS, 以太坊不到10TPS. 在区块链高速发展的今天, 这样的速度完全无法满足支付的需求, 也是给影响用户最直观的体验上的问题. 目前主流的扩容方案主要分为分片, 分层, PoA 和DAG. 其中, 分片没有满足50%容错等级, 分层和PoA 没有满足网络节点都为全节点的去中心化等级, 容错等级和去中心化等级是安全性的基础, 在公链的物理扩容极限没有达到的情况下, 我们是不会去牺牲的. 而只有DAG是最符合我们追求的理想设定的扩容方案.

## 尊重经典
从业务出发, 在能满足核心业务的情况下, 尽可能使用经典成熟的技术. 比特币已经稳定运行了十年, 仍稳居市场的榜首, 足以证明其核心技术架构是经过验证的稳定可靠的. Halal Chain 公链是服务于伊斯兰金融, 比特币的UTXO的交易模型足以支持核心金融业务, 而备受争议的PoW也用事实证明其顽强的生命力和相对的公平性, 所以我们最终决定采用基于比特币的架构而非目前更加热门的以太坊的架构.

## 	大胆创新
在经典的技术无法满足核心业务的情况下, 我们会采用真正能解决问题的技术, 即使是有一定风险的新技术. 所以我们会采用目前还未被主流项目采用的SPECTRE和PHANTOM这类BlockDAG协议, 这是我们目前发现的最符合我们理想设定的DAG协议.
## 	简单可扩展
在Halal Chain的架构里, 每一级都实行单一职能原则, 只做好一件事, 并用尽可能简单的方案实现. 我们的公链只负责承载整个生态的价值流通, 所以采用尽可能简单的UTXO交易模型, 不会在这一层实现图灵完备的智能合约虚拟机. 智能合约上实现都是应用, 我们未来会在二层或者链下实现. 此外, 我们采用BlockDAG是一种在账本层扩容的技术, 虽然可扩容, 但是仍会受网络物理的带宽和机器的计算能力限制, 如果要进一步扩容, 就需要进一步地融合分片, 分层和PoA的技术, 而DAG工作在账本层, 能天然地跟这几类扩容技术进行很好的融合.

# 发行资产
Halal Chain针对伊斯兰金融特点, 从底层重新设计了发行机制, 确保满足伊斯兰教法:
## 问题描述

### 资产认证

全世界有18亿伊斯兰信徒, 占全球近1/4人口, 信徒把信仰融入了生活, 形成独有的宗教文化, 比如说要求食物是清真的, 再比如说伊斯兰金融是不允许有利息的. 区块链技术可信的价值交换机制让资产的流通变得空前发达, 越来越多的人愿意将他们的资产上链, 融入下一代的价值流通网络. 这对同样需要区块链技术赋能的伊斯兰金融提出了巨大的挑战: 区块链公链的核心是开放的, 允许任何人包括非伊斯兰信徒参与公链的价值建设. 但是伊斯兰金融业务是非常专业的问题, 必须由少数金融专家来认证. 目前基于已有的区块链公链的解决方案是无法调和两者之间的矛盾, 主要表现在如下方面:

采用中心化的共识
既然金融业务需要金融专家认证, 很容易想到的解决方案就是采用偏中心化或类PoA(Proof of Authority)的共识. 去中心化是Halal Chain作为公链追求的核心技术指标, 也是我们认为安全性的最重要的来源之一. 所以我们不会为了解决资产认证的问题而牺牲共识的去中心. 

通过算力或者股权投票机制
用算力或者股权投票看似是最公平的机制, 但是伊斯兰金融的认证是非常专业的问题, 算力或股权是掌握在普通用户的手里, 绝大多数用户不具备认证的专业能力, 容易产生错误的判断. 而且算力或者股权本质也是可以用资本来转化的, 资本较高的一方有可能出于经济利益的考虑而作出不符合伊斯兰金融规范的决定.  

### 价值锚定
目前主流的资产发行平台, 例如以太坊, 没有发行资产的门槛, 任何人都可以零成本的发行任意“市值”的资产. 首先造成了资产质量的良莠不齐, 不少没有任何价值为基础的资产通过包装就可以获得巨大的市值. 此外, 资产的滥发也造成了网络运算的负担, 因为任何交易都需要全体矿工验证并打包进帐本, 而网络成本的最终都会以手续费的形式转嫁给普通用户, 不利于网络长久健康地发展.

## 问题分析
### 资产认证
资产认证的问题在于, 目前已有的公链没有把计算的共识和应用的治理分离, 所以已有的方案要么造成中心化, 要么就造成专业问题得不到专业人士的解决. 区块链从技术角度来讲是一个不可篡改的数据库, 是无法去解决资产是否符合伊斯兰金融这么专业的问题. 所以我们需要将计算和治理分离, Halal Chain提供可靠的技术服务, 让用户相信在Halal Chain平台上的资产都是公开透明可追溯的, 即使是资产的发布方也无法侵占属于用户的私有资产. 同时也提供一套公开公正的监督机制去监督资产发布方和认证组织的行为.

### 价值锚定
价值锚定的问题在于, 资产的价值和基础货币之间其实没有纳入到同一个生态. 例如以太坊上的资产, 如果不考虑手续费的话, 其实和以太币可以没有任何关联, 所以任何实体都可以发布任意“市值”的资产. 理论上这个问题无法用技术去解决, 因为一个应用最终有多大的市值是无法确定的, 但是可以建立一套良性循环的锚定机制, 对自己资产有足够信心的发行方愿意投入更多锚定资产提高资产的信用程度, 而用户也有一个可量化的标准选择相对可信的资产. 此外锚定的价值也可以让用户有资产价值的预期.

## 解决方案

OP_TOKEN 是Halal Chain 参考了Bitcoin Cash平台发行代币(染色币)的方案OP_GROUP的思想, 并针对伊斯兰金融的特点重新设计的用于发行资产的指令, 具有支持资产认证, 资产价值锚定, 资产价值共享等特点.

### 相关概念

#### UTXO
UTXO 全称是Unspent Transaction Output, Halal Chain基于经典的比特币交易模型.  比特币没有账户, 用户只拥有一笔笔未花费的交易输出, 如图所示, 交易二来源于两笔交易分别为交易0的第二个输出和交易1的第一个输出, 总共为3个HLC, 输出为分别为2个1.5HLC, 如果这两笔输出没有被另外一笔交易花费, 则代表该交易有两笔UTXO, 如果这两笔都由某个用户持有, 则说明该用户有3 个HLC可以花费.


#### 脚本
用户之所以可以花费是因为, 交易的输出和输入分别存有一段不完整的比特币的脚本. 其中输出存放的是锁定脚本, 相当于一个锁住的宝箱. 花费时, 需要生成一笔交易, 交易的输入中存放的是解锁脚本, 相当于宝箱的钥匙. 解锁的方式就是, 把解锁脚本和锁定脚本连接起来组成一段完整的脚本, 依次从头到尾执行, 如果执行成功, 代表解锁脚本可以花费锁定脚本中的金额, 相当于钥匙把宝箱打开了. 

假设交易0 的第二笔输出的脚本如下
```
OP_DUP OP_HASH160 <Tx0’s Second Output Public Key Hash> OP_EQUALVERIFY OP_CHECKSIG
```

假设交易2 的第一笔输入的脚本如下
```
<Cafe Signature> <Cafe Public Key>
```

连接起来后为
```
<Cafe Signature> <Cafe Public Key> OP_DUP OP_HASH160 <Tx0’s Second Output Public Key Hash> OP_EQUALVERIFY OP_CHECKSIG
```

执行起来的大概的意思是首先验证交易2解锁脚本脚本中的公钥是不是和交易0的加锁脚本匹配, 然后再验证解锁脚本中的签名是不是和加锁脚本匹配, 如果都成功, 则交易验证成功, 矿工允许将该交易记录在区块中.

#### Color Coins
比特币脚本除了可以用于支付之外, 还可以通过通过代码区能存数据的特性, 在代码区写入资产发行的协议. 从而达到发行数字资产的目的.  发行的资产叫做染色币, 也叫做代币. 染色币的实现方案很多, 常见的做法是用OP_RETURN这条中断执行的方法, 这样就可以在OP_RETURN指令之后的代码区写入任意自定义的数据, 而不必担心会出现脚本解析错误, 因为脚本已经在OP_RETURN指令后结束运行了. 

OP_RETURN的特点是没有修改比特币的协议, 所以自由度很高, 不需要全网更新客户端, 也不会产生分叉的问题, 所以可以很快地部署. 缺点也显而易见, 矿工是无法理解染色币的协议, 所以无法去校验数据是否合法, 容易产生错误数据; 此外, 染色币需要特殊的客户端解析, 和主网的客户端并不兼容, 存在主网和染色币客户端之间误操作而造成数据破坏的风险.

#### OP_GROUP
OP_RETURN的方案更适合在已经成熟的区块链网络进行资产发布, 不用修改协议, 没有分叉的风险. 而对于新上线的网络, 由于没有分叉的风险, 更合理的方案是扩充协议, 这样保证资产从发布到流通到销毁等所有流程都能得到全网的安全检查. 

OP_GROUP是Bitcoin Unlimited的Bitcoin Cash参考实现的资产发布提案, 目前已经通过BU的评审, 但由于是协议级的扩展, 有较大的升级风险, 目前并未在BCH社区达成共识. OP_GROUP扩充了BCH脚本指令, 新增专门的用于资产通证化的指令OP_GROUP, 支持资产发行, 流转, 销毁等流程.

#### OP_TOKEN
OP_GROUP目前不支持资产认证, 因此Halal Chain针对伊斯兰金融的特点, 在OP_GROUP的基础上进行扩展, 引入了支持许可证机制的指令 – OP_TOKEN. 

### OP_TOKEN 设计

OP_TOKEN和常规OP_GROUP最大的区别在于, OP_TOKEN发行了一种特殊的通证, 叫做许可证. 许可证由伊斯兰金融专家或者金融专家认证的组织持有, 发行任何资产, 必须持有许可证. 许可证可以自由流通, 由于整个过程都是可以追溯, 许可证的交易双方都会非常慎重, 可以一定程度保证资产的合法性.
许可证(License)
发行任何资产, 必须持有许可证. 许可证在网络上线时由系统指定给由伊斯兰金融专家组成的委员会. 任何组织要发布资产, 必须先向委员会提出申请, 经过认证后, 委员会会颁发许可证给组织. 许可证也是一种通证, 可以流通, 流通过程可以追踪, 以监督许可证是否被合法地使用.
 

许可证(license) 全部来自于创世区块的coinbase 交易, 等交易成熟后(100个区块), 该coinbase 中的100个HLC全部转给100个预留的委员会地址, 由于一个HLC可以表示一亿个最小单位 聪, 所以每个委员最多可以颁发一亿张许可证.

生成许可证
```JS
{
     INPUTS
     {
         INPUT
         {
             PREVIOUS_OUTPUT (COINBASE of GENESIS)
             {
                 SCRIPT “DUP HASH160 [GENESIS_HASH] EQUALVERIFY CHECKSIG"
                 VALUE 10000000000 (100亿)
             }
             SCRIPT “[SIG] [GENESIS_PK]”
         }
     }
     OUTPUTS
     {
         OUTPUT
         {
             SCRIPT “[LICENSE_HASH] TOKEN DROP DUP HASH160 [COMMITTEE_1_HASH] EQUALVERIFY CHECKSIG"
             VALUE 100000000 (1亿)
         }
		… … (COMMITTEE 2~99)
         OUTPUT
         {
             SCRIPT “[LICENSE_HASH] TOKEN DROP DUP HASH160 [COMMITTEE_100_HASH] EQUALVERIFY CHECKSIG"
             VALUE 100000000 (1亿)
         }
         OUTPUT
         {
             SCRIPT "RETURN [DATA]" 
             VALUE 0
         }
     }
 }

```

颁发许可证交易

```JS
{
     INPUTS
     {
         INPUT
         {
             PREVIOUS_OUTPUT
             {
                 SCRIPT “[LICENSE_HASH] TOKEN DROP DUP HASH160 [COMMITTE_HASH] EQUALVERIFY CHECKSIG"
                 VALUE 100000000
             }
             SCRIPT “[SIG] [COMMITTE_PK]”
         }
     }
     OUTPUTS
     {
         OUTPUT
         {
             SCRIPT “[LICENSE_HASH] TOKEN DROP DUP HASH160 [ISSUER_HASH] EQUALVERIFY CHECKSIG"
             VALUE 1
         }
         OUTPUT
         {
             SCRIPT “[LICENSE_HASH] TOKEN DROP DUP HASH160 [COMMITTE_HASH] EQUALVERIFY CHECKSIG"
             VALUE 99999999
         }
         OUTPUT
         {
             SCRIPT "RETURN [DATA]" 
             VALUE 0
         }
     }
 }
```

发行资产(Issuance)
在申请到许可证后, 组织就可以用发布资产. 资产不能凭空产生, 根据资产的数量, 必须要染色等量最小单位的基础货币HLC. 例如, 组织A要发布100万枚山寨币, 用于A所在的山寨建设, 由于山寨币的最小单位是分, 一枚山寨币等于100分, 所以总共需要100* 10000* 100=10^8(一亿), 而一个HLC刚好等于一亿聪, 所以需要转化一个HLC. 

```JS
{
     INPUTS
    {
         INPUT
         {
             PREVIOUS_OUTPUT (1 LICENSE)
             {
                 SCRIPT “[LICENSE_HASH] TOKEN DROP DUP HASH160 [ISSUER_HASH] EQUALVERIFY CHECKSIG"
                 VALUE 1
             }
             SCRIPT “[SIG] [LICENSE_PK]”
         }
         INPUT
         {
             PREVIOUS_OUTPUT (1 HLC)
             {
                 SCRIPT “DUP HASH160 [COIN_HASH] EQUALVERIFY CHECKSIG"
                 VALUE 100000000
             }
             SCRIPT “[SIG] [COIN_PK]”
         }
     }
     OUTPUTS
     {
         OUTPUT
         {
             SCRIPT “[LICENSE_HASH] TOKEN DROP DUP HASH160 [ISSUER_HASH] EQUALVERIFY CHECKSIG"
             VALUE 1
         }
         OUTPUT
         {
             SCRIPT “[TOKEN_HASH] TOKEN DROP DUP HASH160 [PK_HASH] EQUALVERIFY CHECKSIG"
             VALUE 100000000
         }
         OUTPUT
         {
             SCRIPT "RETURN [DATA]"
             VALUE 0
         }
     }
 }
```

资产流转(Transfer)

资产可以自由流转, 跟基础货币基本相同, 唯一的区别是, 资产必须保证输入和输出是等量的, 也就是说矿工不会收取资产作为手续费. 允许一笔交易内有个不同的资产流转, 每个资产也可以有多个输入和输出, 只要保证每个资产的总输入和输出是等额即可. 
 
手续费
矿工只会收取基础货币作为手续费, 从协议的角度来讲, 手续费不是必要的, 但是会影响矿工记账的积极性, 从而影响交易的确认. 对于纯资产流转交易, 由于资产无法作为手续费. 可以增加一笔花费基础货币的输入, 让输出小于输出, 差价则作为矿工的手续费. 

资产交易
不同资产之间可以通过去中心化的形式进行原子交换, 相对于中心化交易所更加安全, 手续费更低. 根据场景的不同, Halal Chain 支持哈希时间锁的原子交换以及混币方案的原子交换. 

```JS
{
     INPUTS
     {
         INPUT
         {
             PREVIOUS_OUTPUT
             {
               {
                SCRIPT “[RMB] TOKEN DROP DUP HASH160 [ACLICE_PKHASH] EQUALVERIFY CHECKSIG"
                VALUE 100
               }
             }
             SCRIPT “[ALICE_SIG] 0X83 [ACLIE_PUBKEY]”
         }
         INPUT
         {
             PREVIOUS_OUTPUT
             {
               {
                SCRIPT “[USD] TOKEN DROP DUP HASH160 [BOB_PKHASH] EQUALVERIFY CHECKSIG"
                VALUE 20
               }
             }
             SCRIPT “[BOB_SIG] 0X83 [BOB_PUBKEY]”
         }
     }
     OUTPUTS
     {
         OUTPUT
         {
             SCRIPT “[USD] TOKEN DROP DUP HASH160 [ALICE_PKHASH] CHECKSIG”
             VALUE 20
         }
         OUTPUT
         {
             SCRIPT “[RMB] TOKEN DROP DUP HASH160 [BOB_PKHASH] CHECKIG”
             VALUE 100
         }

     }
 }
```

资产销毁(unmint)
资产是有等量最小单位的基础货币转换而发行, 同样, 资产也支持通过转换成等量的基础货币而销毁. 跟资产不会凭空发行一样, 资产同样也不会凭空消失. Halal Chain希望资产的用户能将资产作出价值, 不鼓励资产销毁. 所以只开放了资产发行方才有销毁权限.

```JS
{
     INPUTS
     {
         INPUT
         {
             PREVIOUS_OUTPUT
             {
               {
                SCRIPT “[TOKENHASH] TOKEN DROP DUP HASH160 [ISSUER_HASH] EQUALVERIFY CHECKSIG"
                VALUE 100
               }
             }
             SCRIPT “[SIG] [ISSUER_PUBKEY]”
         }
     }
     OUTPUTS
     {
         OUTPUT
         {
             SCRIPT “DUP HASH160 [COIN_HASH] EQUALVERIFY CHECKSIG"
             VALUE 100
         }
         OUTPUT
         {
             SCRIPT "RETURN [DATA]”
             VALUE 0
         }
     }
 }
```


# DAG
HLC 账本采用DAG技术, 降低区块了延迟, 从而提高吞吐量. 高吞吐带来的高分叉率, 中本聪共识已经无法适用, 所以我们选择了支持快速确认的SPECTRE的共识协议, 在此基础上我们引入了PHANTOM协议解决SPECTRE协议的弱活性的问题.

## Block DAG
### Block DAG 简介
DAG技术一点也不特殊, 相反其实是一种非常直观的扩容方案. 假设某人想提高比特币的吞吐量, 很容易想到的就是增加区块尺寸(BCH), 或者加快出块速度(莱特币). 比特币之所以没有这么做, 是因为这样会造成区块链分叉增多, 形成大家熟悉的图式区块账本结构, 也就是Block DAG(事实上链式账本也是一种特殊的DAG, 即分叉数为一的DAG). 根据中本聪共识, 只有最长的分叉才会胜出, 很明显在分叉很多的情况下, 推翻最长分叉其实已经不需要50%算力,所以这种方案是牺牲了安全性而提高的吞吐量. 中本聪因为安全考虑没有采用DAG作为账本, 并不代表Block DAG不安全, 只是当时他没有找到适合Block DAG的共识协议. 随着对Block DAG技术的研究深入, 越来越多的安全的Block DAG的协议发表, 包括GHOST, SPECTRE, PHANTOM, 以及最新的基于GHOST协议改进的CONFLUX. 其中作为全球最大的智能合约平台的以太坊, 采用的就是修改版的GHOST协议, 这也就是为什么以太能讲确认速度提高到15秒的重要原因.

### Block DAG 和 Transtional DAG
以太出于稳定考虑人为限制了GHOST协议的吞吐量, 造成Block DAG的技术并不被熟知, 而知名的DAG项目IOTA和ByteBall都采用的是交易型DAG, 即账本的每个节点是一笔交易而非一个区块, 造成许多用户以为只有交易型DAG才适合区做账本. 根据我们尊重经典, 大胆创新的哲学. 我们认为比特币经典的区块结构空间利用效率高(区块头), 长期以来也没有发现明显的问题, 所以我们沿用. 只是账本结构变了, 带来了新的安全问题, 所以我们才采用了较新的SPECTRE和PHANTOM协议. 简单来说Block DAG是在比特币区块链账本上的扩展, 但是解决了吞吐量的问题. 


## Consensus
SPECTRE 是DAGLabs推出的BlockDAG协议. 具有如下优点:

### SPECTRE 的优势
* 支持较高的确认速度, 可以达到秒级
* 支持较高的吞吐量, 吞吐量只受网络的物理参数限制, 例如带宽和节点计算能力
* 网络中所有节点都能参与, 没有特殊节点, 完全的去中心化
* 工作在账本层面, 能链上扩容技术比如分片和链下扩容技术如状态通道完美结合
* 跟比特币相当的50%算力安全保障

### 快速确认与线性排序的权衡
SPECTRE牺牲了交易线性排序的能力而换来了快速确认的能力, 而交易线性排序是基于状态的链上智能合约的基础. 根据简单可扩展原则, 我们主网的职能专注在价值流通和沉淀, 所以我们的账本是非状态的基于UTXO的支付模型, 因此采用支持线性排序的BlockDAG协议意义不是太大, 但支持线性排序的BlockDAG往往确认时间相对较长. 作为价值交换网络, 确认时间的速度对于用户体验来说至关重要. 当然智能合约所需的线性排序的能力在我们的架构中也非常重要, 根据我们的设计, 我们认为智能合约是属于应用级别, 而且计算复杂, 需要消耗非常多的计算资源. 为了保证主链的稳定, 避免热门应用影响主链的性能, 我们未来会支持二层的智能合约, 到时候会采用支持线性排序的协议.

#### 共识算法简介

![An example of the voting procedure in the DAG for blocks x,y.](https://cdn-images-1.medium.com/max/1600/1*q82YuxF11M7LnxWWEkQzUw.png)

SPECTRE解决双花交易的规则由如下四条组成, 假设区块x,y存在双花交易, 区块z为投票区块

* 如果区块z只在x的将来集, 而不在y的将来集中, 则z投票给x.
* 如果z同时在x和y的将来集中, 则z根据其过去集中大多数的投票结果来投票.
* 如果z既不在x的将来集也不在y的将来集中, 则z根据其将来集中大多数投票来投票.
* x,y如果互为祖先和后代关系, 则投祖先, 否则投自己.



### PHANTOM

![Stepwise examples of the clustering algorithm execution, taken from PHANTOM paper](https://cdn-images-1.medium.com/max/1200/1*bjxmg-HgBF7I_0YmkEpoHg.png)

PHANTOM 是DAGlabs为了解决SPECTRE协议无法线性排序的共识协议, 同时具备SPECTRE不具有的强活性, 具体说就是如果两笔冲突交易如果很快提交,可能导致两笔交易都无法安全确认, 即弱活性. SPECTRE的观点认为, 在账本模型下, 双花交易只会由作恶节点发布, 所以即使都无法确认也不会影响诚实用户. 但我们从用户角度来讲, 我们希望能做到体验的统一性. 所以我们决定结合PHANTOM,解决SPECTRE的弱活性问题.此外, 我们虽然不需要用到PHANTOM的线性排序来解决价值流通问题, 但是PHANTOM安全确认后, 其线性排序对于我们确定奖励顺序有重要价值.

## PHANTOM 协议简介
DAG的高并发性, 造成账本会有分叉, 分叉间由于没有继承关系, 是无法直接通过图的拓扑排序来排序. 但是一个网络的物理特性一般来说是确定的, 比如说网络绝大多数节点的带宽, 网络可以承受下的设定的出块速度, 加上容错级别(作恶节点的比例)可以估算出分叉的上限. 比如说比特币的分叉数为一, 以太坊为二, 等等. 

反映在账本上就是, 某个区块不能从图的继承关系直接得到先后次序的区块数量最多不会超过并发量, 以下简称上限. 所以一旦发现某个区块的无序区块数超过该上限, 则说明该区块是异常的, 有可能是网络临时拥堵, 也有可能是恶意扣留区块, 只要我们保证绝大多数用户是正常的, 账本中会形成一个最大的子图, 该子图的任意区块的无序区块数都不会超过上限, PHANTOM把该子图定义为蓝色集, 把不属于该集合的其他区块定义为红色集. 


![PHANTOM](https://cdn-images-1.medium.com/max/1200/1*bjxmg-HgBF7I_0YmkEpoHg.png)


如图所示, {A,B,C,D,F,G,I,J}是蓝色集, {E,H,K}是红色集, 可以看到蓝色集和红色集内内部任何区块最多只和另外三个区块之间的顺序是无法直接确定的, 但是蓝色集的规模比红色集大, 所以最终蓝色集中的区块认为是诚实的, 顺序会比较靠前, 红色区块被认为是作恶的, 顺序会比较靠后.

## 线性全序
![PHANTOM](https://cdn-images-1.medium.com/max/2000/1*Fgjcr4iLLNe2QH2ez-kTaA.png)
PHANTOM 支持所有区块的全排序, 即线性排序. 虽然HLC是基于非状态的UTXO交易模型, 但PHANTOM的线性排序仍然可以解决SPECTRE的弱活性问题以及通过顺序确定区块奖励的问题.


## Halal Chain 改进

配图

1.	弱活性
SPECTRE的快速确认只针对诚实的区块. 但在节点恶意快速发布双花区块的情况下, 有可能出现区块无法被确认的情况.

Halal Chain 是基于UTXO模型的价值交换网络, 双花交易虽说不会对诚实用户造成事实上的损失, 但是会影响用户的体验. 考虑系统体验和健壮, Halal Chain在SPECTRE上进行了加强, 引入了较新的Block DAG 协议 PHANTOM. PHANTOM 协议的理论确认速度相对较慢, 但是支持强活性, 也就是说即使遭受攻击, 也不太可能出现始终无法确认的情况. 

2.	效率

论文中SPECTRE的参考实现算法, 效率极低, 进行一次排序, 需要O(n^3)的, 其中n是区块数量, DAG出块速度很大. 一旦有冲突交易就会涉及到执行共识算法, 而网络每台机器都需要执行, 所以很有可能攻击者通过不断故意制造冲突交易, 拖垮整个网络. 

论文参考实现效率低的原因在于, SPECTRE需要统计每个区块的票数. 而每个区块的投票又依赖于其他所有区块. Halal Chain 优化了SPECTRE的排序算法, 把算法效率到了O(m^2), 其中m 是将来区块的数量, 规模很小, 而且计算量不受区块数量增加的影响.

3. 存储
Block DAG 据有极高的出块速度, 频繁的广播区块造成网络负荷非常大, 其次Block DAG区块交易的重复率较高, 也会造成带宽利用率的降低. xThin 广播区块时不会广播已经同步过的交易, 极大提高了消息传播的效率, 从而提高吞吐量.

Xtreme Thinblocks
 
In order to scale the Bitcoin network, a faster less bandwidth intensive method is needed in order to send larger blocks. The thinblock strategy is designed to speed up the relay of blocks by using the transactions that already exist in the requester's memory pool as a way to rebuild the block, rather than download it in its entirety. 

Differing from other thinblock strategies, “Xtreme Thinblocks” uses simple bloom filtering and a new class of transactions to ensure that almost all block requests only require a single round trip, which is essential for good performance on a system where transaction rates are steadily climbing and only a single threaded network layer exists. In addition, Xtreme Thinblocks uses a 64 bit transaction hash which further reduces thinblock size; in doing so a typical 1MB block can be reduced to a 10KB to 25KB thinblock.

Thinblock Relay Network: During the testing of this implementation the need to download blocks only from a specified node was required while at the same time allowing transactions from all nodes into the memory pool. This feature will also allow anyone to easily setup their own “thinblock relay network”. (see section Testing for setup). This might be of benefit until the time comes that thinblocks are more widely supported. 

## 奖励
Block DAG 和区块链在
### CoinBase
#### 成熟期
固定100个区块

### 交易费

#### 重复交易
Block DAG 的高孤块率带来高吞吐量的同时也带来了较高的区块重复率, 除了之前提到过重复率会降低网络带宽利用率, 还带来了交易手续费的问题. 矿工是趋利的, 会优先选择交易费较高的交易, 这样不仅造成低手续费的用户长时间不会被打包的情况, 也会提高区块交易的重复率. Inclusive 提出了一个博弈论的模型, 奖励会被所有打包该交易的矿工平分, 造成如果某个交易被多个区块打包的情况下, 矿工会有较高的风险得到较少的奖励. 
最终矿工会达成一个平衡, 采用
通过模拟, Inclusive 可以将重复率控制在30%左右.

Halal Chain 在此基础上, 做了调整. 
# 挖矿

挖矿算法跟Block DAG的关系
	Block DAG 是经典比特币的升级, 基于PoW的设定
	BlockDAG 协议模型是去中心的, 但是挖矿算法不公平, 其实是无意义的
为什么选择PoW 而非PoS
	物理世界和数字世界的唯一用算法实现的桥梁
	PoW是比特币已经验证了的可以工作的模式
PoW和浪费的关系
	浪不浪费要看提供的服务的能力


Blake2b 算法介绍

什么是blake2b算法？
blake2b是Blake2系列算法中的一个成员，其他还有Blake2s、Blake2x等。在MD5、SHA-1、SHA-2、SHA-3这几个广泛被采用的哈希算法中，MD5和SHA-1的哈希碰撞已被验证，所以MD5和SHA-1已在安全性要求较高的领域中被废弃。比特币采用的SHA-256是SHA-2系列算法中的一个，目前看还是安全的，但在当前算力大幅增长的前提下，它的安全性还需要时间来检验。SHA-3是比SHA-2安全性更高的算法，缺点是计算速度较慢。

Blake2系列算法可以提供比 SHA-3系列算法更高的安全性，同时在计算速度上面更快。下图显示了基于同样的额因特尔Skylake单核CPU的哈希计算速度对比（多核Blake2b速度更快）。



挖矿流程

这个图要介绍



矿池

Halal 跟矿池的关系

Halal 追求公平, 并不限制矿池的发展. 
与比特币矿池的区别
从垄断型矿池到服务型矿池
	Block DAG 公平, 矿工没有挖矿经济风险, 加入矿池没有必要性
	矿池有规模效应, 可以通过价廉物美的服务吸引非专业的矿池
Block DAG 物理极限
	门槛会不断提高, 直到非常普通的机器无法参与
	但是全网全节点仍然非常多, 至少保证算力前10000的机器可以参与挖矿
	 
 

# 生态

~~应用这块还是交给刚总写吧, 不知道怎么下笔.
~~

	区块链钱包是一个统一区块链资产管理的地方，不仅管理着用户的Token资产，还管理着用户的身份信息。随着代币种类的增加，整个区块链生态系统的完善，目前钱包不再单纯是存储代币、发送代币、参与众筹的工具，会从跟交易所、众筹项目打交道为主，逐步转向代币实现自身应用（DApp）用途为主。也就是说，以后的钱包除了具有原有的资产管理功能外，重点会集成基于公链的各种应用，使用户方便的访问基于区块链的各种DApp。
	HLC钱包将是满足上面功能的综合类的区块链钱包，其目标是：搭建一个基于HLC公链生态的DApp分发平台，汇集EOS钱包、行业应用、平台工具等诸多应用，提供数字资产管理、DApp分发、资讯行情等服务。将为用户提供DApp集合，为开发者搭建DApp分发渠道，打造一站式的HLC公链生态流量入口。
HLC钱包将有以下特点：
除支持HLC及其二级Token外，还支持包括BTC、ETH、ETC、BCH等多种主流token；钱包备份导入方式简单方便，一键添加数字资产，掌握余额/交易动向；支持数字资产转账，资金流通灵活便捷。
私钥本地保存，用户完全掌控私钥，操作安全可靠；提供多重签名技术保障和授权验证；助记词备份策略，多重签名防丢防盗；手机验证码、指纹、活体等多种验证方式。
网罗国内外区块链资讯行业动态；实时行情资讯，助用户掌握一手区块链动态；提供更加便捷的链上资产交易服务；支持多链一站式资产管理。
提供标准的API接口，方便其他第三方业务应用调用支付；为iOS/Android/H5提供全套支付接口方案。
后面陆续支持中、英、日、韩等主流数字资产市场的多种语言；目标是打造一款国际化的钱包应用。
另外，HLC钱包的开发大概分为四个阶段。
第一阶段：主要完成助记词、用户私钥、HLC Token 地址的本地生成及存储，HLC Token的转账及交易查询，及其他基本功能的开发。目前这一阶段的开发已经完成，第一轮内部测试也已经完成。下面为HLC钱包第一阶段截图。
第二阶段：添加对BTC、ETH等主流Token的转账及交易查询支持，添加资讯板块，展示国内外区块链资讯行业动态。目前对BTC的预研已经完成，正在进行集成开发。
第三阶段：添加对HLC 二级Token的转账及交易查询支持，添加基于HLC 稳定币，小额支付的等应用的功能实现。此阶段需要等测试网络上线后且稳定币开发时开始开发。
第四阶段：集成多语言支持，实时行情，更多的基于HLC的DApp应用接入等。此阶段需要根据第三阶段的开发状态进行计划。
区块链浏览器
	区块链浏览器实际上是一个查询区块链数据信息的web应用，所以，区块链浏览器是作为区块信息浏览的主要窗口，每一个区块所记载的内容都可以从区块链浏览器上进行查阅。通常，数字资产用户会使用它查询记录在区块中的交易信息，用户只要输入钱包地址或某笔交易ID，就可以很快查询到对应的交易信息。当然，区块链浏览器能做的不只是查询交易这么简单，它可以详细的查询每一个区块的确认过程和数字币的产生、分配过程，并且完整的记录了每个区块间的数字币流转情况，从而更加完整的、公开的披露了数字币的存量、增量、换手率等信息，唯一无法知道的就是每个区块背后的人是谁，这也是匿名性的一大特征。

