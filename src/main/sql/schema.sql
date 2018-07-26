-- ���ݿ��ʼ���ű�

-- �������ݿ�
CREATE DATABASE seckill;
-- ʹ�����ݿ�
use seckill;
-- ������ɱ����
CREATE TABLE seckill(
seckill_id bigint NOT NULL AUTO_INCREMENT COMMENT '��Ʒ���id',
name varchar(120) NOT NULL COMMENT '��Ʒ����',
number int NOT NULL COMMENT '�������',
start_time timestamp NOT NULL COMMENT '��ɱ��ʼʱ��',
end_time timestamp NOT NULL COMMENT '��ɱ����ʱ��',
create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
PRIMARY KEY (seckill_id),
key idx_start_time(start_time),
key idx_end_time(end_time),
key idx_create_time(create_time)
)ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT='��ɱ����';

-- ��ʼ������
insert into seckill(name, number, start_time, end_time)
values
('100Ԫ��ɱiphone4', '100', '2018-07-30 00:00:00', '2018-07-31 00:00:00'),
('300Ԫ��ɱiphone5', '100', '2018-07-30 00:00:00', '2018-07-31 00:00:00'),
('500Ԫ��ɱiphone6', '100', '2018-07-30 00:00:00', '2018-07-31 00:00:00'),
('700Ԫ��ɱiphone7', '100', '2018-07-30 00:00:00', '2018-07-31 00:00:00'),
('1000Ԫ��ɱiphone8', '100', '2018-07-30 00:00:00', '2018-07-31 00:00:00');

-- ��ɱ�ɹ���ϸ��
-- �û���¼��֤��ص���Ϣ
create table success_killed(
seckill_id bigint NOT NULL COMMENT '��ɱ��Ʒid',
user_phone bigint NOT NULL COMMENT '�û��ֻ���',
state tinyint NOT NULL DEFAULT -1 COMMENT '״̬��ʾ:-1:��Ч    0:�ɹ�    1:�Ѹ���    2:�ѷ���',
create_time timestamp NOT NULL COMMENT '����ʱ��',
PRIMARY KEY(seckill_id, user_phone), /*��������*/
key idx_create_time(create_time)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��ɱ�ɹ���ϸ��';

-- �������ݿ����̨
mysql -uroot -p