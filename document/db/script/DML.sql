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

/* host */
/* 임시 DB상 회원번호 1~6번만 호스트 권한 보유 */
INSERT INTO host VALUES(1, 'pic1.jpg', '삼성', '', 104500);
INSERT INTO host VALUES(2, 'pic2.jpg', 'SK', '', 76000);
INSERT INTO host VALUES(3, 'pic3.jpg', '쿠팡', '', 95000);
INSERT INTO host VALUES(4, 'pic4.jfif', '네이버', '', 47500);
INSERT INTO host VALUES(5, 'pic5.jpg', '카카오', '', 38000);
INSERT INTO host VALUES(6, 'pic6.jpg', '라인', '', 47500);

/* contact */
INSERT INTO contact VALUES(seq_cid.nextval, 4, 9, '2021-04-05', '구글링하지말고 이제 웨일링하자', '판교역', '경기 성남시 분당구 판교역로 지하 160', '2021-04-06 12:30:00', 1000, 20000, 1);
INSERT INTO contact VALUES(seq_cid.nextval, 1, 9, '2021-04-06', '삼성공화국 Q&A', '스시쿤 판교', '경기 성남시 분당구 대왕판교로 660 유스페이스몰 1차 지하1층 115호', '2021-04-07 12:30:00', 2000, 50000, 1);
INSERT INTO contact VALUES(seq_cid.nextval, 2, 9, '2021-04-07', 'KT보다 SK로 가야하는 이유', '봉피양 판교점', '경기 성남시 분당구 판교역로 235 H스퀘어 N동 121,122호', '2021-04-08 12:30:00', 3000, 10000, 1);
INSERT INTO contact VALUES(seq_cid.nextval, 3, 9, '2021-04-08', '쿠팡은 어떻게 중견기업이 되었나', '황제갈비 판교점', '경기 성남시 분당구 대왕판교로 670 유스페이스2A동 1층 104호', '2021-04-09 12:30:00', 4000, 20000, 1);
INSERT INTO contact VALUES(seq_cid.nextval, 4, 9, '2021-04-09', '구글링하지말고 이제 웨일링하자', '판교역', '경기 성남시 분당구 판교역로 지하 160', '2021-04-10 12:30:00', 5000, 30000, 1);
INSERT INTO contact VALUES(seq_cid.nextval, 5, 9, '2021-04-10', 'IT 직장인들의 종착역 카카오로 당신을 초대합니다.', '송도갈비 판교브릿지타워점', '경기 성남시 분당구 판교로227번길 6', '2021-04-11 12:30:00', 6000, 40000, 1);
INSERT INTO contact VALUES(seq_cid.nextval, 6, 9, '2021-04-11', '일본시장을 지배한 라인, 신중호입니다.', '이오오', '경기 성남시 분당구 판교로255번길 9-22 112,113호', '2021-04-12 12:30:00', 7000, 50000, 1);
INSERT INTO contact VALUES(seq_cid.nextval, 1, 9, '2021-04-12', '삼성공화국 Q&A', '스시쿤 판교', '경기 성남시 분당구 대왕판교로 660 유스페이스몰 1차 지하1층 115호', '2021-04-13 12:30:00', 8000, 60000, 1);
INSERT INTO contact VALUES(seq_cid.nextval, 2, 9, '2021-04-13', 'KT보다 SK로 가야하는 이유', '봉피양 판교점', '경기 성남시 분당구 판교역로 235 H스퀘어 N동 121,122호', '2021-04-14 12:30:00', 9000, 70000, 1);
INSERT INTO contact VALUES(seq_cid.nextval, 3, 9, '2021-04-14', '쿠팡은 어떻게 중견기업이 되었나', '황제갈비 판교점', '경기 성남시 분당구 대왕판교로 670 유스페이스2A동 1층 104호', '2021-04-15 12:30:00', 10000, 80000, 1);


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

