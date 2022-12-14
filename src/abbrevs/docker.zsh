_ABBREVS=(
"docker network disconnect,f,--force"
"docker trust signer remove,f,--force"
"docker container inspect,f,--format"
"docker container inspect,s,--size"
"docker container restart,t,--time"
"docker manifest annotate,a,--arch"
"docker manifest annotate,v,--variant"
"docker trust key generate,d,--dir"
"docker container commit,a,--author"
"docker container commit,c,--change"
"docker container commit,m,--message"
"docker container commit,p,--pause"
"docker container create,a,--attach"
"docker container create,cs,--cgroupns"
"docker container create,ce,--cidfile"
"docker container create,cs,--cpus"
"docker container create,de,--device"
"docker container create,ds,--dns"
"docker container create,de,--domainname"
"docker container create,et,--entrypoint"
"docker container create,e,--env"
"docker container create,ee,--expose"
"docker container create,g,--gpus"
"docker container create,hp,--help"
"docker container create,h,--hostname"
"docker container create,it,--init"
"docker container create,i,--interactive"
"docker container create,i6,--ip6"
"docker container create,ic,--ipc"
"docker container create,in,--isolation"
"docker container create,l,--label"
"docker container create,lk,--link"
"docker container create,m,--memory"
"docker container create,mt,--mount"
"docker container create,ne,--name"
"docker container create,nk,--network"
"docker container create,pd,--pid"
"docker container create,pm,--platform"
"docker container create,pd,--privileged"
"docker container create,p,--publish"
"docker container create,pl,--pull"
"docker container create,rt,--restart"
"docker container create,re,--runtime"
"docker container create,s,--sysctl"
"docker container create,ts,--tmpfs"
"docker container create,t,--tty"
"docker container create,ut,--ulimit"
"docker container create,u,--user"
"docker container create,us,--userns"
"docker container create,us,--uts"
"docker container create,v,--volume"
"docker container create,w,--workdir"
"docker container export,o,--output"
"docker container update,c,--cpus"
"docker container update,m,--memory"
"docker container update,r,--restart"
"docker manifest inspect,i,--insecure"
"docker manifest inspect,v,--verbose"
"docker service rollback,d,--detach"
"docker service rollback,q,--quiet"
"docker container prune,fr,--filter"
"docker container prune,f,--force"
"docker container start,a,--attach"
"docker container start,i,--interactive"
"docker container stats,a,--all"
"docker container stats,f,--format"
"docker context inspect,f,--format"
"docker manifest create,a,--amend"
"docker manifest create,i,--insecure"
"docker network connect,a,--alias"
"docker network connect,i,--ip6"
"docker network connect,l,--link"
"docker network inspect,f,--format"
"docker network inspect,v,--verbose"
"docker service inspect,f,--format"
"docker service inspect,p,--pretty"
"docker trust signer add,k,--key"
"docker config inspect,f,--format"
"docker config inspect,p,--pretty"
"docker container exec,d,--detach"
"docker container exec,e,--env"
"docker container exec,i,--interactive"
"docker container exec,p,--privileged"
"docker container exec,t,--tty"
"docker container exec,u,--user"
"docker container exec,w,--workdir"
"docker container kill,s,--signal"
"docker container logs,d,--details"
"docker container logs,f,--follow"
"docker container logs,s,--since"
"docker container logs,n,--tail"
"docker container logs,t,--timestamps"
"docker container logs,u,--until"
"docker container stop,t,--time"
"docker context create,dn,--description"
"docker context create,dn,--description"
"docker context create,dr,--docker"
"docker context create,f,--from"
"docker context create,k,--kubernetes"
"docker context export,k,--kubeconfig"
"docker context update,dn,--description"
"docker context update,dn,--description"
"docker context update,dr,--docker"
"docker context update,k,--kubernetes"
"docker network create,a,--attachable"
"docker network create,d,--driver"
"docker network create,g,--gateway"
"docker network create,is,--ingress"
"docker network create,il,--internal"
"docker network create,i6,--ipv6"
"docker network create,l,--label"
"docker network create,o,--opt"
"docker network create,se,--scope"
"docker network create,st,--subnet"
"docker plugin disable,f,--force"
"docker plugin inspect,f,--format"
"docker plugin install,a,--alias"
"docker plugin install,d,--disable"
"docker secret inspect,f,--format"
"docker secret inspect,p,--pretty"
"docker service create,cg,--config"
"docker service create,ct,--constraint"
"docker service create,d,--detach"
"docker service create,ds,--dns"
"docker service create,et,--entrypoint"
"docker service create,e,--env"
"docker service create,g,--group"
"docker service create,ht,--host"
"docker service create,he,--hostname"
"docker service create,it,--init"
"docker service create,in,--isolation"
"docker service create,l,--label"
"docker service create,me,--mode"
"docker service create,mt,--mount"
"docker service create,ne,--name"
"docker service create,nk,--network"
"docker service create,p,--publish"
"docker service create,q,--quiet"
"docker service create,r,--replicas"
"docker service create,st,--secret"
"docker service create,sl,--sysctl"
"docker service create,t,--tty"
"docker service create,ut,--ulimit"
"docker service create,u,--user"
"docker service create,w,--workdir"
"docker service update,a,--args"
"docker service update,d,--detach"
"docker service update,e,--entrypoint"
"docker service update,f,--force"
"docker service update,h,--hostname"
"docker service update,ie,--image"
"docker service update,it,--init"
"docker service update,in,--isolation"
"docker service update,q,--quiet"
"docker service update,rs,--replicas"
"docker service update,rk,--rollback"
"docker service update,t,--tty"
"docker service update,u,--user"
"docker service update,w,--workdir"
"docker stack services,f,--filter"
"docker stack services,ft,--format"
"docker stack services,o,--orchestrator"
"docker stack services,q,--quiet"
"docker volume inspect,f,--format"
"docker config create,l,--label"
"docker container run,a,--attach"
"docker container run,cs,--cgroupns"
"docker container run,ce,--cidfile"
"docker container run,cs,--cpus"
"docker container run,d,--detach"
"docker container run,de,--device"
"docker container run,ds,--dns"
"docker container run,de,--domainname"
"docker container run,et,--entrypoint"
"docker container run,e,--env"
"docker container run,ee,--expose"
"docker container run,g,--gpus"
"docker container run,hp,--help"
"docker container run,h,--hostname"
"docker container run,it,--init"
"docker container run,i,--interactive"
"docker container run,i6,--ip6"
"docker container run,ic,--ipc"
"docker container run,in,--isolation"
"docker container run,l,--label"
"docker container run,lk,--link"
"docker container run,m,--memory"
"docker container run,mt,--mount"
"docker container run,ne,--name"
"docker container run,nk,--network"
"docker container run,pd,--pid"
"docker container run,pm,--platform"
"docker container run,pd,--privileged"
"docker container run,p,--publish"
"docker container run,pl,--pull"
"docker container run,rt,--restart"
"docker container run,re,--runtime"
"docker container run,s,--sysctl"
"docker container run,ts,--tmpfs"
"docker container run,t,--tty"
"docker container run,ut,--ulimit"
"docker container run,u,--user"
"docker container run,us,--userns"
"docker container run,us,--uts"
"docker container run,v,--volume"
"docker container run,w,--workdir"
"docker image history,f,--format"
"docker image history,H,--human"
"docker image history,q,--quiet"
"docker image inspect,f,--format"
"docker manifest push,i,--insecure"
"docker manifest push,p,--purge"
"docker network prune,fr,--filter"
"docker network prune,f,--force"
"docker plugin create,c,--compress"
"docker plugin enable,t,--timeout"
"docker secret create,d,--driver"
"docker secret create,l,--label"
"docker service scale,d,--detach"
"docker system events,f,--filter"
"docker system events,ft,--format"
"docker system events,s,--since"
"docker system events,u,--until"
"docker trust key load,n,--name"
"docker trust inspect,p,--pretty"
"docker volume create,d,--driver"
"docker volume create,l,--label"
"docker volume create,o,--opt"
"docker container cp,a,--archive"
"docker container ls,a,--all"
"docker container ls,f,--filter"
"docker container ls,ft,--format"
"docker container ls,n,--last"
"docker container ls,l,--latest"
"docker container ls,q,--quiet"
"docker container ls,s,--size"
"docker container rm,f,--force"
"docker container rm,l,--link"
"docker container rm,v,--volumes"
"docker image import,c,--change"
"docker image import,m,--message"
"docker image import,p,--platform"
"docker node inspect,f,--format"
"docker node inspect,p,--pretty"
"docker service logs,d,--details"
"docker service logs,f,--follow"
"docker service logs,r,--raw"
"docker service logs,s,--since"
"docker service logs,n,--tail"
"docker service logs,t,--timestamps"
"docker stack deploy,o,--orchestrator"
"docker stack deploy,p,--prune"
"docker swarm update,a,--autolock"
"docker system prune,a,--all"
"docker system prune,fr,--filter"
"docker system prune,f,--force"
"docker system prune,v,--volumes"
"docker trust signer,a,add"
"docker trust signer,r,remove"
"docker trust revoke,y,--yes"
"docker volume prune,fr,--filter"
"docker volume prune,f,--force"
"docker image build,c,--compress"
"docker image build,f,--file"
"docker image build,ie,--iidfile"
"docker image build,in,--isolation"
"docker image build,l,--label"
"docker image build,m,--memory"
"docker image build,n,--network"
"docker image build,p,--pull"
"docker image build,q,--quiet"
"docker image build,s,--squash"
"docker image build,t,--tag"
"docker image build,tt,--target"
"docker image build,u,--ulimit"
"docker image prune,a,--all"
"docker image prune,fr,--filter"
"docker image prune,f,--force"
"docker node update,a,--availability"
"docker node update,r,--role"
"docker swarm leave,f,--force"
"docker system info,f,--format"
"docker container,a,attach"
"docker container,ct,commit"
"docker container,ce,create"
"docker container,d,diff"
"docker container,ec,exec"
"docker container,et,export"
"docker container,i,inspect"
"docker container,k,kill"
"docker container,ls,logs"
"docker container,pe,pause"
"docker container,pt,port"
"docker container,pe,prune"
"docker container,re,rename"
"docker container,rt,restart"
"docker container,rn,run"
"docker container,st,start"
"docker container,ss,stats"
"docker container,sp,stop"
"docker container,t,top"
"docker container,ue,unpause"
"docker container,ue,update"
"docker container,w,wait"
"docker context ls,f,--format"
"docker context ls,q,--quiet"
"docker context rm,f,--force"
"docker image load,i,--input"
"docker image load,q,--quiet"
"docker image pull,p,--platform"
"docker image pull,q,--quiet"
"docker image push,q,--quiet"
"docker image save,o,--output"
"docker network ls,f,--filter"
"docker network ls,ft,--format"
"docker network ls,q,--quiet"
"docker service ls,f,--filter"
"docker service ls,ft,--format"
"docker service ls,q,--quiet"
"docker service ps,f,--filter"
"docker service ps,ft,--format"
"docker service ps,q,--quiet"
"docker swarm init,ak,--autolock"
"docker swarm init,ay,--availability"
"docker swarm join,a,--availability"
"docker swarm join,t,--token"
"docker trust sign,l,--local"
"docker config ls,f,--filter"
"docker config ls,ft,--format"
"docker config ls,q,--quiet"
"docker manifest,a,annotate"
"docker manifest,c,create"
"docker manifest,i,inspect"
"docker manifest,p,push"
"docker manifest,r,rm"
"docker manifest,h,--help"
"docker plugin ls,f,--filter"
"docker plugin ls,ft,--format"
"docker plugin ls,q,--quiet"
"docker plugin rm,f,--force"
"docker secret ls,f,--filter"
"docker secret ls,ft,--format"
"docker secret ls,q,--quiet"
"docker system df,f,--format"
"docker system df,v,--verbose"
"docker trust key,g,generate"
"docker trust key,l,load"
"docker volume ls,f,--filter"
"docker volume ls,ft,--format"
"docker volume ls,q,--quiet"
"docker volume rm,f,--force"
"docker context,c,create"
"docker context,e,export"
"docker context,it,import"
"docker context,it,inspect"
"docker context,l,ls"
"docker context,r,rm"
"docker context,ue,update"
"docker context,ue,use"
"docker image ls,a,--all"
"docker image ls,d,--digests"
"docker image ls,f,--filter"
"docker image ls,ft,--format"
"docker image ls,q,--quiet"
"docker image rm,f,--force"
"docker network,ct,connect"
"docker network,ce,create"
"docker network,d,disconnect"
"docker network,i,inspect"
"docker network,l,ls"
"docker network,p,prune"
"docker network,r,rm"
"docker service,c,create"
"docker service,i,inspect"
"docker service,ls,logs"
"docker service,p,ps"
"docker service,rk,rollback"
"docker service,s,scale"
"docker service,u,update"
"docker attach,d,--detach-keys"
"docker attach,n,--no-stdin"
"docker attach,s,--sig-proxy"
"docker stack ls,f,--format"
"docker stack ls,o,--orchestrator"
"docker stack ps,f,--filter"
"docker stack ps,ft,--format"
"docker stack ps,o,--orchestrator"
"docker stack ps,q,--quiet"
"docker stack rm,o,--orchestrator"
"docker swarm ca,d,--detach"
"docker swarm ca,q,--quiet"
"docker swarm ca,r,--rotate"
"docker history,f,--format"
"docker history,H,--human"
"docker history,q,--quiet"
"docker inspect,f,--format"
"docker inspect,s,--size"
"docker inspect,t,--type"
"docker restart,t,--time"
"docker version,f,--format"
"docker version,k,--kubeconfig"
"docker config,c,create"
"docker config,i,inspect"
"docker config,l,ls"
"docker config,r,rm"
"docker node ls,f,--filter"
"docker node ls,ft,--format"
"docker node ls,q,--quiet"
"docker node ps,f,--filter"
"docker node ps,ft,--format"
"docker node ps,q,--quiet"
"docker node rm,f,--force"
"docker plugin,c,create"
"docker plugin,d,disable"
"docker plugin,e,enable"
"docker plugin,it,inspect"
"docker plugin,il,install"
"docker plugin,l,ls"
"docker plugin,p,push"
"docker plugin,r,rm"
"docker plugin,s,set"
"docker plugin,u,upgrade"
"docker secret,c,create"
"docker secret,i,inspect"
"docker secret,l,ls"
"docker secret,r,rm"
"docker system,d,df"
"docker system,e,events"
"docker system,i,info"
"docker system,p,prune"
"docker volume,c,create"
"docker volume,i,inspect"
"docker volume,l,ls"
"docker volume,p,prune"
"docker volume,r,rm"
"docker commit,a,--author"
"docker commit,c,--change"
"docker commit,m,--message"
"docker commit,p,--pause"
"docker create,a,--attach"
"docker create,cs,--cgroupns"
"docker create,ce,--cidfile"
"docker create,cs,--cpus"
"docker create,de,--device"
"docker create,ds,--dns"
"docker create,de,--domainname"
"docker create,et,--entrypoint"
"docker create,e,--env"
"docker create,ee,--expose"
"docker create,g,--gpus"
"docker create,hp,--help"
"docker create,h,--hostname"
"docker create,it,--init"
"docker create,i,--interactive"
"docker create,i6,--ip6"
"docker create,ic,--ipc"
"docker create,in,--isolation"
"docker create,l,--label"
"docker create,lk,--link"
"docker create,m,--memory"
"docker create,mt,--mount"
"docker create,ne,--name"
"docker create,nk,--network"
"docker create,pd,--pid"
"docker create,pm,--platform"
"docker create,pd,--privileged"
"docker create,p,--publish"
"docker create,pl,--pull"
"docker create,rt,--restart"
"docker create,re,--runtime"
"docker create,s,--sysctl"
"docker create,ts,--tmpfs"
"docker create,t,--tty"
"docker create,ut,--ulimit"
"docker create,u,--user"
"docker create,us,--userns"
"docker create,us,--uts"
"docker create,v,--volume"
"docker create,w,--workdir"
"docker events,f,--filter"
"docker events,ft,--format"
"docker events,s,--since"
"docker events,u,--until"
"docker export,o,--output"
"docker images,a,--all"
"docker images,d,--digests"
"docker images,f,--filter"
"docker images,ft,--format"
"docker images,q,--quiet"
"docker import,c,--change"
"docker import,m,--message"
"docker import,p,--platform"
"docker search,f,--filter"
"docker search,ft,--format"
"docker search,l,--limit"
"docker update,c,--cpus"
"docker update,m,--memory"
"docker update,r,--restart"
"docker image,b,build"
"docker image,h,history"
"docker image,it,import"
"docker image,it,inspect"
"docker image,ld,load"
"docker image,pe,prune"
"docker image,pl,pull"
"docker image,ph,push"
"docker image,r,rm"
"docker image,s,save"
"docker image,t,tag"
"docker stack,d,deploy"
"docker stack,l,ls"
"docker stack,p,ps"
"docker stack,r,rm"
"docker stack,s,services"
"docker stack,o,--orchestrator"
"docker swarm,c,ca"
"docker swarm,i,init"
"docker swarm,j,join"
"docker swarm,l,leave"
"docker swarm,uk,unlock"
"docker swarm,ue,update"
"docker trust,k,key"
"docker trust,sr,signer"
"docker trust,i,inspect"
"docker trust,r,revoke"
"docker trust,sn,sign"
"docker build,c,--compress"
"docker build,f,--file"
"docker build,ie,--iidfile"
"docker build,in,--isolation"
"docker build,l,--label"
"docker build,m,--memory"
"docker build,n,--network"
"docker build,p,--pull"
"docker build,q,--quiet"
"docker build,s,--squash"
"docker build,t,--tag"
"docker build,tt,--target"
"docker build,u,--ulimit"
"docker login,p,--password"
"docker login,u,--username"
"docker start,a,--attach"
"docker start,i,--interactive"
"docker stats,a,--all"
"docker stats,f,--format"
"docker node,d,demote"
"docker node,i,inspect"
"docker node,l,ls"
"docker node,pe,promote"
"docker node,r,rm"
"docker node,u,update"
"docker exec,d,--detach"
"docker exec,e,--env"
"docker exec,i,--interactive"
"docker exec,p,--privileged"
"docker exec,t,--tty"
"docker exec,u,--user"
"docker exec,w,--workdir"
"docker info,f,--format"
"docker kill,s,--signal"
"docker load,i,--input"
"docker load,q,--quiet"
"docker logs,d,--details"
"docker logs,f,--follow"
"docker logs,s,--since"
"docker logs,n,--tail"
"docker logs,t,--timestamps"
"docker logs,u,--until"
"docker pull,p,--platform"
"docker pull,q,--quiet"
"docker push,q,--quiet"
"docker save,o,--output"
"docker stop,t,--time"
"docker rmi,f,--force"
"docker run,a,--attach"
"docker run,cs,--cgroupns"
"docker run,ce,--cidfile"
"docker run,cs,--cpus"
"docker run,d,--detach"
"docker run,de,--device"
"docker run,ds,--dns"
"docker run,de,--domainname"
"docker run,et,--entrypoint"
"docker run,e,--env"
"docker run,ee,--expose"
"docker run,g,--gpus"
"docker run,hp,--help"
"docker run,h,--hostname"
"docker run,it,--init"
"docker run,i,--interactive"
"docker run,i6,--ip6"
"docker run,ic,--ipc"
"docker run,in,--isolation"
"docker run,l,--label"
"docker run,lk,--link"
"docker run,m,--memory"
"docker run,mt,--mount"
"docker run,ne,--name"
"docker run,nk,--network"
"docker run,pd,--pid"
"docker run,pm,--platform"
"docker run,pd,--privileged"
"docker run,p,--publish"
"docker run,pl,--pull"
"docker run,rt,--restart"
"docker run,re,--runtime"
"docker run,s,--sysctl"
"docker run,ts,--tmpfs"
"docker run,t,--tty"
"docker run,ut,--ulimit"
"docker run,u,--user"
"docker run,us,--userns"
"docker run,us,--uts"
"docker run,v,--volume"
"docker run,w,--workdir"
"docker cp,a,--archive"
"docker ps,a,--all"
"docker ps,f,--filter"
"docker ps,ft,--format"
"docker ps,n,--last"
"docker ps,l,--latest"
"docker ps,q,--quiet"
"docker ps,s,--size"
"docker rm,f,--force"
"docker rm,l,--link"
"docker rm,v,--volumes"
"docker,br,builder"
"docker,cg,config"
"docker,cr,container"
"docker,ct,context"
"docker,ie,image"
"docker,m,manifest"
"docker,nk,network"
"docker,ne,node"
"docker,pn,plugin"
"docker,st,secret"
"docker,se,service"
"docker,sk,stack"
"docker,sm,swarm"
"docker,sm,system"
"docker,tt,trust"
"docker,ve,volume"
"docker,a,attach"
"docker,bd,build"
"docker,ct,commit"
"docker,ce,create"
"docker,d,diff"
"docker,es,events"
"docker,ec,exec"
"docker,et,export"
"docker,h,history"
"docker,is,images"
"docker,it,import"
"docker,io,info"
"docker,it,inspect"
"docker,k,kill"
"docker,ld,load"
"docker,ln,login"
"docker,lt,logout"
"docker,ls,logs"
"docker,pe,pause"
"docker,pt,port"
"docker,pl,pull"
"docker,ph,push"
"docker,re,rename"
"docker,rt,restart"
"docker,ri,rmi"
"docker,rn,run"
"docker,se,save"
"docker,sh,search"
"docker,st,start"
"docker,ss,stats"
"docker,sp,stop"
"docker,tg,tag"
"docker,tp,top"
"docker,ue,unpause"
"docker,ue,update"
"docker,vn,version"
"docker,w,wait"
"docker,cg,--config"
"docker,c,--context"
"docker,D,--debug"
"docker,H,--host"
"docker,ts,--tls"
"docker,tt,--tlscacert"
"docker,tt,--tlscert"
"docker,ty,--tlskey"
"docker,ty,--tlsverify"
"docker,v,--version"
)
