ts=`date +%Y%m%d%H%M%S`
mkdir -p content/$ts
for c in pack/*; do 
  cat `cat $c`| gsed '/sourceMappingURL/d' > content/$ts/$(basename $c)
done
wd=`pwd`
rm -rf ./content/pack_latest
ln -s $wd/content/$ts $wd/content/pack_latest
