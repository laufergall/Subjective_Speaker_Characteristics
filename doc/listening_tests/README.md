## Listening tests

The raw data from listening tests 1) and 2) and the scores resulting from factor analysis are included as documentation of the [NSC](http://www.qu.tu-berlin.de/?id=nsc-corpus) corpus.  

For the listening tests, this [GUI](https://github.com/laufergall/GUI_SpeakerCharacteristics) written in Java (adapted depending on the questionnaire items and audio stimuli) was employed.

Thanks to Rafael Zequeira Jiménez (Technische Universität Berlin, Germany) for the preparation of crowdsourcing micro-tasks in [Crowdee](https://www.crowdee.de/en/home) (Listening Tests 7 and 8).

In-lab tests had a max. duration of about 1-1.5 hours, with short breaks every 10-15 minutes. They were administered using a laptop, a mouse, and headphones:

* For Listening Tests 1, 2, 3, and 4: Shure SRH240 headphones (diotic listening, frequency range 20-20,000 Hz)
* For Listening Test 5: AKG K271 MKII (diotic listening, frequency range 16-28,000 Hz).
* For Listening Test 6 and 7: AKG K601 (diotic listening, frequency range 12-39,500 Hz).

As a reminder, "WAAT" stands for "warmth-attractiveness", the first two traits resulting from factor analysis with data of Listening Test 1.



### Listening Test 1: NSC labeling of speaker characteristics (SC)

This listening test was conducted in order to label the NSC corpus with continuous numeric subjective ratings of speaker characteristics, given to all speakers.

- Speakers: 300 speakers (126 males, 174 females), the entire NSC corpus.

- Speech stimuli:
  - Clean microphone speech
  - Semi-spontaneous "Pizza" dialogs (shortened dialog version)
  - The speech stimuli can be found under the /stimuli folder of the [NSC release](http://www.qu.tu-berlin.de/?id=nsc-corpus).

- Questionnaire: 34 items of interpersonal speaker characteristics (German) (see below)

- Test participants: 114 (70 males and 44 females)
  - Mean age = 24.5, standard deviation = 3.4
  - 11 languages (93 German and 21 other)

- Each test participant filled in the questionnaire for, on average, 16,4 male speakers and 23.2 female speakers

  ​



### Listening Test 2: NSC labeling of voice descriptions (VD)

This listening test was conducted in order to label the NSC corpus with continuous numeric subjective ratings of speaker characteristics, given to all speakers.

- Speakers: 
  - 20 "extreme" speakers, selected based on their salient scores on WAAT
  - 10 males (5 of low WAAT and 5 of high WAAT), and 10 females (5 of low WAAT and 5 of high WAAT)
  - Speakers' IDs: 
    - 5 females of high WAAT: w008_dakar, w040_birmingham, w125_hamhung, w240_casablanca, w257_nasinu
    - 5 females of low WAAT: w094_hakupu, w168_philipsburg, w174_reykjavik, w262_huambo, w287_dzaoudzi
    - 5 males of high WAAT: m041_bucharest, m061_alrayyan, m071_jamestown, m097_basseterre, m271_portmoresby 
    - 5 males of low WAAT: m280_skopje, m088_cayenne, m096_helsinki, m171_barentsburg, m263_andorralavella
- Speech stimuli:
  - Clean microphone speech
  - Semi-spontaneous "Pizza" dialogs (shortened dialog version)
  - The speech stimuli can be found under the /stimuli folder of the [NSC release](http://www.qu.tu-berlin.de/?id=nsc-corpus).
- Questionnaire: 34 items of naive voice descriptions (German) (see below)
- Test participants: 26 (13 males and 13 females)
  - Mean age = 26.6, standard deviation = 4.8
  - German as mother tongue
- Each test participant filled in the questionnaire for all speech stimuli




### Listening Test 3: Effects of bandwidth on speaker characteristics

This listening test was conducted with degraded speech stimuli to study the effects of telephone bandwidth on subjective impressions of speaker characteristics. 

* Speakers: same as in Listening test 2

* Speech stimuli:
  * Semi-spontaneous "Pizza" dialogs (shortened dialog version)
  * 2 channel conditions (speech degradations): 
    * Narrowband: IRS8 filter, G.712 NB filter (300-3,400 Hz), G.711 A-law codec at 64 kbit/s 
    * Wideband: modified P.341 filter (135-7000 Hz), G.722 at 64 kbit/s
  * The average length of these files was 22.3 s (sd=2.7 s, range: 18.6-27.3 s).

* Questionnaire: 34 items of interpersonal speaker characteristics (German) (see below)

* Test participants: 23 (10 male and 13 female)
  * Mean age =27.7, standard deviation = 5.9, range = 18-40
  * German as mother tongue

* Each test participant filled in the questionnaire for all speech stimuli

  ​



### Listening Test 4: Effects of bandwidth on voice descriptions

This listening test was conducted with degraded speech stimuli to study the effects of telephone bandwidth on subjective voice descriptions.

- Speakers: same as in Listening test 2 and Listening test 3

- Speech stimuli: same as in Listening test 3

- Questionnaire: 34 items of naive voice descriptions (German) (see below)

- Test participants: 23 (9 male and 14 female)
  - Mean age = 28.6, standard deviation = 6.0, range = 20-40
  - German as mother tongue

- Each test participant filled in the questionnaire for all speech stimuli

  ​



### Listening Test 5: Speech quality of speakers of extreme WAAT

The relationships between speech quality and speakers' WAAT was studied with the data from this listening test. 

* Speakers: 
  - 12 "extreme" speakers, selected based on their salient scores on WAAT
  - 6 males (3 of low WAAT and 3 of high WAAT), and 6 females (3 of low WAAT and 3 of high WAAT)
  - Speakers' IDs: 
    - 3 females of high WAAT: w008_dakar, w125_hamhung, w257_nasinu
    - 3 females of low WAAT: w174_reykjavik, w094_hakupu, w148_phuntsholing
    - 3 males of high WAAT: m061_alrayyan, m041_bucharest, m097_basseterre
    - 3 males of low WAAT: m171_barentsburg, m096_helsinki, m263_andorralavella
  - 11 out of the 12 speakers are the same as the ones considered in Listening Test 2, Listening Test 3, and Listening Test 4
* Speech stimuli: 
  * 8 Degradations: 
    * Reference (48 kHz) - no degradation
    * (SWB) Enhanced Voice Services (EVS) at 16.4 kbit/s
    * (WB) G.722 at 64 kbit/s
    * (WB) AMR-WB at 6.6 kbit/s
    * (NB) G.711 at 64 kbit/s
    * (NB) AMR-NB at 4.65 kbit/s
    * Bandpass filtering 900-2500 Hz
    * Modulated Noise Reference Unit (MNRU) of 10 dB
  * 8 different scripted excerpts of 2 to 3 sentences each (content) were extracted from the NSC corpus corresponding to the 12 speakers. We then selected 8 different channel conditions (reference and channel degradations). Randomly for each speaker, one of her 8 excerpts was assigned to one condition in a balanced manner, so that the same speaker, the same content, and the same distortion appears the same number of times in the resulting 12 x 8 = 96 stimulus files. 
  * Total: 96 speech stimuli with mean duration = 8.7 s, sd = 1.1 s, min = 5.5 s, max = 12.0 s
* Test: Perceptual quality test with MOS continuous scale from "extremely bad" to "ideal" (see screenshot). Instruction: "Bitte beurteilen Sie die nachfolgenden Sprachproben nach ihrer Gesamtqualität" (in English: "Please rate the following speech samples according to their overall quality")
* Test participants: 20 (10 male and 10 female)
  - Mean age =26.4, standard deviation = 4.1, range = 19-34
  - German as mother tongue
* Each test participant rated all speech stimuli

Thanks to Gabriel Mittag (Technische Universität Berlin, Germany) for the preparation of speech stimuli and support with the test GUI.



### Listening Test 6: Round-Robin for mutual interpersonal perceptions  

This test consisted on a round-robin experimental design, where a group of unacquainted individuals mutually rated each another in terms of interpersonal perceptions. 

The test involved two sections: a) rating speaker likability by listening to scripted speech transmitted through a narrowband (NB) or a wideband (WB) condition; and b) rating speaker likability and personality.

* Speakers: Speakers 001 to 030 of the NSC corpus

* Speech stimuli: 

  For test section a) same sentence for all speakers: "Ich würde auf die SMS gern verzichten und meine Frei-Minuten dafür erhöhen". This segment was transmitted through a narrowband (NB) or a wideband (WB) condition. Duration in seconds: Mean=4.4, Stdev=0.3, Max=5.0, Min=3.8.

  For test section b), semi-spontaneous dialog in which the speakers ordered a pizza (clean speech, samped at 44.1 kHz). Duration in seconds: Mean=19.5, Stdev=4.3, Max=32.5, Min=14.4.

* Test: To collect likability ratings, a slider was presented with the antonyms "sympathisch" and "unsympathisch" at its ends. For the personality assessments the [BFI-10 questionnaire](https://pdfs.semanticscholar.org/4646/5a97ab883cc72d9f601263a208afae6fb31a.pdf) was employed

* Test participants: 30 (15 male, 15 female)

  * Mean age =27.2, standard deviation = 3.9, range = 20-34
  * German as mother tongue
  * These 30 persons were invited on two separated days with an interval of approximately two weeks: first to a recording session and then to perform a listening test in which to rate the likability and personality of each other participant from their voice. Except for two people who were a couple (1f, 1m), the rest of participants indicated not to be acquainted with the other test persons and they never saw each another

* Each participant rated the 29 other participants (14 persons of the same gender and 15 persons of the opposite gender). Importantly, they did not listen to their own voice

Thanks to Benjamin Weiss for insights into the round-robin experimental design and the social relations model (SRM).



### Listening Test 7: Paired-comparison for voice likability perceptions  

A paired-comparison listening test was conducted to examine the applicability, reliability, and listeners' agreement of for collecting voice likability ratings with this test paradigm compared to direct scaling, as employed in Listening Test 6.

- Speakers: Only male speakers from Listening Test 6 (15 males)
- Speech stimuli: Only WB stimuli from Listening Test 6
- Test: The 15 speech stimuli were combined into 105 unique pairs, presented randomly. Listeners were asked to determine the preference for "A" or "B" by using a slider, which represents the extent of the difference in likability between the two voices.
- Test participants: 13 out of the 15 female listeners of Listening Test 6
  - Mean age =27.8, range = 20-34
  - German as mother tongue 
  - Except for one participant, all listeners were unacquainted with the speakers
- Each test participant was presented with all pariwise comparisons





### Listening Test 8: Paired-comparison for voice likability perceptions (crowdsourcing)

Investigating whether mobile crowdsourcing tests are as valid as in-lab tests for obtaining meaningful speech likability annotations.

- Speakers: same as in Listening Test 7

- Speech stimuli: same as in Listening Test 7

- Test: same as in Listening Test 7, yet conducted via crowdsourcing. The paired comparison task was divided into 2 screens, the first one enabled playing the two voices (concatenated and separated by a beep sound), and the second one presented a slider with which to indicate the degree of preference for the first or for the second voice

  1365 micro-tasks (105 comparisons x 13 responses from unique workers) were offered in order to gather the same amount of responses as in the Listening Test 6. The workers were
  allowed to perform different test micro-tasks up to 25 times

- Test participants: 77 unique workers provided 1365 answers deemed trustworthy.





### Listening Test 9: Direct scaling for voice likability perceptions (crowdsourcing)

Investigating whether mobile crowdsourcing tests are as valid as in-lab tests for obtaining meaningful speech likability annotations.

- Speakers: Same as in Listening Test 6

- Speech stimuli: Only WB stimuli from Listening Test 6

- Test: Each crowdsourcing micro-task consisted of 8 speech stimuli of the same gender, presented on separate screens. In each screen, the workers were asked to listen to the stimulus and to indicate the degree of liking the voice on a continuous slider with the labels "likable" and "non-likable" at its ends.

  Each worker could only perform two micro-tasks, each with speakers of each gender.

- Test participants: 68 unique workers provided answers deemed trustworthy. 30 trustworthy likability ratings to each of the 30 utterances were collected.

Thanks to Rafael Zequeira Jiménez (Technische Universität Berlin, Germany) for the preparation of crowdsourcing micro-tasks in [Crowdee](https://www.crowdee.de/en/home).




## Semantic differential questionnaire items

Items based on previous research by Dr. Benjamin Weiss (Technische Universität Berlin, Germany).

Used for Listening Tests 1, 2, and 3.

These items can also be seen in:

Fernández Gallardo, L. and Weiss, B., "The Nautilus Speaker Characterization Corpus: Speech Recordings and Labels of Speaker Characteristics and Voice Descriptions," in International Conference on Language Resources and Evaluation (LREC), 2018.

#### German (original)

34 items of interpersonal speaker characteristics:

item left | item right 
--- | ---
sympathisch | unsympathisch
unsicher | sicher
unattraktiv | attraktiv
verstaendnisvoll | verstaendnislos
entschieden | unentschieden
aufdringlich | unaufdringlich
nah | distanziert
interessiert | gelangweilt
emotionslos | emotional
genervt | nicht_genervt
passiv | aktiv
unangenehm | angenehm
charaktervoll | charakterlos
reserviert | gesellig
nervoes | entspannt
distanziert | mitfuehlend
unterwuerfig | dominant
affektiert | unaffektiert
gefuehlskalt | herzlich
jung | alt
sachlich | unsachlich
aufgeregt | ruhig
kompetent | inkompetent
schoen | haesslich
unfreundlich | freundlich
weiblich | maennlich
provokativ | gehorsam
engagiert | gleichgueltig
langweilig | interessant
folgsam | zynisch
unaufgesetzt | aufgesetzt
dumm | intelligent
erwachsen | kindlich
frech | bescheiden



34 items of naive voice descriptions:

item left | item right 
--- | ---
klangvoll | klanglos
tief | hoch
nasal | nicht_nasal
stumpf | scharf
gleichmaessig | ungleichmaessig
akzentfrei | mit_Akzent
dunkel | hell
leise | laut
knarrend | nicht_knarrend
variabel | monoton
angenehm | unangenehm
deutlich | undeutlich
rau | glatt
klar | heiser
unauffaellig | auffaellig
schnell | langsam
kalt | warm
unnatuerlich | natuerlich
stabil | zittrig
unpraezise | praezise
bruechig | fest
unmelodisch | melodisch
angespannt | entspannt
holprig | gleitend
lang | kurz
locker | gepresst
kraftvoll | kraftlos
fluessig | stockend
weich | hart
professionell | unprofessionell
betont | unbetont
sanft | schrill
getrennt | verbunden
nicht_behaucht | behaucht



#### English (translated) 

34 items of interpersonal speaker characteristics:

item left | item right 
--- | ---
likable | non_likable
unsecure | secure
unattractive | attractive
sympathetic | unsympathetic
decided | indecisive
obtrusive | unobtrusive
close | distant
interested | bored
unemotional | emotional
irritated | not_irritated
passive | active
unpleasant | pleasant
characterful | characterless
reserved | sociable
nervous | relaxed
distant | affectionate
conformable | dominant
affected | unaffected
cold | hearty
young | old
impersonal | personal
excited | calm
competent | incompetent
beautiful | ugly
unfriendly | friendly
feminine | masculine
offensive | submissive
committed | indifferent
boring | interesting
compliant | cynical
genuine | artificial
stupid | intelligent
adult | childish
impudent | modest



34 items of naive voice descriptions:

item left | item right 
--- | ---
sonorous | flat
low | high
nasal | not_nasal
blunt | sharp
even | uneven
accented | without_accent
dark | bright
quiet | loud
creaky | not_creaky
variable | monotonous
pleasant | unpleasant
articulate | inarticulate
coarse | not_coarse
clear | hoarse
not_remarkable | remarkable
quick | slow
cold | warm
unnatural | natural
stable | shaky
imprecise | precise
brittle | firm
not_melodious | melodious
tense | relaxed
bumpy | smooth
long | short
lax | pressed
powerful | powerless
fluent | halting
soft | hard
professional | unprofessional
emphasized | not_emphasized
gentle | shrill
disjointed | jointed
not_breathy | breathy