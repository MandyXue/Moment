package service;

import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

import static service.RegisterService.streamToString;

/**
 * Created by 13987 on 2016/6/4.
 */
public class PackageState {
    public void updatePackageState() throws Exception{
        String encoding = "UTF-8";
        String params="{\"packageID\":\"12777907\",\"senderName\":\"孟龄\",\"SenderPhoneNumber\":\"182163628192\"," +
                "\"senderAddress\":\"上海市曹安公路12345号 \",\"receiverName\":\"华泽文\"" +
                "\"receiverPhoneNumber\":\"1821628875\",\"receiverAddress\":\"同济大学四平路校区\",\"PackageWeight\":\"2.5kg\"" +
                "\"ExpressFee\":\"25￥\"}";
        String path = "https://api.leancloud.cn/1.1/classes/packageState";
        byte[] data = params.getBytes(encoding);
        URL url = new URL(path);
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        // 设定请求的方法为"POST"，默认是GET
        conn.setRequestMethod("POST");

        // 设置是否向httpUrlConnection输出，因为这个是post请求，参数要放在
        // http正文内，因此需要设为true, 默认情况下是false;
        conn.setDoOutput(true);
        //设置请求头的参数，具体见https://leancloud.cn/docs/rest_api.html#%E6%B3%A8%E5%86%8C
        conn.setRequestProperty("X-LC-Id", "itMaof6Ex5Qd1Ia2bevnoNx3-gzGzoHsz");
        conn.setRequestProperty("X-LC-Key", "mlr7zQF2VCJzPLyo0PhPPMHo");
        conn.setRequestProperty("Content-Type", "application/json");
        conn.setConnectTimeout(5 * 1000);


        // 此处getOutputStream会隐含的进行connect(即：如同conn.connect();
        OutputStream outStream = conn.getOutputStream();
        // 向对象输出流写出数据，这些数据将存到内存缓冲区中
        outStream.write(data);
        // 刷新对象输出流，将任何字节都写入潜在的流中
        outStream.flush();
        // 关闭流对象。此时，不能再向对象输出流写入任何数据，先前写入的数据存在于内存缓冲区中,
        // 在调用下边的getInputStream()函数时才把准备好的http请求正式发送到服务器
        outStream.close();
        System.out.println(conn.getResponseCode()); //响应代码 201表示成功
        if (conn.getResponseCode() == 201) {
            // 调用HttpURLConnection连接对象的getInputStream()函数,
            // 将内存缓冲区中封装好的完整的HTTP请求电文发送到服务端
            InputStream inStream = conn.getInputStream();
            String result = streamToString(inStream);
            System.out.println(result);
            System.out.println("PackageInfo successfully！");
        }
    }
}
