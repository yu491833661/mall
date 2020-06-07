package com.micro.mall.service.impl;

import com.micro.mall.data.model.ProductDetail;
import com.micro.mall.data.mapper.ProductDetailMapper;
import com.micro.mall.service.ProductDetailDomain;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 商品详情表 服务实现类
 * </p>
 *
 * @author ${author}
 * @since 2020-06-07
 */
@Service
public class ProductDetailDomainImpl extends ServiceImpl<ProductDetailMapper, ProductDetail> implements ProductDetailDomain {

}
