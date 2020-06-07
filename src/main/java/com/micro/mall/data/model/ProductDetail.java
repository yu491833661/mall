package com.micro.mall.data.model;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import com.baomidou.mybatisplus.annotation.TableId;
import java.io.Serializable;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 商品详情表
 * </p>
 *
 * @author ${author}
 * @since 2020-06-07
 */
@Data
@EqualsAndHashCode(callSuper = false)
public class ProductDetail extends Model<ProductDetail> {

    private static final long serialVersionUID=1L;

    /**
     * id
     */
      @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    /**
     * 商品名字
     */
    private String productName;

    /**
     * 单位
     */
    private String unit;

    /**
     * 图表地址
     */
    private String icon;

    /**
     * 描述
     */
    private String remark;

    /**
     * 创建人工号
     */
    private String creatorId;

    /**
     * 创建人名字
     */
    private String creatorName;

    /**
     * 修改人工号
     */
    private String modifierId;

    /**
     * 修改人名字
     */
    private String modifierName;

    /**
     * 创建时间
     */
    private Long gmtCreate;

    /**
     * 修改时间
     */
    private Long gmtModified;

    /**
     * 是否删除 N:正常 Y:删除
     */
    private String isDeleted;


    @Override
    protected Serializable pkVal() {
        return this.id;
    }

}
