package com.iotcloud.springboot.util;

import java.io.UnsupportedEncodingException;

import org.apache.commons.httpclient.Header;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.methods.PostMethod;

/**
 * @author macfmc
 * @date 2020/5/24-1:07
 */
public class SendMQ {

    public static void main(String[] args) throws Exception {

        HttpClient client = new HttpClient();
        PostMethod post = new PostMethod("http://gbk.api.smschinese.cn");
        post.addRequestHeader("Content-Type", "application/x-www-form-urlencoded;charset=gbk");//在头文件中设置转码
        NameValuePair[] data = {new NameValuePair("Uid", "闲坐清溪听水声"), new NameValuePair("Key", "d41d8cd98f00b204e980"),
                new NameValuePair("smsMob", "18846153485"),
                new NameValuePair("smsText", "基于物联网的粮库存储条件监控系统，提醒您当前采集的环境数据不利于存储，请尽快与管理人员核实。")};

        post.setRequestBody(data);

        client.executeMethod(post);
        Header[] headers = post.getResponseHeaders();
        int statusCode = post.getStatusCode();
        System.out.println("statusCode:" + statusCode);
        for (Header h : headers) {
            System.out.println(h.toString());
        }
        String result = new String(post.getResponseBodyAsString().getBytes("gbk"));

        System.out.println(result); //打印返回消息状态

        post.releaseConnection();
    }

}