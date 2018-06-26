
/* 以下是初始化数据 */
-- 顶目录
INSERT INTO sys_apply (
	hxuuid,	apply_name,	apply_code,	apply_icon,	apply_title, apply_desc, apply_belong, apply_ifprime, apply_ifwap, apply_url, apply_no, data_state, created_by,	date_created, updated_by, date_updated)
VALUES
	(uuid(),'易推事','easypushproject',NULL,	'使任务管理变得更简单','易推事，使任务管理变得更简单，可创建任务，添加执行人，关注人，并且可跟踪任务进度，在某个进度阶段进行评审，反馈。',
		'1','1','0',NULL,'1','Y','system',now(),'system',now());
		
INSERT INTO sys_apply (
	hxuuid,	apply_name,	apply_code,	apply_icon,	apply_title, apply_desc, apply_belong, apply_ifprime, apply_ifwap, apply_url, apply_no, data_state, created_by,	date_created, updated_by, date_updated)
VALUES
	(uuid(),'企业秀','businessshow',	NULL,'企业推广',	NULL,'1','0','0',NULL,'1','Y','system',now(),'system',now());
	
INSERT INTO sys_apply (
	hxuuid,	apply_name,	apply_code,	apply_icon,	apply_title, apply_desc, apply_belong, apply_ifprime, apply_ifwap, apply_url, apply_no, data_state, created_by,	date_created, updated_by, date_updated)
VALUES
	(uuid(),'创业服务','innovationservice',NULL,	'为创业提供咨询',NULL,'1','1','0',NULL,'1','Y','system',now(),'system',now());
	
INSERT INTO sys_apply (
	hxuuid,	apply_name,	apply_code,	apply_icon,	apply_title, apply_desc, apply_belong, apply_ifprime, apply_ifwap, apply_url, apply_no, data_state, created_by,	date_created, updated_by, date_updated)
VALUES
	(uuid(),'弘信会议','hxmeeting',NULL,'弘信会议',NULL,'1','1','0',NULL,'1','Y','system',now(),'system',now());