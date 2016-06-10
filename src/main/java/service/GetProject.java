package service;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLDecoder;
import org.apache.commons.lang3.StringEscapeUtils;
import java.lang.String;
/**
 * Created by 13987 on 2016/5/28.
 */
public class GetProject {

    public void getprojectsTest() throws Exception{
        String encoding="UTF-8";
        String path ="https://api.leancloud.cn/1.1/classes/packageInfo?where={\"courierName\":{\"$in\":[\"王师傅\"]}}&&keys=-objectId,-createdAt";
        URL url =new URL(path);
        HttpURLConnection conn = (HttpURLConnection)url.openConnection();

        /*// 设定请求的方法为"POST"，默认是GET
        conn.setRequestMethod("POST");*/
        conn.setInstanceFollowRedirects(true);
        conn.setRequestMethod("GET");

       /* // 设置是否向httpUrlConnection输出，因为这个是post请求，参数要放在
        // http正文内，因此需要设为true, 默认情况下是false;
        conn.setDoOutput(true);*/

        //设置请求头的参数，具体见https://leancloud.cn/docs/rest_api.html#%E6%B3%A8%E5%86%8C
        conn.setRequestProperty("X-LC-Id", "itMaof6Ex5Qd1Ia2bevnoNx3-gzGzoHsz");
        conn.setRequestProperty("X-LC-Key", "mlr7zQF2VCJzPLyo0PhPPMHo");
        conn.setRequestProperty("Content-Type", "application/json");

        /*conn.setRequestProperty("Content-Length", String.valueOf(data.length));*/
        /*conn.setRequestProperty("name","IOS");*/

        conn.setConnectTimeout(5*1000);
/*
        // 此处getOutputStream会隐含的进行connect(即：如同conn.connect();
        OutputStream outStream = conn.getOutputStream();
        // 向对象输出流写出数据，这些数据将存到内存缓冲区中
        outStream.write(data);
        // 刷新对象输出流，将任何字节都写入潜在的流中
        outStream.flush();
        // 关闭流对象。此时，不能再向对象输出流写入任何数据，先前写入的数据存在于内存缓冲区中,
        // 在调用下边的getInputStream()函数时才把准备好的http请求正式发送到服务器
        outStream.close();*/
       /* System.out.println(conn.getResponseCode()); //响应代码 201表示成功
        if(conn.getResponseCode()==201){
            // 调用HttpURLConnection连接对象的getInputStream()函数,
            // 将内存缓冲区中封装好的完整的HTTP请求电文发送到服务端
            InputStream inStream = conn.getInputStream();
            String result=streamToString(inStream);
            System.out.println(result);
        }*/

        InputStream inStream = conn.getInputStream();

        String result=streamToString(inStream);
        result= decode(result);
        System.out.println(result);
        String[] aa = result.split("transportState");


        FileWriter fw = null;
        try {
            if(aa.length<1){
                System.exit(-1);
            }
            fw = new FileWriter("C:\\Users\\13987\\Desktop\\input.txt",true);
            for(int i=1;i!=aa.length;i++){
                fw.write("transportState");
                fw.write(aa[i]);
                fw.write("\r\n");
            }
            fw.close();
        } catch (IOException e1) {
            e1.printStackTrace();
            System.out.println("写入失败");
            System.exit(-1);
        }

    }

    static public String streamToString(InputStream in) throws IOException {
        StringBuffer out = new StringBuffer();
        byte[] b = new byte[4096];
        for (int n; (n = in.read(b)) != -1;) {
            out.append(new String(b, 0, n));
        }
        return out.toString();
    }
    public static String decode(String unicodeStr) {
        if (unicodeStr == null) {
            return null;
        }
        StringBuffer retBuf = new StringBuffer();
        int maxLoop = unicodeStr.length();
        for (int i = 0; i < maxLoop; i++) {
            if (unicodeStr.charAt(i) == '\\') {
                if ((i < maxLoop - 5)
                        && ((unicodeStr.charAt(i + 1) == 'u') || (unicodeStr
                        .charAt(i + 1) == 'U')))
                    try {
                        retBuf.append((char) Integer.parseInt(
                                unicodeStr.substring(i + 2, i + 6), 16));
                        i += 5;
                    } catch (NumberFormatException localNumberFormatException) {
                        retBuf.append(unicodeStr.charAt(i));
                    }
                else
                    retBuf.append(unicodeStr.charAt(i));
            } else {
                retBuf.append(unicodeStr.charAt(i));
            }
        }
        return retBuf.toString();
    }
}
