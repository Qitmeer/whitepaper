https://llimllib.github.io/bloomfilter-tutorial/

a Bloom filter is a probabilistic data structure: it tells us that the element either definitely is not in the set or may be in the set.

The base data structure of a Bloom filter is a Bit Vector.

To test for membership, you simply hash the string with the same hash functions, then see if those values are set in the bit vector. If they aren't, you know that the element isn't in the set. If they are, you only know that it might be, because another element or some combination of other elements could have set the same bits. 