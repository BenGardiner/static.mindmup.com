ts=`date +%Y%m%d%H%M%S`
mkdir -p content/$ts
for c in pack/*; do 
  cat `cat $c`> content/$ts/$(basename $c)
done
