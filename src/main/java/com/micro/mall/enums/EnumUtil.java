package com.micro.mall.enums;


import java.util.Objects;

/**
 * @author yuqiang
 * @version 1.0.0
 * @date 2020/4/10 19:38
 */
public class EnumUtil {


    public static <T extends BaseEnum> T getById(Integer id, Class<T> toClazz) {
        Object[] enumConstants = toClazz.getEnumConstants();
        for (Object obj : enumConstants) {
            BaseEnum baseEnum = (BaseEnum) obj;
            if (Objects.equals(id, baseEnum.getId())) {
                return (T) baseEnum;
            }
        }
        return null;
    }

    public static <T extends BaseEnum> T getByCode(String code, Class<T> toClazz) {
        Object[] enumConstants = toClazz.getEnumConstants();
        for (Object obj : enumConstants) {
            BaseEnum baseEnum = (BaseEnum) obj;
            if (Objects.equals(code, baseEnum.getCode())) {
                return (T) baseEnum;
            }
        }
        return null;
    }

    public static <T extends BaseEnum> T getByDesc(String desc, Class<T> toClazz) {
        Object[] enumConstants = toClazz.getEnumConstants();
        for (Object obj : enumConstants) {
            BaseEnum baseEnum = (BaseEnum) obj;
            if (Objects.equals(desc, baseEnum.getDescription())) {
                return (T) baseEnum;
            }
        }
        return null;
    }

    public static String getEnumDescByCode(String code, Class<? extends BaseEnum> toClazz) {
        if (code == null || "".equals(code)) {
            return "";
        }
        BaseEnum byCode = getByCode(code, toClazz);
        if (byCode == null) {
            return "";
        }
        return byCode.getDescription();
    }
}
