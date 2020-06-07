
DROP TABLE IF EXISTS `product_category`;
CREATE TABLE `product_category` (
  `id` bigint(20) UNSIGNED  NOT NULL AUTO_INCREMENT COMMENT 'id',
  `category_name` varchar(64) NOT NULL DEFAULT '' COMMENT '商品类别名字',
  `parent_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '父类别',
  `is_leaf` int(8) NOT NULL DEFAULT 0 COMMENT '是否是叶子节点',
  `remark` varchar(64) NOT NULL DEFAULT '' COMMENT '描述',
  `creator_id` varchar(20) NOT NULL DEFAULT '' COMMENT '创建人id',
  `creator_name` varchar(20) NOT NULL DEFAULT '' COMMENT '创建人名字',
  `modifier_id` varchar(20) NOT NULL DEFAULT '' COMMENT '修改人id',
  `modifier_name` varchar(20) NOT NULL DEFAULT '' COMMENT '修改人名字',
  `gmt_create` bigint(20) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `gmt_modified` bigint(20) NOT NULL DEFAULT '0' COMMENT '修改时间',
  `is_deleted` char(1) NOT NULL DEFAULT 'N' COMMENT '是否删除 N:正常 Y:删除',
  `version` bigint(12) NOT NULL DEFAULT '0' COMMENT '数据版本',
  PRIMARY KEY (`id`)
)  ENGINE=InnoDB AUTO_INCREMENT=1  DEFAULT CHARSET=utf8mb4 COMMENT='商品类别表';




DROP TABLE IF EXISTS `product_detail`;
CREATE TABLE `product_detail` (
  `id` bigint(20) UNSIGNED  NOT NULL AUTO_INCREMENT COMMENT 'id',
  `product_name` varchar(64) NOT NULL DEFAULT '' COMMENT '商品名字',
  `unit` varchar(16) NOT NULL DEFAULT '' COMMENT '单位',
  `icon` varchar(256) NOT NULL DEFAULT '' COMMENT '图表地址',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `creator_id` varchar(20) NOT NULL DEFAULT '' COMMENT '创建人id',
  `creator_name` varchar(20) NOT NULL DEFAULT '' COMMENT '创建人名字',
  `modifier_id` varchar(20) NOT NULL DEFAULT '' COMMENT '修改人id',
  `modifier_name` varchar(20) NOT NULL DEFAULT '' COMMENT '修改人名字',
  `gmt_create` bigint(20) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `gmt_modified` bigint(20) NOT NULL DEFAULT '0' COMMENT '修改时间',
  `is_deleted` char(1) NOT NULL DEFAULT 'N' COMMENT '是否删除 N:正常 Y:删除',
  `version` bigint(12) NOT NULL DEFAULT '0' COMMENT '数据版本',
  PRIMARY KEY (`id`)
)  ENGINE=InnoDB AUTO_INCREMENT=1  DEFAULT CHARSET=utf8mb4 COMMENT='商品详情表';





DROP TABLE IF EXISTS `product_file`;
CREATE TABLE `product_file` (
  `id` bigint(20) UNSIGNED  NOT NULL AUTO_INCREMENT COMMENT 'id',
  `product_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '商品Id',
  `file_url` varchar(64) NOT NULL DEFAULT '' COMMENT '商品附件地址',
  `order` int(8) NOT NULL DEFAULT 0 COMMENT '顺序',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `creator_id` varchar(20) NOT NULL DEFAULT '' COMMENT '创建人id',
  `creator_name` varchar(20) NOT NULL DEFAULT '' COMMENT '创建人名字',
  `modifier_id` varchar(20) NOT NULL DEFAULT '' COMMENT '修改人id',
  `modifier_name` varchar(20) NOT NULL DEFAULT '' COMMENT '修改人名字',
  `gmt_create` bigint(20) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `gmt_modified` bigint(20) NOT NULL DEFAULT '0' COMMENT '修改时间',
  `is_deleted` char(1) NOT NULL DEFAULT 'N' COMMENT '是否删除 N:正常 Y:删除',
  `version` bigint(12) NOT NULL DEFAULT '0' COMMENT '数据版本',
  PRIMARY KEY (`id`)
)  ENGINE=InnoDB AUTO_INCREMENT=1  DEFAULT CHARSET=utf8mb4 COMMENT='商品详情-附件表';


DROP TABLE IF EXISTS `product_category_relation`;
CREATE TABLE `product_category_relation` (
  `id` bigint(20) UNSIGNED  NOT NULL AUTO_INCREMENT COMMENT 'id',
  `category_id` bigint(20) NOT NULL DEFAULT 0 COMMENT 'category Id',
  `product_id` bigint(20) NOT NULL DEFAULT 0 COMMENT 'product Id',
  `creator_id` varchar(20) NOT NULL DEFAULT '' COMMENT '创建人id',
  `creator_name` varchar(20) NOT NULL DEFAULT '' COMMENT '创建人名字',
  `modifier_id` varchar(20) NOT NULL DEFAULT '' COMMENT '修改人id',
  `modifier_name` varchar(20) NOT NULL DEFAULT '' COMMENT '修改人名字',
  `gmt_create` bigint(20) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `gmt_modified` bigint(20) NOT NULL DEFAULT '0' COMMENT '修改时间',
  `is_deleted` char(1) NOT NULL DEFAULT 'N' COMMENT '是否删除 N:正常 Y:删除',
  `version` bigint(12) NOT NULL DEFAULT '0' COMMENT '数据版本',
  PRIMARY KEY (`id`)
)  ENGINE=InnoDB AUTO_INCREMENT=1  DEFAULT CHARSET=utf8mb4 COMMENT='商品类别-商品关联表';



DROP TABLE IF EXISTS `product_sku`;
CREATE TABLE `product_sku` (
  `id` bigint(20) UNSIGNED  NOT NULL AUTO_INCREMENT COMMENT 'id',
  `product_id` bigint(20) NOT NULL DEFAULT 0 COMMENT 'product Id',
  `sku` varchar(64) NOT NULL DEFAULT '' COMMENT 'sku编码',
  `specification` varchar(64) NOT NULL DEFAULT '' COMMENT '规格',
  `name` varchar(64) NOT NULL DEFAULT '' COMMENT '名称',
  `price` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '价格',
  `original_price` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '原始价格',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `creator_id` varchar(20) NOT NULL DEFAULT '' COMMENT '创建人id',
  `creator_name` varchar(20) NOT NULL DEFAULT '' COMMENT '创建人名字',
  `modifier_id` varchar(20) NOT NULL DEFAULT '' COMMENT '修改人id',
  `modifier_name` varchar(20) NOT NULL DEFAULT '' COMMENT '修改人名字',
  `gmt_create` bigint(20) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `gmt_modified` bigint(20) NOT NULL DEFAULT '0' COMMENT '修改时间',
  `is_deleted` char(1) NOT NULL DEFAULT 'N' COMMENT '是否删除 N:正常 Y:删除',
  `version` bigint(12) NOT NULL DEFAULT '0' COMMENT '数据版本',
  PRIMARY KEY (`id`)
)  ENGINE=InnoDB AUTO_INCREMENT=1  DEFAULT CHARSET=utf8mb4 COMMENT='商品sku表';










