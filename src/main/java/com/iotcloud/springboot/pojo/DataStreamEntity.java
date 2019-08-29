package com.iotcloud.springboot.pojo;

import java.util.Date;

public class DataStreamEntity {
    private Integer id;

    private Double parameter;

    private Date createtime;

    private Integer did;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Double getParameter() {
        return parameter;
    }

    public void setParameter(Double parameter) {
        this.parameter = parameter;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public Integer getDid() {
        return did;
    }

    public void setDid(Integer did) {
        this.did = did;
    }

    @Override
    public String toString() {
        return "DataStreamEntity:{" +
                "id=" + id +
                ", parameter=" + parameter +
                ", createtime=" + createtime +
                ", did=" + did +
                '}';
    }
}