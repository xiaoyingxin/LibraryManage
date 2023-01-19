package com.xiaoxin.model.enums;

import org.springframework.beans.factory.annotation.Value;

public enum BookStatusEnum{

    NORMAL(0),
    DELETE(1),
    RECOMMENDED(2);

    BookStatusEnum(Integer value){
        this.value = value;
    }
    private final Integer value;

    public Integer getValue(){
        return value;
    }
}
