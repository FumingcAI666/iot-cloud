package com.iotcloud.springboot.pojo;

import java.util.Date;

public class DataStreamModel {
    private Integer id;

    private String name;

    private String unitname;

    private String unitsymbol;

    private Date createtime;

    private Integer eid;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getUnitname() {
        return unitname;
    }

    public void setUnitname(String unitname) {
        this.unitname = unitname == null ? null : unitname.trim();
    }

    public String getUnitsymbol() {
        return unitsymbol;
    }

    public void setUnitsymbol(String unitsymbol) {
        this.unitsymbol = unitsymbol == null ? null : unitsymbol.trim();
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public Integer getEid() {
        return eid;
    }

    public void setEid(Integer eid) {
        this.eid = eid;
    }

    @Override
    public String toString() {
        return "DataStreamModel:{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", unitname='" + unitname + '\'' +
                ", unitsymbol='" + unitsymbol + '\'' +
                ", creattime=" + createtime +
                ", eid=" + eid +
                '}';
    }
}