SET DEFINE OFF;

DROP SEQUENCE seq_mid;
DROP SEQUENCE seq_cid;
DROP SEQUENCE seq_cmt_id;
DROP SEQUENCE seq_notice_no;



/* 회원번호 자동증가 시퀀스 */
CREATE SEQUENCE seq_mid;

/* 컨택번호 자동증가 시퀀스 */
CREATE SEQUENCE seq_cid;

/* 댓글번호 자동증가 시퀀스 */
CREATE SEQUENCE seq_cmt_id;

/* 공지사항번호 자동증가 시퀀스 */
CREATE SEQUENCE seq_notice_no;




/**/
/* 아래는 임시 DB 데이터 */
/**/

/* member */
INSERT INTO member VALUES(seq_mid.nextval, '이재용', 'samsung@gmail.com', 'samsung123', 01012343333, 1, '2021-04-01', '2021-04-10');
INSERT INTO member VALUES(seq_mid.nextval, '최태원', 'sk@gmail.com', 'sk123', 01012341111, 1, '2021-04-02', '2021-04-11');
INSERT INTO member VALUES(seq_mid.nextval, '김범석', 'coopang@gmail.com', 'coopang123', 01012342222, 1, '2021-04-02', '2021-04-12');
INSERT INTO member VALUES(seq_mid.nextval, '이해진', 'naver@gmail.com', 'naver123', 01012345555, 1, '2021-04-03', '2021-04-13');
INSERT INTO member VALUES(seq_mid.nextval, '김범수', 'kakao@gmail.com', 'kakao123', 01012346666, 1, '2021-04-04', '2021-04-14');
INSERT INTO member VALUES(seq_mid.nextval, '신중호', 'line@gmail.com', 'line123', 01012347777, 1, '2021-04-05', '2021-04-16');
INSERT INTO member VALUES(seq_mid.nextval, '김봉진', 'baemin@gmail.com', 'baemin123', 01012348888, 0, '2021-04-06', '2021-04-12');
INSERT INTO member VALUES(seq_mid.nextval, '이승건', 'toss@gmail.com', 'toss123', 01012349999, 0, '2021-04-12', '2021-04-13');
INSERT INTO member VALUES(seq_mid.nextval, '안성우', 'zigbang@gmail.com', 'zigbang123', 01012351111, 0, '2021-04-01', '2021-04-02');
INSERT INTO member VALUES(seq_mid.nextval, '김팀쿡', 'apple@gmail.com', 'apple123', 01012353333, 0, '2021-04-02', '2021-04-14');
INSERT INTO member VALUES(seq_mid.nextval, '관리자', 'manager@kkinikkili.com', 'kkinimaster', 01012364444, 2, '2021-04-26', '2021-04-26');

INSERT INTO member VALUES(seq_mid.nextval, '멤버1', 'member1@gmail.com', 'member123', 01012364444, 2, '2021-05-01', '2021-05-26');
INSERT INTO member VALUES(seq_mid.nextval, '멤버2', 'member2@gmail.com', 'member123', 01012364444, 2, '2021-03-02', '2021-03-02');
INSERT INTO member VALUES(seq_mid.nextval, '멤버3', 'member3@gmail.com', 'member123', 01012364444, 2, '2021-05-02', '2021-05-02');

/* host */
/* 임시 DB상 회원번호 1~6번만 호스트 권한 보유 */
/* 신청일자 인증파일 결과 */
INSERT INTO host VALUES(1, 'pic1.jpg', '삼성', '', 104500, '2021-04-01', '명함1.jpg', '1-1 개인의 존엄성과 다양성을 존중한다
개인의 존엄성과 다양성모든 사람의 기본적인 인권을 존중한다강제노동, 임금착취 및 어린이 노동 등은 어떠한 경우에도 허용하지 않는다고객, 종업원 등 모든 이해관계자에 대해 국적, 인종, 성별, 종교 등에 따른 차별을 하지 않는다
1-2 법과 상도의에 따라 공정하게 경쟁한다
법과 상도의국가와 지역사회의 각종 법규를 지키고, 시장경쟁질서를 존중하며 정당한 방법으로 경쟁한다상도의에 벗어난 부정한 방법으로 부당한 이득을 취하지 않는다사업활동에 있어서 대가성 선물이나 뇌물, 향응을 주고 받지 않는다
1-3 정확한 회계기록을 통해 회계의 투명성을 유지한다
회계의 투명성모든 이해관계자들이 사업활동을 객관적으로 이해할 수 있도록 회사의 모든 거래를 정확하게 기록하고 관리한다각국의 회계관련 법규 및 국제적으로 통용되는 회계기준을 준수한다법이 정하는 바에 따라 회사의 재무적 변동 등 경영상의 주요사항 및 기업정보를 성실하게 공시한다
1-4 정치에 개입하지 않으며 중립을 유지한다
정치 중립개인의 참정권과 정치적 의사를 존중하되, 회사내에서는 정치활동을 하지 않는다회사의 자금, 인력, 시설 등을 정치적 목적으로 사용하지 않는다불법적인 기부금 등 금품을 제공하지 않는다', '2020-04-01');
INSERT INTO host VALUES(2, 'pic2.jpg', 'SK', '', 76000, '2021-04-02', '명함2.jpg', 'SK의 모든 구성원은 SKMS에 대한 확신과 열정을 가지고 자발적 · 의욕적으로 이를 실천하고 있습니다.
이를 통해 스스로의 행복과 이해관계자의 행복을 동시에 추구해나갑니다.
SK구성원들은SK라는공동체와함께할때더큰행복을
이룰수있다는믿음과신뢰를가지고스스로행복을창출하여
행복의파이를키워나갑니다.
SK는이해관계자행복을위해회사가창출하는모든가치를
사회적가치라정의하고, 적극적으로창출해나가고있습니다.
자발적·의욕적두뇌활용이이루어진모습을 ‘패기’로정의하고,
패기있는구성원을육성해나갑니다.', '2020-04-02');
INSERT INTO host VALUES(3, 'pic3.jpg', '쿠팡', '', 95000, '2021-04-02', '명함3.jpg', '쿠팡은 고객이 쿠팡앱을 열어보는 순간부터 상품을 문 앞으로 배송받는 순간까지, 고객 한 분 한 분에게 감동을 줄 수 있도록 쇼핑의 경험을 새롭게 창조하고 있습니다.', '2020-04-02');
INSERT INTO host VALUES(4, 'pic4.jfif', '네이버', '', 47500, '2021-04-03', '명함4.jpg', '네이버(주)는 한국 최대 검색포털 네이버 뿐만 아니라, 전 세계 2억 명이 사용하고 있는 모바일 메신저 라인, 동영상 카메라 스노우, 디지털 만화 서비스 네이버웹툰 등을 서비스하고 있는 글로벌 ICT 기업입니다. 네이버는 인공지능, 로보틱스, 모빌리티 등 미래 기술에 대한 지속적인 연구개발을 통해 기술 플랫폼의 변화와 혁신을 추구하며 세계 각국의 수많은 이용자와 다양한 파트너들이 함께 성장할 수 있도록 노력하고 있습니다.', '2020-04-03');
INSERT INTO host VALUES(5, 'pic5.jpg', '카카오', '', 38000, '2021-04-04', '명함5.jpg', '카카오스럽나요? 카카오 크루는 종종 이렇게 묻곤 합니다.
우리의 관점, 행동하는 방법, 지향하는 목표까지 카카오스러움은
이미 우리 안에 스며들어 있습니다. 우리가 더 나은 세상을 만들기 위해
고민하면서 자연스럽게 체득한 태도이자 본질이기 때문입니다.
앞으로도 우리는 카카오스러움에서 고민을 시작하고, 답을 찾을 것입니다.', '2020-04-04');
INSERT INTO host VALUES(6, 'pic6.jpg', '라인', '', 47500, '2021-04-05', '명함6.jpg', '라인라인', '2020-04-05');

/* contact */
INSERT INTO contact VALUES(seq_cid.nextval, 4, 7, TO_CHAR(TO_DATE('20210427120000', 'YYYYMMDDHH24MISS'), 'YYYY-MM-DD HH24:MI:SS'), '구글링하지말고 이제 웨일링하자', '판교역', '경기 성남시 분당구 판교역로 지하 160', 
    '2021-05-01 12:30', 1000, 20000, 0);
INSERT INTO contact VALUES(seq_cid.nextval, 1, 8, TO_CHAR(TO_DATE('20210427150000', 'YYYYMMDDHH24MISS'), 'YYYY-MM-DD HH24:MI:SS'), '삼성공화국 Q&A', '스시쿤 판교', '경기 성남시 분당구 대왕판교로 660 유스페이스몰 1차 지하1층 115호', 
    '2021-05-02 12:30', 2000, 50000, 0);
INSERT INTO contact VALUES(seq_cid.nextval, 2, 9, TO_CHAR(TO_DATE('20210428210000', 'YYYYMMDDHH24MISS'), 'YYYY-MM-DD HH24:MI:SS'), 'KT보다 SK로 가야하는 이유', '봉피양 판교점', '경기 성남시 분당구 판교역로 235 H스퀘어 N동 121,122호', 
    '2021-05-03 12:30', 3000, 10000, 0);
INSERT INTO contact VALUES(seq_cid.nextval, 3, 10, TO_CHAR(TO_DATE('20210429120000', 'YYYYMMDDHH24MISS'), 'YYYY-MM-DD HH24:MI:SS'), '쿠팡은 어떻게 중견기업이 되었나', '황제갈비 판교점', '경기 성남시 분당구 대왕판교로 670 유스페이스2A동 1층 104호', 
    '2021-05-04 12:30', 4000, 20000, 0);
INSERT INTO contact VALUES(seq_cid.nextval, 4, 7, TO_CHAR(TO_DATE('20210429150000', 'YYYYMMDDHH24MISS'), 'YYYY-MM-DD HH24:MI:SS'), '구글링하지말고 이제 웨일링하자', '판교역', '경기 성남시 분당구 판교역로 지하 160', 
    '2021-05-05 12:30', 5000, 30000, 0);
INSERT INTO contact VALUES(seq_cid.nextval, 5, 8, TO_CHAR(TO_DATE('20210429180000', 'YYYYMMDDHH24MISS'), 'YYYY-MM-DD HH24:MI:SS'), 'IT 직장인들의 종착역 카카오로 당신을 초대합니다.', '송도갈비 판교브릿지타워점', '경기 성남시 분당구 판교로227번길 6', 
    '2021-05-06 12:30', 6000, 40000, 0);
INSERT INTO contact VALUES(seq_cid.nextval, 6, 9, TO_CHAR(TO_DATE('20210429210000', 'YYYYMMDDHH24MISS'), 'YYYY-MM-DD HH24:MI:SS'), '일본시장을 지배한 라인, 신중호입니다.', '이오오', '경기 성남시 분당구 판교로255번길 9-22 112,113호', 
    '2021-05-07 12:30', 7000, 50000, 0);
INSERT INTO contact VALUES(seq_cid.nextval, 1, 10, TO_CHAR(TO_DATE('20210430073000', 'YYYYMMDDHH24MISS'), 'YYYY-MM-DD HH24:MI:SS'), '삼성공화국 Q&A', '스시쿤 판교', '경기 성남시 분당구 대왕판교로 660 유스페이스몰 1차 지하1층 115호', 
    '2021-05-08 12:30', 8000, 60000, 0);
INSERT INTO contact VALUES(seq_cid.nextval, 2, 7, TO_CHAR(TO_DATE('20210430090000', 'YYYYMMDDHH24MISS'), 'YYYY-MM-DD HH24:MI:SS'), 'KT보다 SK로 가야하는 이유', '봉피양 판교점', '경기 성남시 분당구 판교역로 235 H스퀘어 N동 121,122호', 
    '2021-05-09 12:30', 9000, 70000, 0);
INSERT INTO contact VALUES(seq_cid.nextval, 3, 8, TO_CHAR(TO_DATE('20210430100000', 'YYYYMMDDHH24MISS'), 'YYYY-MM-DD HH24:MI:SS'), '쿠팡은 어떻게 중견기업이 되었나', '황제갈비 판교점', '경기 성남시 분당구 대왕판교로 670 유스페이스2A동 1층 104호', 
    '2021-05-10 12:30', 10000, 80000, 0);


/* cmt */
INSERT INTO cmt VALUES(seq_cmt_id.nextval, 1, 7, '2021-04-19', '통신료 할인좀요');
INSERT INTO cmt VALUES(seq_cmt_id.nextval, 2, 8, '2021-04-19', '댓글2');
INSERT INTO cmt VALUES(seq_cmt_id.nextval, 3, 9, '2021-04-19', '댓글3');
INSERT INTO cmt VALUES(seq_cmt_id.nextval, 4, 10, '2021-04-19', '댓글4');

/* notice */
INSERT INTO notice VALUES(seq_notice_no.nextval, '2021-04-01', '끼니끼리 서비스 임시 오픈', '안녕하세요. 끼니끼리입니다. 임시 베타서비스가 오픈되었습니다');
INSERT INTO notice VALUES(seq_notice_no.nextval, '2021-04-03', '님들 여기보셈', '♚♚히어로즈 오브 더 스☆톰♚♚가입시$$전원 카드팩☜☜뒷면100%증정※ ♜월드오브 워크래프트♜펫 무료증정￥ 특정조건 §§디아블로3§§★공허의유산★초상화♜오버워치♜겐지스킨￥획득기회@@@ 즉시이동http://kr.battle.net/heroes/ko/');
INSERT INTO notice VALUES(seq_notice_no.nextval, '2021-04-04', '죄송합니다', '서버에 혼란이 생겨 관리자 권한에 위협을 받았습니다.');
INSERT INTO notice VALUES(seq_notice_no.nextval, '2021-04-06', '신규회원 여러분 반갑습니다', '안녕하세요. 끼니끼리입니다. 잘 부탁드립니다.');
INSERT INTO notice VALUES(seq_notice_no.nextval, '2021-04-10', '끼니끼리 정규 오픈', '안녕하세요. 끼니끼리입니다. 제가 돌아왔습니다.');

/* account */
INSERT INTO account VALUES(1, 12500);

/* bookmark */
INSERT INTO bookmark VALUES(1, 2);
INSERT INTO bookmark VALUES(1, 3);
INSERT INTO bookmark VALUES(1, 4);
INSERT INTO bookmark VALUES(3, 2);
INSERT INTO bookmark VALUES(3, 4);
INSERT INTO bookmark VALUES(3, 5);
INSERT INTO bookmark VALUES(3, 6);
INSERT INTO bookmark VALUES(7, 8);
INSERT INTO bookmark VALUES(7, 9);
INSERT INTO bookmark VALUES(7, 10);

commit;

