select * from teamz;
drop table teamz;
create table teamz(
team_id varchar2(20) primary key,
team_name varchar2(20) );
insert into teamz values('ateam','저스티스');
insert into teamz values('hteam','엘카로');
insert into teamz values('cteam','가오갤');
insert into teamz values('steam','어벤저스');

select * from teamw;
drop table teamw;
create table teamw(
    mem_id varchar2(20) primary key,
    team_id varchar2(20),
    mem_name varchar2(20),
    mem_age decimal,
    roll varchar2(20));
alter table teamw add constraint teamz_fk_team_id
    FOREIGN KEY (team_id) REFERENCES teamz(team_id);
insert into teamw values('a1','ateam','형준',34,'팀장');
insert into teamw values('a2','ateam','세인',35,'팀원');
insert into teamw values('a3','ateam','희태',21,'팀원');
insert into teamw values('a4','ateam','상훈',29,'팀원');
insert into teamw values('a5','ateam','태형',25,'팀원');
insert into teamw values('h1','hteam','혜리',26,'팀장');
insert into teamw values('h2','hteam','지은',26,'팀원');
insert into teamw values('h3','hteam','준',27,'팀원');
insert into teamw values('h4','hteam','재경',29,'팀원');
insert into teamw values('h5','hteam','단아',26,'팀원');
insert into teamw values('c1','cteam','최정훈',32,'팀장');
insert into teamw values('c2','cteam','윤호',31,'팀원');
insert into teamw values('c3','cteam','가은',29,'팀원');
insert into teamw values('c4','cteam','정훈',23,'팀원');
insert into teamw values('c5','cteam','승태',30,'팀원');
insert into teamw values('s1','steam','승호',27,'팀장');
insert into teamw values('s2','steam','소진',26,'팀원');
insert into teamw values('s3','steam','이슬',29,'팀원');
insert into teamw values('s4','steam','진태',26,'팀원');
insert into teamw values('s5','steam','누리',30,'팀원');

UPDATE teamw SET  roll = 
    case 
        when mem_id like 'a1' then '팀장' 
        when mem_id like 'h1' then '팀장' 
        when mem_id like 'c1' then '팀장' 
        when mem_id like 's1' then '팀장' 
        else  '팀원'
    end 
;
select * from teamw;
desc teamw

select (select team_name 팀명
from teamz
where team_id like z.team_id) 팀명,
    count(*) "팀원의 수",
    sum(w.mem_age) "나이합",
    max(w.mem_age) "나이의 최대치",
    min(w.mem_age) "나이의 최소치",
    avg(w.mem_age) 나이평균
    
    
from teamz z
    join teamw w
        on z.team_id like w.team_id
group by z.team_id
--having avg(w.mem_age) >= 28
order by z.team_id
;     