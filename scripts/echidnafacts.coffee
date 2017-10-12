# Description:
#   Provides a fact about echidnas.
#
# Commands:
#   maxbot echidna fact - provides a fact about echindas.
#
# Author:
#   Max Philips

facts = [
  "Echidnas, sometimes known as spiny anteaters, belong to the family Tachyglossidae in the monotreme order of egg-laying mammals.",
  "The four extant species of echidna, together with the platypus, are the only surviving members of the order Monotremata and are the only living mammals that lay eggs.",
  "The diet of some species of echidna consists of ants and termites, but they are not closely related to the true anteaters of the Americas. ",
  "Echidnas live in Australia and New Guinea.",
  "Echidnas evolved between 20 and 50 million years ago, descending from a platypus-like monotreme. This ancestor was aquatic, but echidnas adapted to life on land.",
  "Echidnas are named after Echidna, a creature from Greek mythology who was half-woman, half-snake, as they were perceived to have qualities of both mammals and reptiles.",
  "Echidnas are medium-sized, solitary mammals covered with coarse hair and spines.",
  "Superficially, echidnas resemble the anteaters of South America and other spiny mammals such as hedgehogs and porcupines. They are usually black or brown in colour.",
  "Echidnas have elongated and slender snouts that function as both mouth and nose.",
  "Like the platypus, echidnas are equipped with electrosensors. While the platypus has 40,000 electroreceptors on its bill, the long-beaked echidna has only 2,000 electroreceptors, and the short-beaked echidna, which lives in a drier environment, has no more than 400 located at the tip of its snout.",
  "Echidnas have very short, strong limbs with large claws, and are powerful diggers.",
  "Echidnas have tiny mouths and toothless jaws. The echidna feeds by tearing open soft logs, anthills and the like, and using its long, sticky tongue, which protrudes from its snout, to collect prey.",
  "Echidnas' ears are slits on the sides of their heads that are usually unseen due to the fact that they are blanketed by their spines. The external ear is created by a large cartilaginous funnel, deep in the muscle.",
  "The short-beaked echidna's diet consists largely of ants and termites, while the Zaglossus (long-beaked) species typically eat worms and insect larvae. The tongues of long-beaked echidnas have sharp, tiny spines that help them capture their prey. They have no teeth, and break down their food by grinding it between the bottoms of their mouths and their tongues.",
  "Echidnas do not tolerate extreme temperatures; they use caves and rock crevices to shelter from harsh weather conditions. Echidnas are found in forests and woodlands, hiding under vegetation, roots or piles of debris. They sometimes use the burrows of animals such as rabbits and wombats.",
  "Individual echidnas have large, mutually overlapping territories.",
  "Echidnas are capable swimmers. When swimming, they expose their snout and some of their spines. They are known to journey to water in order to groom and bathe themselves.",
  "Echidnas and the platypus are the only egg-laying mammals, known as monotremes.",
  "The average lifespan of an echidna in the wild is estimated around 16 years.",
  "When fully grown a female echidna can weigh up to 4.5 kilograms (9.9 lbs) and a male can weigh up to 6 kilograms (13.2 lbs). The echidnas' sex can be inferred from their size, as males are 25% larger than females on average. The reproductive organs also differ, but both sexes have a single opening called a cloaca, which they use to urinate, release their faeces and to mate.",
  "Male echidnas have non-venomous spurs on their hind feet.",
  "The neocortex makes up half of the echidna's brain, compared to 80% of a human brain.",
  "Due to their low metabolism and accompanying stress resistance, echidnas are long-lived for their size; the longest recorded lifespan for a captive echidna is 50 years, with anecdotal accounts of wild individuals reaching 45 years.",
  "Contrary to previous research, the echidna does enter REM sleep, but only when the ambient temperature is around 25 °C (77 °F). At temperatures of 15 °C (59 °F) and 28 °C (82 °F), REM sleep is suppressed.",
  "The female echidna lays a single soft-shelled, leathery egg 22 days after mating, and deposits it directly into her pouch. An egg weighs 380 milligrams (some sources say 1.5 – 2 grams) and is about 1.4 centimetres long.",
  "While hatching, the baby echidna opens the leather shell with a reptile-like egg tooth. Hatching takes place after 10 days of gestation; the young echidna, called a puggle, born larval and fetus-like, then sucks milk from the pores of the two milk patches (monotremes have no nipples) and remains in the pouch for 45 to 55 days, at which time it starts to develop spines.",
  "Mother echidnas dig a nursery burrow and deposit their young, returning every five days to suckle it until it is weaned at seven months. Young echidnas, called puggles, will stay within their mother's den for up to a year before leaving.",
  "Male echidnas have a four-headed penis. During mating, the heads on one side 'shut down' and do not grow in size; the other two are used to release semen into the female's two-branched reproductive tract.",
  "Echidna breeding season begins in late June and extends through September. Males will form lines up to ten individuals long, the youngest echidna trailing last, that follow the female and attempt to mate. This is known as the 'train' system.",
  "Echidnas are very timid animals. When they feel endangered they attempt to bury themselves or if exposed they will curl into a ball, both methods using their spines to shield them. Strong front arms allow echidnas to continue to dig themselves in whilst holding fast against a predator attempting to remove them from the hole.",
  "Snakes pose a large threat to the echidna species because they slither into their burrows and prey on the young spineless echidnas."
]

module.exports = (robot) ->
  robot.respond /echidna fact/i, (res) ->
    res.reply res.random facts
