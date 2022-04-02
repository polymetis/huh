list = Iamapettyman.all_of_the_words(500, Iamapettyman.all_of_the_words(), [])

Benchee.run(
  %{
    "enum" => fn -> Iamapettyman.doing_the_enum(list) end,
    "for" => fn -> Iamapettyman.doing_the_enum(list) end,
    "ffs" => fn -> :ffs.for(list) end
  },
  time: 10,
  memory_time: 2
)
