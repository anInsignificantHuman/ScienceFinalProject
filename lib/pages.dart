import 'templates.dart';

Template getTemplate(String option) {
  switch (option) {
    case 'Back to start':
      return Template(
        1,
        'What is Global Warming?',
        'asset1.jpg',
        'Global warming is an environmental impact that is being caused by humans. It is causing many problems to our planet including, but not limited to, ocean acidification, wildfires, extreme weather, polar ice cap melting, drastic sea level rise, animal endangerment, disease spread, etc.',
        [
          'How exactly does it work?',
          "I don't believe global warming is real.",
        ],
      );
    case 'How exactly does it work?':
      return Template(
        2,
        'How Exactly Does\nIt Work?',
        'asset2.jpg',
        'Humans are constantly pumping out harmful gases called greenhouse gases. The most common way that these gases are released into the atmosphere is the burning of fossil fuels for energy. The most common greenhouse gas we emit is carbon dioxide. Okay, but what are greenhouse gases? Essentially, when sunlight hits our atmosphere, some of it reflects back off into space, but the rest comes inside the atmosphere as heat. Usually, this heat in the atmosphere eventually finds its way back into space, but greenhouse gases trap this heat inside the planet. Of course, greenhouse gases in moderation are necessary to keep the planet warm, but too much of it starts causing major temperature changes, and that is what is plaguing our planet at the moment',
        [
          'How does this affect the planet?',
          'Why should this be a concern for me?',
        ],
      );
    case "I don't believe global warming is real.":
      return Template(
        2,
        "I Don't Believe\nGlobal Warming is Real.",
        'asset3.jpg',
        'According to the National Aeronautics and Space Administration, or NASA, 97% of climate scientists agree that global warming is a real problem and has a direct link to human activity. According to the Intergovernmental Panel on Climate Change, or IPCC, human influence on climate change is as clear as day.',
        [
          'How exactly does it work?',
        ],
      );
    case 'How does this affect the planet?':
      return Template(
        3,
        'How Does This\nAffect the Planet?',
        'asset4.jpg',
        'This actually affects our planet in a plethora of harmful ways. You can explore the hyperlinks on this website to find out what global warming is doing to our planet, as well as why it’s happening in the first place.',
        [
          'How does global warming cause sea levels to rise?',
          'How does global warming acidify oceans?',
        ],
      );
    case 'Why should this be a concern for me?':
      return Template(
        3,
        'Why Should This\nBe A Concern For Me?',
        'asset5.jpg',
        'Global warming affects this beautiful planet we call home in so many more ways than one. To be ignorant of these problems would be to ignore a dying planet, but it’s never too late for change, especially at this crucial moment in our history. Across this website, there will be links to help you find out about what is happening across the globe due to global warming.',
        [
          'How does global warming cause sea levels to rise?',
          'How does global warming acidify oceans?',
        ],
      );
    case 'How does global warming cause sea levels to rise?':
      return Template(
        4,
        'How Does Global\nWarming Cause Sea\nLevels to Rise?',
        'asset6.jpg',
        'According to the federal website climate.gov, global warming contributes to sea level rise in two ways. Firstly, climate change warms the ocean’s water. Heat causes particles, such as the ones in the heated water, to expand further apart. Consequently, the particles take up more space, thereby increasing the volume of the water and the overall water level. The second and much more devastating way global warming contributes to global sea level rise is the melting of polar ice caps. Of course, when the planet starts to warm up, the ice caps will warm up too, causing them to melt. The majority of freshwater is stored in glaciers and ice caps, and if they all melted, global sea levels would rise by about 70 meters or 230 feet. This will be a serious threat to human existence, as, for example, over 40% of American residents live on or near the coast. If global warming continues, these coastal areas will soon find themselves submerged in deep water.',
        [
          'How does global warming spread diseases?',
          'How does global warming cause extreme weather?',
        ],
      );
    case 'How does global warming acidify oceans?':
      return Template(
        4,
        'How Does Global\nWarming Acidify Oceans?',
        'asset7.jpg',
        'As mentioned earlier, the most heavily produced greenhouse gas is carbon dioxide. Carbon dioxide (CO2) can sometimes bond with water (H2O) to form a weak acid called carbonic acid (H2CO3). This is occurring on a massive scale on our oceans, lowering their pH levels, or in other words, raising their acidity. Studies have shown that this has the effect of making it harder for some species of fish to smell, decreasing their ability to detect predators in the water. Acidic oceans also have the effect of breaking down some of the shells and exoskeletons of marine species, like those of molluscs. Speaking of shells, ocean acidification tampers with the ability of marine organisms to build new shells. Ocean acidification reduces the amount of carbonate in the water, making it harder for some species to build their own shells. Atmospheric change is heavily affecting wildlife in the sea.',
        [
          'How does global warming spread diseases?',
          'How does global warming cause extreme weather?',
        ],
      );
    case 'How does global warming spread diseases?':
      return Template(
          5,
          'How Does Global\nWarming Spread Diseases?',
          'asset8.jpg',
          "Stanford University researcher Erin Mordecai and her team did a study on the transmission of mosquito-borne illnesses and local temperature. They found that as temperatures rise, the risk of spreading mosquito-borne illnesses like dengue or Zika increases up to a certain point (around 29 degrees Celsius or 78 degrees Fahrenheit). Since the planet is warming, more and more places will see mosquito-borne disease outbreaks. Places further north and south may see outbreaks in the near future, meaning that scientists need to keep an eye out on the rising temperatures of certain areas. This is disproportionately affecting impoverished areas closer to the equator, as many of them do not have adequate facilities to combat any emerging outbreaks that may arise from global warming. Since the 'turnover point' of mosquito disease spread is quite warm, the good news is that warmer areas will start to see fewer outbreaks. The bad news is that areas which are currently cold could see far more outbreaks.",
          [
            'What is the source of all this trouble?',
          ]);
    case 'How does global warming cause extreme weather?':
      return Template(
        5,
        'How Does Global\nWarming Cause Extreme\nWeather?',
        'asset9.jpg',
        'According to the National Academies of Science, Engineering, and Medicine, global warming makes extreme weather events like hurricanes worse by increasing heat waves in the atmosphere. This leads to more hot days and nights, boosting evaporation in certain areas. This extreme evaporation may cause droughts, leading to very flammable dry fields and forests, which, coupled with the increasing temperatures, can lead to longer wildfire seasons. Since this increased evaporation causes water vapor levels to rise, heavy rainfall and snowstorms can occur more frequently elsewhere in the world. The atmosphere will become warmer and more moist, increasing the intensity of tropical storms and hurricanes. This chain of events can prove detrimental to the entire world.',
        [
          'What is the source of all this trouble?',
        ],
      );
    default:
      return Template(
        6,
        'What Is The Source\nof All This Trouble?',
        'assetfinal.jpg',
        "Us...\n\n...but that isn't to say we can't do something about it. The best way to combat global warming is to switch to renewable and clean sources of energy such as wind or water. Switching to using electricity rather than oil or natural gas can help, too. However, individuals can make small changes to their lifestyle to help, too. If a place is close by, it is much cleaner for people to bike or walk there rather than drive, and it has the added bonus of being a healthier option. Please do some research on how you can help reduce global warming.",
        [
          'Back to start',
        ],
      );
  }
}