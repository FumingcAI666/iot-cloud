package com.iotcloud.springboot.util;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.Scanner;

/**
 * @author macfmc
 * @date 2020/6/1-15:48
 */
public class SocketUtil {
    public static void main(String args[]) {
        Scanner sc = new Scanner(System.in);
        DataOutputStream dos = null;
        DataInputStream dis = null;
        try {
            ServerSocket ss = new ServerSocket(8888);
            //监听客户端的连接，socket就代表和客户端的连接
            Socket socket = ss.accept();
            new MessageThread(socket).start();
            //获取客户端的ip地址对象
            //打开输出流，向客户端输出信息
            dos = new DataOutputStream(socket.getOutputStream());
            String s = sc.nextLine();
            while (!s.equals("bye")) {
                dos.writeUTF(s);
                s = sc.nextLine();
            }
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } finally {
            try {
                dos.close();
            } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
    }


    private static class MessageThread extends Thread {

        Socket socket;


        public MessageThread(Socket socket) {
            this.socket = socket;
        }


        public void run() {
            DataInputStream dis = null;
            try {
                dis = new DataInputStream(socket.getInputStream());
                String s = dis.readUTF();
                while (true) {
                    System.out.println("client:" + s);
                    if (s.equals("bye")) {
                        break;
                    }
                    s = dis.readUTF();
                }
            } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            } finally {
                try {
                    dis.close();
                } catch (IOException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
            }
        }
    }

}