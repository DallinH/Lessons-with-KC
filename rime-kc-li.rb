Shoes.app width: 400, height: 200 do
  stack do
    subtitle "Rime KC-li", align: 'center'
    @limerick_flow = flow
  end

  animate (0.5) do
    main_rhyme = rand(2)
    second_rhyme = rand(2)
    p1 = ["Now for ", "This is "].sample
    p2 = "a "
    p3 = ["poem ", "story ", "limerick "].sample
    p4 = "that's "
    p5 = ["random", "changing"][main_rhyme]

    p6 = "The "
    p7 = ["words ", "rhymes "].sample
    p8 = ["will just ", "always "].sample
    p9 = ["fall out in tandem","keep rearranging"][main_rhyme]

    p10 = "It's "
    p11 = ["not ","so "].sample
    p12 = ["hard ","easy "].sample
    p13 = "to "
    p14 = ["write ","make"][second_rhyme]

    p15a = "if you #{["stay up all","sleep through the"].sample} night"
    p15b = "when there's #{["nothing","so much"].sample} at stake"

    p16 = "These "
    p17 = ["limericks ","poems "].sample
    p18a = "#{["will gain such", "won't gain much"].sample} a fandom."
    p18b = "we must #{["stop","keep"].sample} exchanging!"

    @limerick_flow.clear do
      para "\n", size: 2
      para p1, p2, p3, p4, p5, "\n",
           p6, p7, p8, p9, "\n",
           p10, p11, p12, p13, p14, "\n",
           [p15a, p15b][second_rhyme], "\n",
           p16, p17, [p18a, p18b][main_rhyme], size: 20
    end


  end
end
