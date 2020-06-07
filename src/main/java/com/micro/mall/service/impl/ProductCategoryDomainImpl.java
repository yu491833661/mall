package com.micro.mall.service.impl;

import com.micro.mall.data.model.ProductCategory;
import com.micro.mall.data.mapper.ProductCategoryMapper;
import com.micro.mall.service.ProductCategoryDomain;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 商品类别表 服务实现类
 * </p>
 *
 * @author ${author}
 * @since 2020-06-07
 */
@Service
public class ProductCategoryDomainImpl extends ServiceImpl<ProductCategoryMapper, ProductCategory> implements ProductCategoryDomain {

}
