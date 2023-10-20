CREATE DATABASE team34;
USE team34;

-- 회원
CREATE TABLE user(
  id VARCHAR(20) PRIMARY KEY NOT NULL,
  pw VARCHAR(300) NOT NULL,
  NAME VARCHAR(50),
  email VARCHAR(100) NOT NULL,
  tel VARCHAR(20) NOT NULL,
  addr1 VARCHAR(200),
  addr2 VARCHAR(100),
  postcode VARCHAR(10),
  regdate DATETIME DEFAULT CURRENT_TIMESTAMP(),
  birth DATE,
  pt INT(11) DEFAULT 0,
  visited INT(11) DEFAULT 0,
  isStudy BOOLEAN DEFAULT false);
  
-- 회원 더미데이터
SELECT * FROM user;
INSERT INTO user VALUES('admin','$2a$10$KXY.EhEskta7wG/HvMSeZ.CQ4FuGQZOmaHTL2eZPnidD6AUvc.rUS', '관리자', 'admin@edu.com', '010-1234-5678', NULL, NULL, NULL, '2022-10-01', '2000-01-01', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO user VALUES('test111','$2a$10$KXY.EhEskta7wG/HvMSeZ.CQ4FuGQZOmaHTL2eZPnidD6AUvc.rUS', '테스트', 'test@edu.com', '010-5252-5252', NULL, NULL, NULL, '2022-11-01', '2001-01-01', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO user VALUES('test121','$2a$10$KXY.EhEskta7wG/HvMSeZ.CQ4FuGQZOmaHTL2eZPnidD6AUvc.rUS', '테스트', 'test@edu.com', '010-5252-5252', NULL, NULL, NULL, '2022-12-01', '2001-01-01', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO user VALUES('test122','$2a$10$KXY.EhEskta7wG/HvMSeZ.CQ4FuGQZOmaHTL2eZPnidD6AUvc.rUS', '테스트', 'test@edu.com', '010-5252-5252', NULL, NULL, NULL, '2022-12-01', '2001-01-01', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO user VALUES('test11','$2a$10$KXY.EhEskta7wG/HvMSeZ.CQ4FuGQZOmaHTL2eZPnidD6AUvc.rUS', '테스트', 'test@edu.com', '010-5252-5252', NULL, NULL, NULL, '2023-01-01', '2001-01-01', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO user VALUES('test12','$2a$10$KXY.EhEskta7wG/HvMSeZ.CQ4FuGQZOmaHTL2eZPnidD6AUvc.rUS', '테스트', 'test@edu.com', '010-5252-5252', NULL, NULL, NULL, '2023-01-01', '2001-01-01', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO user VALUES('test13','$2a$10$KXY.EhEskta7wG/HvMSeZ.CQ4FuGQZOmaHTL2eZPnidD6AUvc.rUS', '테스트', 'test@edu.com', '010-5252-5252', NULL, NULL, NULL, '2023-01-01', '2001-01-01', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO user VALUES('test14','$2a$10$KXY.EhEskta7wG/HvMSeZ.CQ4FuGQZOmaHTL2eZPnidD6AUvc.rUS', '테스트', 'test@edu.com', '010-5252-5252', NULL, NULL, NULL, '2023-01-01', '2001-01-01', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO user VALUES('test21','$2a$10$KXY.EhEskta7wG/HvMSeZ.CQ4FuGQZOmaHTL2eZPnidD6AUvc.rUS', '테스트', 'test@edu.com', '010-5252-5252', NULL, NULL, NULL, '2023-02-01', '2001-01-01', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO user VALUES('test22','$2a$10$KXY.EhEskta7wG/HvMSeZ.CQ4FuGQZOmaHTL2eZPnidD6AUvc.rUS', '테스트', 'test@edu.com', '010-5252-5252', NULL, NULL, NULL, '2023-02-01', '2001-01-01', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO user VALUES('test31','$2a$10$KXY.EhEskta7wG/HvMSeZ.CQ4FuGQZOmaHTL2eZPnidD6AUvc.rUS', '테스트', 'test@edu.com', '010-5252-5252', NULL, NULL, NULL, '2023-03-01', '2001-01-01', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO user VALUES('test41','$2a$10$KXY.EhEskta7wG/HvMSeZ.CQ4FuGQZOmaHTL2eZPnidD6AUvc.rUS', '테스트', 'test@edu.com', '010-5252-5252', NULL, NULL, NULL, '2023-04-01', '2001-01-01', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO user VALUES('test51','$2a$10$KXY.EhEskta7wG/HvMSeZ.CQ4FuGQZOmaHTL2eZPnidD6AUvc.rUS', '테스트', 'test@edu.com', '010-5252-5252', NULL, NULL, NULL, '2023-05-01', '2001-01-01', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO user VALUES('test52','$2a$10$KXY.EhEskta7wG/HvMSeZ.CQ4FuGQZOmaHTL2eZPnidD6AUvc.rUS', '테스트', 'test@edu.com', '010-5252-5252', NULL, NULL, NULL, '2023-05-01', '2001-01-01', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO user VALUES('test53','$2a$10$KXY.EhEskta7wG/HvMSeZ.CQ4FuGQZOmaHTL2eZPnidD6AUvc.rUS', '테스트', 'test@edu.com', '010-5252-5252', NULL, NULL, NULL, '2023-05-01', '2001-01-01', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO user VALUES('test61','$2a$10$KXY.EhEskta7wG/HvMSeZ.CQ4FuGQZOmaHTL2eZPnidD6AUvc.rUS', '테스트', 'test@edu.com', '010-5252-5252', NULL, NULL, NULL, '2023-06-01', '2001-01-01', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO user VALUES('test71','$2a$10$KXY.EhEskta7wG/HvMSeZ.CQ4FuGQZOmaHTL2eZPnidD6AUvc.rUS', '테스트', 'test@edu.com', '010-5252-5252', NULL, NULL, NULL, '2023-07-01', '2001-01-01', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO user VALUES('test81','$2a$10$KXY.EhEskta7wG/HvMSeZ.CQ4FuGQZOmaHTL2eZPnidD6AUvc.rUS', '테스트', 'test@edu.com', '010-5252-5252', NULL, NULL, NULL, '2023-08-01', '2001-01-01', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO user VALUES('test82','$2a$10$KXY.EhEskta7wG/HvMSeZ.CQ4FuGQZOmaHTL2eZPnidD6AUvc.rUS', '테스트', 'test@edu.com', '010-5252-5252', NULL, NULL, NULL, '2023-08-01', '2001-01-01', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO user VALUES('test91','$2a$10$KXY.EhEskta7wG/HvMSeZ.CQ4FuGQZOmaHTL2eZPnidD6AUvc.rUS', '테스트', 'test@edu.com', '010-5252-5252', NULL, NULL, NULL, '2023-09-01', '2001-01-01', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO user VALUES('test92','$2a$10$KXY.EhEskta7wG/HvMSeZ.CQ4FuGQZOmaHTL2eZPnidD6AUvc.rUS', '테스트', 'test@edu.com', '010-5252-5252', NULL, NULL, NULL, '2023-09-01', '2001-01-01', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO user VALUES('test101','$2a$10$KXY.EhEskta7wG/HvMSeZ.CQ4FuGQZOmaHTL2eZPnidD6AUvc.rUS', '테스트', 'test@edu.com', '010-5252-5252', NULL, NULL, NULL, '2023-10-01', '2001-01-01', DEFAULT, DEFAULT, DEFAULT);


-- 커뮤니티 카테고리 테이블 생성
CREATE TABLE category(
   cate VARCHAR(5) PRIMARY KEY NOT NULL,
   cateName VARCHAR(100) NOT NULL);


-- 카테고리 테이블 데이터
INSERT INTO category VALUES('A', '자유게시판');
INSERT INTO category VALUES('B', '교육정보');
INSERT INTO category VALUES('C', '강의 추천');
INSERT INTO category VALUES('D', '진로상담');


-- 게시판 테이블 생성
CREATE TABLE board(
  seq INT PRIMARY KEY AUTO_INCREMENT,
  cate VARCHAR(5) NOT NULL,
  title VARCHAR(200) NOT NULL,
  content VARCHAR(1000),
  nickname VARCHAR(20),
  regdate DATETIME DEFAULT CURRENT_TIMESTAMP(),
  visited INT DEFAULT 0,
  FOREIGN KEY(cate) REFERENCES category(cate) ON DELETE CASCADE,
  FOREIGN KEY(nickname) REFERENCES user(id) ON DELETE CASCADE);

/* 자유게시판 더미데이터 */
INSERT INTO board(cate, title, content, nickname)
VALUES ('A', '요즘 나만 느끼는 일상 이야기', '안녕하세요! 요즘 일상에서 느끼는 이런 저런 생각들을 나눌 수 있는 자리가 필요해서 이렇게 글을 써봅니다. 평범한 일상에서 느껴지는 작은 기쁨부터 고민, 궁금증까지 다양한 이야기들을 나눠봐요. 함께 이야기 나누면서 조금 더 나를 알아가고 싶어요. 여러분의 이야기도 기대해요!', 'test101');
INSERT INTO board(cate, title, content, nickname)
VALUES ('A', '먹는 즐거움, 나만의 맛 여행', '안녕하세요, 맛집 탐험가로 떠나는 나만의 맛 여행 이야기를 공유하려고 합니다! 맛있는 음식을 찾아 나날이 다양한 식도락을 즐기며, 그 맛에 빠져보는 나만의 여정을 담아봅니다. 맛있는 음식과 함께 나누는 추억, 그 무엇도 대신할 수 없는 행복이에요. 같이 맛있는 이야기 나누어봐요!', 'test91');
INSERT INTO board(cate, title, content, nickname)
VALUES ('A', '취미를 통한 나만의 작은 행복', ' 안녕하세요! 취미 생활을 통해 나만의 작은 행복을 찾아가는 여정을 나누고 싶어요. 그림 그리기, 음악 연주, 독서, 등산, 무엇이든지 제게 특별한 순간을 선사하는 취미들을 통해 일상의 소소한 기쁨을 느끼고 있어요. 여러분의 취미와 나누고 싶은 경험이 있다면 언제든지 말씀해주세요!', 'test92');
INSERT INTO board(cate, title, content, nickname)
VALUES ('A', '감성을 담아 풀어내는 나만의 시간', '안녕하세요, 여기는 감성의 풍부한 이야기들을 나눌 수 있는 공간입니다. 나만의 감정을 시를 통해 표현하고, 일상의 감동을 나누며 마음을 편하게 풀어보려고 합니다. 시를 통해 나만의 감성을 표현하는 순간들을 함께해요. 여러분의 감성적인 이야기도 함께 들려주세요.', 'test81');
INSERT INTO board(cate, title, content, nickname)
VALUES ('A', '여행이야기, 세상을 누비다', '안녕하세요! 여행을 통해 세계 각지에서 느낀 감동과 경험을 공유하고 싶어서 글을 씁니다. 다양한 나라와 문화를 경험하며 얻은 인상적인 이야기들을 담아봐요. 여행이 주는 새로운 시야와 경험을 통해 나만의 세계를 만들어나가는 여정을 함께 나누어봐요!', 'test82');

/* 교육정보 게시판 더미데이터 */
INSERT INTO board(cate, title, content, nickname)
VALUES ('B', '똑똑해지자! 유용한 학습 정보 공유', '안녕하세요! 이 공간은 학습과 교육에 관한 다양한 정보를 공유하고 함께 성장하는 공간입니다. 학교 공부에서 시작해서 취미로 꾸준히 배우는 것, 또는 현실에서 유용한 기술까지 학습과 관련된 모든 주제를 다룰 예정이에요. 함께 배워가며 더 똑똑해지는 여정에 동참해보세요!', 'test82');
INSERT INTO board(cate, title, content, nickname)
VALUES ('B', '직업을 위한 교육과 전문 지식 공유', '안녕하세요! 여기는 다양한 직업을 위한 교육 정보와 전문 지식을 공유하는 공간입니다. 각 분야의 전문가들이 직업과 관련된 유용한 정보, 교육 경로, 취업 준비 팁 등을 나누어드리며, 여러분의 꿈을 향한 첫 걸음을 함께 응원하고 지원해드릴게요. 함께 멋진 직업을 향해 나아가요!', 'test71');
INSERT INTO board(cate, title, content, nickname)
VALUES ('B', '부모님을 위한 교육 안내 및 조언', '안녕하세요, 부모님을 위한 교육 관련 정보를 나누는 공간입니다. 자녀의 교육과 관련된 궁금증, 교육 방법, 학교 선택, 학습 도구 소개부터 아이들의 성장과 관련된 다양한 이야기들을 함께 공유하고 상담할 수 있는 공간이에요. 부모님들의 이야기를 기다리고 있어요!', 'test82');
INSERT INTO board(cate, title, content, nickname)
VALUES ('B', '효과적인 학습 방법과 꿀팁 공유', '안녕하세요, 학습을 더욱 효과적으로 하는 방법과 유용한 꿀팁들을 나누고자 하는 공간입니다. 학교에서 공부하는 것부터 개인적으로 공부하는 방법, 집중력 향상을 위한 습관 등 학습과 관련된 다양한 정보들을 함께 공유하고 배워가는 시간을 가지고자 합니다. 함께 공부해요!', 'test61');
INSERT INTO board(cate, title, content, nickname)
VALUES ('B', '학교 생활, 스트레스 극복 팁 공유', '안녕하세요! 학교 생활에서 느끼는 스트레스를 극복하고 즐겁게 보내기 위한 꿀팁을 공유하는 공간입니다. 공부와 여가를 잘 조절하며, 친구 관계에서의 고민, 시험 스트레스 해소법 등 학교 생활에서 도움이 될만한 다양한 정보를 나누어보려고 해요!', 'test61');

/* 강의 추천 더미데이터 */
INSERT INTO board(cate, title, content, nickname)
VALUES ('C', '나에게 도움을 준 강의 추천', '안녕하세요! 여기는 수강 완료하거나 수강 중인 강의 중 다른 사람들에게 추천하고 싶은 강의를 공유하는 공간입니다.', 'admin');

/* 진로상담 커뮤니티 더미데이터 */
INSERT INTO board(cate, title, content, nickname)
VALUES ('D', '미래를 그리는 진로상담 친구들', '안녕하세요! 이 곳은 당신의 미래를 함께 그리고 상담해주는 공간입니다. 진로에 관한 고민, 궁금증, 희망 등 모든 것을 자유롭게 나누고 고민을 함께 나눌 수 있는 친구들이 여기에 있어요. 함께 당신만의 꿈과 목표를 향해 나아가봐요. 당신의 미래를 응원합니다!', 'admin');
INSERT INTO board(cate, title, content, nickname)
VALUES ('D', '꿈을 향한 진로탐색 여행', '안녕하세요! 여기는 당신의 꿈을 찾아가기 위한 진로탐색 여행지입니다. 어떤 진로를 선택해야 할지 망설이고 있다면 함께 여행하며 당신의 강점, 흥미, 가치관을 찾아보아요. 꿈을 향한 여정에서 당신에게 맞는 길을 찾을 수 있도록 도와드릴게요!', 'test51');
INSERT INTO board(cate, title, content, nickname)
VALUES ('D', '나만의 길을 찾는 진로상담 모임', '안녕하세요! 이곳은 나만의 길을 찾고자 하는 당신을 위한 진로상담 모임입니다. 다양한 진로에 대한 이야기, 성장하는 과정에서의 고민, 앞으로의 목표를 나누며 함께 더 나은 미래를 향해 나아갈 수 있도록 도움을 드릴게요. 나만의 진로를 찾는 여정, 함께해요!', 'test53');
INSERT INTO board(cate, title, content, nickname)
VALUES ('D', '청춘의 선택, 진로에 대한 이야기', '안녕하세요! 청춘의 선택인 진로에 대해 이야기 나누는 공간입니다. 다양한 진로 선택, 진로에 대한 고민, 준비 과정에서의 이슈들을 나누며 함께 당신에게 맞는 길을 찾아가봐요. 우리 모두 함께 꿈을 향해 달려봅시다!', 'test52');
INSERT INTO board(cate, title, content, nickname)
VALUES ('D', '진로 여행을 떠나는 항해 모임', '안녕하세요! 우리는 당신의 진로 여행을 함께 항해할 동료입니다. 함께 세계 여행처럼 다양한 진로를 탐험하며, 당신의 역량과 흥미를 발견해보아요. 진로에 대한 이야기, 정보, 충고 등을 나누며 당신의 항해를 응원하고 지원할 준비가 되어있어요! 함께 떠나볼까요?', 'admin');

-- 커뮤니티 댓글 테이블 생성
CREATE TABLE COMMENT(
   comNo INT PRIMARY KEY AUTO_INCREMENT,
   seq INT NOT NULL,
   nickname VARCHAR(20) NOT NULL,
   resdate DATETIME DEFAULT CURRENT_TIMESTAMP(),
   content VARCHAR(1000) NOT NULL,
   FOREIGN KEY(seq) REFERENCES board(seq) ON DELETE CASCADE,
   FOREIGN KEY(nickname) REFERENCES user(id) ON DELETE CASCADE
);


-- 공지사항 테이블 생성
CREATE TABLE notice (
   seq INT AUTO_INCREMENT PRIMARY KEY,
   title VARCHAR(100) NOT NULL,
   content VARCHAR(1000) NOT NULL,
   nickname VARCHAR(20),
   regdate DATETIME DEFAULT CURRENT_TIMESTAMP(),
   visited INT DEFAULT 0
);


-- faq 테이블 생성
CREATE TABLE faq (
   fno INT  PRIMARY KEY AUTO_INCREMENT ,
   question VARCHAR(1000) NOT NULL,
   answer VARCHAR(1000) NOT NULL,
   cnt INT DEFAULT 0 NOT NULL
);

-- faq 더미 데이터 추가
INSERT INTO faq(question, answer) VALUES('웹사이트에 어떻게 가입하나요?', '회원 가입 페이지에서 필요한 정보를 입력하여 가입할 수 있습니다.');
INSERT INTO faq(question, answer) VALUES('게시물을 어떻게 작성하나요?', '커뮤니티 페이지의 "글 작성" 버튼을 클릭하여 게시물을 작성할 수 있습니다.');
INSERT INTO faq(question, answer) VALUES('다른 회원들의 게시물에 댓글을 달고 싶어요. 어떻게 해야 하나요?','게시물의 하단에 있는 "댓글 작성" 영역에 댓글을 입력하여 등록할 수 있습니다.');
INSERT INTO faq(question, answer) VALUES('제가 작성한 글이 갑자기 사라졌어요', '부적절한 내용은 관리자가 예고 없이 삭제할 수 있습니다. 커뮤니티 규칙을 지켜주세요:)');
INSERT INTO faq(question, answer) VALUES('개인 정보 보호 정책은 무엇인가요?', '웹사이트의 개인 정보 보호 정책은 "회원가입의 회원약관동의" 페이지에서 확인할 수 있습니다.');
INSERT INTO faq(question, answer) VALUES('문의사항이 있을 때 어떻게 연락할 수 있나요?', '고객지원의 "QnA" 페이지에서 문의글을 작성하여 문의할 수 있습니다.');
INSERT INTO faq(question, answer) VALUES('어떤 유형의 교육자료를 제공하나요?', '초등학교, 중학교 및 고등학교 학생들을 위한 교과서, 참고서 및 워크북을 포함한 다양한 교육자료를 제공합니다.');
INSERT INTO faq(question, answer) VALUES('책은 실물 및 디지털 형식으로 모두 제공되나요?', '네, 대부분의 책은 실물 및 디지털 형식으로 제공되며 다양한 학습 선호도를 고려합니다.');
INSERT INTO faq(question, answer) VALUES('책이나 주제에 대한 제안을 할 수 있나요?', '물론입니다! 저희는 모든 제안을 소중히 생각합니다. 고객 지원팀에 의견을 보내주시면 됩니다.');
INSERT INTO faq(question, answer) VALUES('책은 정기적으로 업데이트되나요?', '네, 정확성과 관련성을 보장하기 위해 최신 교과서 및 참고 자료의 최신 판을 제공하기 위해 노력하고 있습니다.');


-- QNA
CREATE TABLE qna(
  qno int PRIMARY KEY AUTO_INCREMENT,   			-- 번호
  title VARCHAR(100) NOT NULL,   					-- 제목
  content VARCHAR(1000) NOT NULL,   				-- 내용`
  author VARCHAR(16),   								-- 작성자
  resdate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,  -- 등록일
  lev INT DEFAULT 0, 									-- 질문(0), 답변(1)
  par INT DEFAULT 0,													-- 질문(자신 레코드의 qno), 답변(질문의 글번호)
  FOREIGN KEY(author) REFERENCES user(id) ON DELETE CASCADE);

-- 질문글 
INSERT INTO qna VALUES (DEFAULT, '어떤 주제의 강의를 들어야 할까요?', '공부하고자 하는 분야에 적합한 강의 주제를 선택하기 위한 조언이 필요합니다.', 'test111' ,DEFAULT, DEFAULT, 1);
INSERT INTO qna VALUES (DEFAULT, '동영상 학습에서 집중력을 높이는 방법이 뭐가 있나요?', '동영상 강의를 보면서 집중력을 유지하고 향상시키는 방법에 대한 조언을 원합니다.', 'test11' ,DEFAULT, DEFAULT, 2);
INSERT INTO qna VALUES (DEFAULT, '어떻게 강의 동영상을 효율적으로 정리하고 학습할 수 있을까요?', '강의 동영상을 효과적으로 정리하고 학습에 활용하는 방법에 대한 조언이 필요합니다.', 'test12' ,DEFAULT, DEFAULT, 3);
INSERT INTO qna VALUES (DEFAULT, '동영상 강의 시간을 어떻게 최적화할 수 있을까요?', '동영상 강의를 효율적으로 활용하고, 공부 시간을 최적화하는 방법을 알고 싶습니다.', 'test122' ,DEFAULT, DEFAULT, 4);
INSERT INTO qna VALUES (DEFAULT, '동영상 강의를 볼 때 주의력을 유지하는 방법이 뭐가 있을까요?', '동영상 강의를 보면서 주의력을 높이고, 정보를 효과적으로 이해하는 방법에 대한 조언을 찾고 있습니다.', 'test21 ' ,DEFAULT, DEFAULT, 5);
INSERT INTO qna VALUES (DEFAULT, '강의 동영상을 저장하고 오프라인에서 어떻게 시청할 수 있을까요?', '강의 동영상을 저장하고, 인터넷 연결 없이 어떻게 시청할 수 있는 방법을 알고 싶습니다.', 'test92' ,DEFAULT, DEFAULT, 6);
INSERT INTO qna VALUES (DEFAULT, '동영상 강의를 활용하여 스스로 학습 스케줄을 계획하는 방법이 뭐가 있나요?', '동영상 강의를 활용하여 학습 일정을 계획하고, 학습 목표를 달성하는 방법에 대한 조언을 원합니다.', 'test61' ,DEFAULT, DEFAULT, 7);
INSERT INTO qna VALUES (DEFAULT, '강의 동영상을 더 깊이 이해하기 위한 질문 및 논의 점을 어떻게 찾을 수 있을까요?', '동영상 강의를 더 깊이 이해하고, 관련 질문을 찾는 방법을 알려주세요.', 'test81' ,DEFAULT, DEFAULT, 8);
INSERT INTO qna VALUES (DEFAULT, '동영상 강의를 보면서 메모를 어떻게 작성하고 정리할 수 있을까요?', '동영상 강의를 보면서 효과적인 메모 작성과 정리 방법을 알고 싶습니다.', 'test91' ,DEFAULT, DEFAULT,9);
INSERT INTO qna VALUES (DEFAULT, '동영상 강의를 효과적으로 검색하고 필요한 내용을 찾는 방법이 뭐가 있을까요?', '동영상 강의를 효과적으로 검색하고, 원하는 내용을 빠르게 찾는 방법을 알려주세요.', 'test71' ,DEFAULT, DEFAULT,10);

-- 답변글
INSERT INTO qna VALUES (DEFAULT, '어떤 주제의 강의를 들어야 할까요?','강의 주제를 선택할 때, 관심 있는 분야나 목표에 따라 선택하는 것이 중요합니다. 관심 있는 주제에 대한 학습은 더 효과적일 수 있으며, 목표를 달성하는데 도움이 됩니다.','admin', DEFAULT, 1,1);
INSERT INTO qna VALUES (DEFAULT, '동영상 학습에서 집중력을 높이는 방법이 뭐가 있나요?','집중력을 높이기 위해 정해진 시간 동안 주의를 집중하고, 학습 환경을 조절하고 휴식을 취하는 등의 방법을 사용할 수 있습니다.','admin', DEFAULT, 1,2);
INSERT INTO qna VALUES (DEFAULT, '어떻게 강의 동영상을 효과적으로 정리하고 학습할 수 있을까요?','동영상 강의를 정리하기 위해 요약 노트를 작성하고, 중요한 부분을 표시하며, 관련 자료를 정리하는 것이 도움이 됩니다.','admin', DEFAULT, 1,3);
INSERT INTO qna VALUES (DEFAULT, '동영상 강의 시간을 어떻게 최적화할 수 있을까요?','동영상 강의 시간을 최적화하기 위해 목표를 설정하고, 공부 시간을 일정하게 유지하며, 분량을 나누어 학습하는 것이 중요합니다.','admin', DEFAULT, 1,4);
INSERT INTO qna VALUES (DEFAULT, '동영상 강의를 볼 때 주의력을 유지하는 방법이 뭐가 있을까요?','주의력을 유지하기 위해 학습 공간을 정리하고, 동영상을 공부 목적으로 시청하며, 주의력 향상을 위한 기술을 사용할 수 있습니다.','admin', DEFAULT, 1,5);
INSERT INTO qna VALUES (DEFAULT, '강의 동영상을 저장하고 오프라인에서 어떻게 시청할 수 있을까요?','동영상을 저장하기 위해 온라인 다운로더를 사용하고, 저장된 동영상을 오프라인 모드에서 시청할 수 있는 앱을 활용할 수 있습니다.','admin', DEFAULT, 1,6);
INSERT INTO qna VALUES (DEFAULT, '동영상 강의를 활용하여 스스로 학습 스케줄을 계획하는 방법이 뭐가 있나요?','학습 스케줄을 계획하기 위해 목표를 설정하고, 시간을 할당하며, 주간 계획을 세우는 것이 도움이 됩니다.','admin', DEFAULT, 1,7);
INSERT INTO qna VALUES (DEFAULT, '강의 동영상을 더 깊이 이해하기 위한 질문 및 논의 점을 어떻게 찾을 수 있을까요?','동영상을 더 깊이 이해하기 위해 관련 서적을 찾거나, 동영상에서 제기된 질문을 따라가며 더 많은 정보를 탐구할 수 있습니다.','admin', DEFAULT, 1,8);
INSERT INTO qna VALUES (DEFAULT, '동영상 강의를 보면서 메모를 어떻게 작성하고 정리할 수 있을까요?','메모를 작성하고 정리하기 위해 중요한 내용을 요약하고, 주요 포인트를 강조하며, 메모를 주기적으로 정리하는 것이 도움이 됩니다.','admin', DEFAULT, 1,9);
INSERT INTO qna VALUES (DEFAULT, '동영상 강의를 효과적으로 검색하고 필요한 내용을 찾는 방법이 뭐가 있나요?','동영상을 검색하기 위해 키워드를 사용하고, 정확한 제목 또는 주제를 입력하며, 검색 결과를 필터링하는 방법을 사용하여 원하는 내용을 빠르게 찾을 수 있습니다.','admin', DEFAULT, 1,10);

SELECT * FROM qna;

-- 자료실 테이블 생성
CREATE TABLE dataroom (
  articleNo int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id VARCHAR(20) NOT NULL,
  title varchar(100) NOT NULL,
  content varchar(2000) NOT NULL,
  regdate timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
);


-- 업로드 된 파일 정보 테이블 생성
CREATE TABLE fileInfo(
  no int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  articleNo INT,
  saveFolder VARCHAR(300) NOT NULL,
  originFile VARCHAR(300) NOT NULL,
  saveFile VARCHAR(300) NOT NULL,
  FOREIGN KEY(articleNo) REFERENCES dataRoom(articleNo) ON DELETE CASCADE 
);

SELECT * FROM fileinfo;


-- 이벤트 글 테이블
CREATE TABLE event (
	eno int  PRIMARY KEY AUTO_INCREMENT,
   title VARCHAR(100) NOT NULL,
   content VARCHAR(5000) NOT NULL,
   STATUS VARCHAR(5) CHECK(status IN(0, 1)),
   sdate DATE,
   edate DATE,
   author VARCHAR(16),
   regdate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
   cnt INT DEFAULT 0 NOT NULL
);


-- 회원의 이벤트 접수
create table apply(
   appno int AUTO_INCREMENT PRIMARY KEY,		/* 접수 번호 */
   eno int not NULL,									/* 이벤트글 번호 */
   id varchar(100) not NULL,						/* 당첨자 아이디 */
   name varchar(100) not NULL,					/* 당첨자 이름 */
   tel varchar(13),									/* 전화번호 */
   foreign key(eno) references event(eno) on delete cascade,
   FOREIGN KEY(id) references user(id) on delete CASCADE);


-- 당첨자 리스트
create table winnerList(
   appno int auto_increment primary key not null,			
   eno int not NULL,										
   id varchar(100) not NULL,										
   name varchar(100) not NULL,						
   tel varchar(13),													
   foreign key(eno) references event(eno) on delete cascade,
   FOREIGN key(id) references user(id) on delete cascade);


--당첨자 발표 글
create table winner(
	wno int primary key AUTO_INCREMENT,			/* 당첨글 번호 */
   eno int not NULL,									/* 이벤트 글 번호 */
   title varchar(100),								/* 글 제목 */
   content varchar(1000),							/* 글 내용 */
   author varchar(100),								/* 작성자 */
   resdate datetime default CURRENT_TIMESTAMP,	/* 작성일 */
   FOREIGN key(eno) references event(eno));


-- 출석체크 테이블
CREATE TABLE attendance (
   ano INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
   id VARCHAR(20),
   attend DATE DEFAULT current_date);
	DROP TABLE attendance;
	SELECT * FROM attendance;
	
INSERT INTO attendance VALUES (DEFAULT, 'admin', 231024);
	
-- 과목 테이블 (과목코드, 과목명)
CREATE TABLE subject(
	scode VARCHAR(10) PRIMARY KEY,
	sname VARCHAR(200) NOT NULL
);

SELECT * FROM SUBJECT;
-- 과목 테이블 더미데이터
INSERT INTO SUBJECT
VALUES('wr', '논술');
INSERT INTO SUBJECT
VALUES('en', '영어');
INSERT INTO SUBJECT
VALUES('ma', '수학');
INSERT INTO SUBJECT
VALUES('ko', '국어');
INSERT INTO SUBJECT
VALUES('ch', '중국어');


-- 강사 테이블 (강사코드, 강사명, 연락처, 이메일, 강사소개, 강사 이미지)
CREATE TABLE teacher(
	tcode INT PRIMARY KEY AUTO_INCREMENT,
	tid VARCHAR(20) NOT NULL,
	tname VARCHAR(50) NOT NULL,
	ttel VARCHAR(20) NOT NULL,
	temail VARCHAR(100) NOT NULL,
	tcontent VARCHAR(1000) NOT NULL,
	saveFile VARCHAR(300) NOT NULL
);

INSERT INTO teacher VALUES (DEFAULT,'test0999', '김석우', '010-1111-2222', 'ejlee@email.com', '논술 전문가로, 명쾌한 논리와 풍부한 어휘력을 강조한 논술 교육을 제공합니다.', 'writingTeacher.jpeg');
INSERT INTO teacher VALUES (DEFAULT,'test9999', '안유진', '010-9876-5432','jwhan@email.com','논술의 스타일과 목표에 따라 학생들을 개별화된 작문 지도로 이끌어, 각자의 논술 능력을 향상시킵니다.','an.png');
INSERT INTO teacher VALUES (DEFAULT,'test0888', '강영현','010-5555-5555','dhkwon@email.com','경험 많은 영어 강사인 존은 학생들의 영어 작문 및 문법 실력 향상을 중점으로 둡니다.','englishTeacher2.jpeg');
INSERT INTO teacher VALUES (DEFAULT,'test0777' ,'유지민','010-9999-9999','sjlee@email.com','TOEFL 자격증 강사로서 마이클은 학생들을 영어 능력 시험을 준비하는 데 도움을 주며 시험 대비 전략을 강조합니다.','englishTeacher.jpeg');
INSERT INTO teacher VALUES (DEFAULT,'test0666', '임창균','010-2222-3335','sjchoi@email.com','수학적 논리와 수학 문제 해결 능력을 강조하며, 학생들이 어려운 문제를 해결하는 방법을 습득하도록 도움을 제공합니다.','mathTeacher.jpeg');
INSERT INTO teacher VALUES (DEFAULT,'test0555', '고윤정','010-3333-4444','mhkang@email.com','수학을 흥미롭게 만들기 위해 현실적인 응용과 재미있는 수학 문제를 활용한 수업을 제공합니다.','mathTeacher2.jpeg');
INSERT INTO teacher VALUES (DEFAULT,'test0444', '팜하니','010-3333-1117','yhbaek@email.com','문학과 문법을 조화롭게 가르치며, 학생들의 언어 능력을 향상시키고 작문 스킬을 개발합니다.','koreanTeacher.png');
INSERT INTO teacher VALUES (DEFAULT,'test0333', '이준기','010-2222-3338','hjcho@email.com','문학 작품 해석과 글쓰기 능력 향상에 중점을 둔 강의를 통해 학생들을 지원합니다.','koreanTeacher2.png');
INSERT INTO teacher VALUES (DEFAULT,'test0222', '송우기','010-2222-3339','jwsong@email.com','문법 교육과 작문 기술 강화를 통해 학생들이 효과적으로 글을 표현할 수 있도록 도와줍니다.','chinaTeacher.jpeg');
INSERT INTO teacher VALUES (DEFAULT,'test0111', '진항생','010-2222-3330','myu@email.com','중국어 교육 전문가로, 학생들이 중국어 문자 및 문법을 정확하게 이해하도록 돕습니다.','chinaTeacher2.jpeg');


-- 교재 테이블 생성(교재코드, 교재이름, 교재소개, 저자, 가격)
CREATE TABLE book (
	bcode VARCHAR(20) primary key NOT NULL ,
	bname VARCHAR(100) NOT NULL,
	content VARCHAR(1000) NOT NULL,
	author VARCHAR(1000) NOT NULL,
	bprice INT(11) NOT NULL
);

INSERT INTO book VALUES ('wr01', '논술 작성의 기술', '이 책은 논술을 작성하고 구조화하는 방법에 대한 실용적인 가이드를 제공합니다. 예시와 연습 문제를 통해 논술 작성 능력을 향상시킬 수 있습니다.','김석우',12000);
INSERT INTO book VALUES ('wr02', '논술의 비밀', '"논술의 비밀"은 효과적인 논술 작성을 위한 전략과 기술을 설명하는 책입니다. 각 섹션은 실용적인 팁과 예시로 구성되어 있어, 논술 능력 향상에 도움이 됩니다.','안유진',10000);
INSERT INTO book VALUES ('en01', '영어 작문의 기술','이 책은 영어로 효과적인 글을 쓰는 방법에 대한 기술과 전략을 제공합니다. 문법, 구문, 스타일 및 논리적인 구조화에 대한 교육적 내용을 다루며, 다양한 예시와 실습 문제를 제공하여 학습자가 논술 작성 능력을 향상시킬 수 있습니다.','강영현',12000);
INSERT INTO book VALUES ('en02', '영어 표현의 미학','"영어 표현의 미학"은 영어 작문을 예술로 간주하는 방법에 중점을 둡니다. 논술의 표현력과 스타일을 향상시키는 데 도움이 되는 다양한 문학 작품과 글쓰기 예시를 제공합니다. ','유지민',10000);
INSERT INTO book VALUES ('ko01', '국어 문법의 이해','이 책은 한국어 문법에 대한 이해를 향상시키는 데 도움을 줍니다. 다양한 문법 규칙과 예시를 제공하여 학습자가 효과적으로 표현할 수 있는 능력을 향상시킵니다.','고윤정',6000);
INSERT INTO book VALUES ('ko02', '국어 어휘 확장','이 책은 어휘력을 향상시키는데 중점을 두며, 다양한 어휘와 표현을 소개합니다. 어휘 확장을 통해 논술 작성과 글쓰기 능력을 향상시키는데 도움이 됩니다.','임창균',8000);
INSERT INTO book VALUES ('ma01', '수학의 기초','"수학의 기초"는 수학 개념을 이해하기 위한 기초부터 시작하는 책으로, 수학의 기본 원리와 수학적 사고 방법을 소개합니다. 학생들에게 기초를 강화하고 수학적 지식을 쌓는 데 도움이 됩니다.','팜하니',9000);
INSERT INTO book VALUES ('ma02', '고급 수학: 응용과 연습','이 책은 고급 수학 주제를 다루며, 수학을 실생활과 다양한 분야에 적용하는 방법을 제공합니다. 더 복잡한 수학 문제를 다루고자 하는 학생들에게 유용할 것입니다.','이준기',8000);
INSERT INTO book VALUES ('ch01', '중국어 기초 교재','이 책은 중국어의 기초를 가르치는 데 도움을 주는 교재로, 발음, 기본 어휘, 문법, 그리고 일상 대화를 다룹니다. 중국어를 처음 배우는 초보자에게 유용합니다.','송우기',12000);
INSERT INTO book VALUES ('ch02', '중급 중국어 학습 가이드','"중급 중국어 학습 가이드"는 중급 수준의 학습자를 위한 자료로, 의사소통 능력 향상 및 중국 문화에 대한 이해를 돕는 내용을 다룹니다. 중국어를 더 깊이 공부하고자 하는 학습자에게 유용합니다.','진항생',6000);


-- 강의 테이블 (강의코드, 강의명, 과목코드, 강사코드, 교재코드, 강의 소개, 강의 단가, 수강인원, 강의 썸네일(saveFile), 강의 시작일, 강의 종료일, (오프라인 시)강의 시작시간, 온오프 여부, 강의실)
CREATE TABLE lecture(
	lcode VARCHAR(50) PRIMARY KEY,
	lname VARCHAR(500) NOT NULL,
	scode VARCHAR(10) NOT NULL,
	tcode INT,
	bcode VARCHAR(10),
	lcontent VARCHAR(1000) NOT NULL,
	lprice INT DEFAULT 0,
	maxStudent INT DEFAULT 0,
	saveFile VARCHAR(300) NOT NULL,
	sdate DATE NOT NULL,
	edate DATE NOT NULL,
	stime TIME,
	state VARCHAR(10) CHECK(state IN ('on', 'off', 'close')),
	classroom VARCHAR(10),
	FOREIGN KEY(scode) REFERENCES SUBJECT(scode),
	FOREIGN KEY(tcode) REFERENCES teacher(tcode),
	FOREIGN KEY(bcode) REFERENCES book(bcode)
); 




-- 커리큘럼 (커리큘럼코드, 강의코드, 강좌 제목, 강의 파일, 강의 시간)
CREATE TABLE curriculum(
	ccode INT PRIMARY KEY AUTO_INCREMENT,
	lcode VARCHAR(50) NOT NULL,
	cname VARCHAR(500) NOT NULL,
	cvideo VARCHAR(500),
	FOREIGN KEY(lcode) REFERENCES lecture(lcode) ON DELETE CASCADE
);

-- 강의 리뷰(리뷰코드, 강의코드, 학생아이디, 별점, 리뷰 내용)
CREATE TABLE review(
	rcode INT AUTO_INCREMENT PRIMARY KEY,
	lcode VARCHAR(50) NOT NULL,
	id VARCHAR(20) NOT NULL,
	star INT NOT NULL DEFAULT 0,
	content VARCHAR(1000) NOT NULL,
	FOREIGN KEY (lcode) REFERENCES lecture(lcode) ON DELETE CASCADE
);

-- 수강(수강코드, 강의코드, 학생아이디, 수강총시간, 수강 완료여부)
CREATE TABLE register(
	rcode INT AUTO_INCREMENT PRIMARY KEY,
	lcode VARCHAR(50) NOT NULL,
	id VARCHAR(20) NOT NULL,
	completed BOOLEAN DEFAULT FALSE,
	FOREIGN KEY(id) REFERENCES user(id) ON DELETE CASCADE
);

-- 수강생 강의 수강 정보 테이블
CREATE TABLE studyInfo(
	scode INT AUTO_INCREMENT PRIMARY KEY,
	ccode INT NOT NULL,
	id VARCHAR(20) NOT NULL,
	studyTime DOUBLE DEFAULT 0,
	completed BOOLEAN DEFAULT FALSE,
	FOREIGN KEY(id) REFERENCES user(id) ON DELETE CASCADE,
	FOREIGN KEY(ccode) REFERENCES curriculum(ccode) ON DELETE CASCADE
);

-- TodoList (list 넘버, 제목, 상태)
CREATE TABLE todo(
	tdno INT PRIMARY KEY AUTO_INCREMENT,
	id VARCHAR(20) NOT NULL,
	tdtitle VARCHAR(200),
	STATUS BOOLEAN DEFAULT false);

INSERT INTO todo VALUES (DEFAULT, 'admin','todo1',DEFAULT);
INSERT INTO todo VALUES (DEFAULT, 'kimbk','todo2',DEFAULT);


select * from todo where id='admin' order by tdno asc;
UPDATE todo SET STATUS=TRUE WHERE tdno=1;
DROP TABLE todo;

CREATE TABLE lecboard(
  qno int PRIMARY KEY AUTO_INCREMENT,   			-- 번호
  lcode VARCHAR(50) NOT NULL,                   -- 강의코드
  title VARCHAR(100) NOT NULL,   					-- 제목
  content VARCHAR(1000) NOT NULL,   				-- 내용
  author VARCHAR(16),   								-- 작성자
  resdate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,  -- 등록일
  lev INT DEFAULT 0, 									-- 질문(0), 답변(1)
  par INT DEFAULT 0,													-- 질문(자신 레코드의 qno), 답변(질문의 글번호)
  FOREIGN KEY(author) REFERENCES user(id) ON DELETE CASCADE,
  FOREIGN KEY(lcode) REFERENCES lecture(lcode) ON DELETE CASCADE);
  
  -- 배송 테이블 생성(배송번호, 결제번호, 아이디, 주소, 번호, 배송회사, 배송전화번호, 배송상태, 배송시간, 배송예정일자, 배송코드)
create table delivery(
	 dno int primary KEY AUTO_INCREMENT,
	 pno int, 					
	 id varchar(20),				
	 addr VARCHAR(200),	
	 tel varchar(13) not null,				
	 dcom varchar(100),					
	 dtel varchar(13),			
	 dstatus int default 0,				
	 ddate timestamp default CURRENT_TIMESTAMP,
	 edate varchar(13),						
	 dcode varchar(30),
	 FOREIGN KEY (id) REFERENCES user(id) ON DELETE CASCADE				
);

SELECT * FROM delivery;


-- 출고 테이블 생성(출고 번호, 배송코드, 출고 가격, 수량, 출고일자)
create table serve(
    sno int primary KEY AUTO_INCREMENT,							
    pno VARCHAR(20) NOT NULL,		              
    sprice int default 1000,					 
    amount int default 1,				         	
    resdate timestamp default CURRENT_TIMESTAMP   
);


--결제 테이블 생성(고유번호, 결제제목, 강의코드, 교재코드, 강사코드, 아이디, 결제방법, 결제회사, 결제금액, 배송번호, 계좌번호, 결제일자)
create table payment(
	   pno INT primary KEY AUTO_INCREMENT,
	   title VARCHAR(100) NOT NULL,
		lcode VARCHAR(50) NOT NULL,		
		bcode VARCHAR(20) NOT NULL,
		tcode INT,
	   id varchar(20) not null,	
	   method varchar(100),		
	   com varchar(100),			
	   price int default 1000,
		dno INT,	
	   account varchar(100) NOT NULL,
	   resdate timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	   FOREIGN KEY (lcode) REFERENCES lecture (lcode) ON DELETE CASCADE,
	   FOREIGN KEY (bcode) REFERENCES book (bcode) ON DELETE CASCADE,
	   FOREIGN KEY (tcode) REFERENCES teacher (tcode) ON DELETE CASCADE,
	   FOREIGN KEY (dno) REFERENCES delivery(dno) ON DELETE CASCADE,
		FOREIGN KEY (id) REFERENCES user (id) ON DELETE CASCADE
);

SELECT * FROM payment;
        
-- 핵심 기능: 공지사항, 자료실, 회원, 자유게시판, 강의별 댓글,  교재와 시범강의, 결제
-- 부가 기능: 파일업로드, 채팅, 타계정 또는 SNS 로그인, 수강평, 달력, 가입 시 축하 이메일 보내기, 비밀번호 변경 시 이메일 보내기, 온라인 평가, 진도관리, 학습 스케줄러, 나의 강의실 등