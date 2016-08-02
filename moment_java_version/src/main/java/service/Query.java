package service;

import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;

import static service.RegisterService.streamToString;

/**
 * Created by 13987 on 2016/5/29.
 */
public class Query {
    public void queryTest() throws Exception{
        String path ="https://api.leancloud.cn/1.1/classes/Post";
        URL url =new URL(path);
        HttpURLConnection conn = (HttpURLConnection)url.openConnection();
        // 设定请求的方法为"POST"，默认是GET
        conn.setRequestMethod("GET");

        // 设置是否向httpUrlConnection输出，因为这个是post请求，参数要放在
        // http正文内，因此需要设为true, 默认情况下是false;
        conn.setDoOutput(true);

        //设置请求头的参数，具体见https://leancloud.cn/docs/rest_api.html#%E6%B3%A8%E5%86%8C
        conn.setRequestProperty("X-LC-Id", "itMaof6Ex5Qd1Ia2bevnoNx3-gzGzoHsz");
        conn.setRequestProperty("X-LC-Key", "mlr7zQF2VCJzPLyo0PhPPMHo");
        conn.setRequestProperty("Content-Type", "application/json");
        conn.setConnectTimeout(5*1000);
        System.out.println(conn.getResponseCode()); //响应代码 200表示成功
        if (conn.getResponseCode() == 200) {
            // 调用HttpURLConnection连接对象的getInputStream()函数,
            // 将内存缓冲区中封装好的完整的HTTP请求电文发送到服务端
            InputStream inStream = conn.getInputStream();
            String result = streamToString(inStream);
            System.out.println(result);
            System.out.println("Query Successfully!");

        }
    }

}
