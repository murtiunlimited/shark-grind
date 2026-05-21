for i in {1..14}
do
  git checkout -b "speedrun-shark-$i"

  echo "$i" >> log.txt

  git add .
  git commit -m "shark grind $i"

  git push origin "speedrun-shark-$i"

  gh pr create --title "Grind PR $i" --body "Automated"

  gh pr merge --merge --delete-branch

  git checkout main
done
