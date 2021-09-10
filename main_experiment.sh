funWithParam(){
    python run_recbole.py --model=$2  --dataset=ml-1m --config=yaml/test-ml-1m-bfs.yaml  --gpu_id=1 --use_shot_emb=True --copy=True --sample=True --shot_emb_epoch=13 --seed=$1 
    python run_recbole.py --model=$2  --dataset=ml-1m  --config=yaml/test-ml-1m-bfs.yaml  --gpu_id=1 --use_shot_emb=False --sample=False --copy=False --shot_emb_epoch=0 --seed=$1 
    python run_recbole.py --model=$2  --dataset=ml-1m  --config=yaml/test-ml-1m-bfs.yaml  --gpu_id=1 --use_shot_emb=True --copy=True --sample=True --bfs=True --shot_emb_epoch=13 --bfs=True --seed=$1 
    python run_recbole.py --model=$2  --dataset=ml-1m  --config=yaml/test-ml-1m-bfs.yaml  --gpu_id=1  --use_shot_emb=False --sample=False --copy=False --shot_emb_epoch=0 --bfs=True --seed=$1

}
# i: Random Seed
for i in 1569089857 2107813451 562502211 7880378 722088792 1569261776 1484987887 717209734 379001988 336143525 498077155 564085814 1358323955 888214042 1483824474 126420272 294652400 620626672 1343752 324232325
do
    for j in DCN WideDeep AutoInt CDeepFM
    do
        funWithParam $i $j
    done
done