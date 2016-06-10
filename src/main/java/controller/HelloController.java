package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import service.*;

@Controller
@RequestMapping("/")
public class HelloController {
	@RequestMapping(method = RequestMethod.GET)
	public String printWelcome(ModelMap model) {
		model.addAttribute("message", "Hello world!");
		return "hello";
	}

	public static void main(String args[])
	{
		//登录
//		Login login = new Login();
//		try {
//			login.loginTest();
//		}
//		catch (Exception e){
//			e.printStackTrace();
//		}
        //用户查询
//		Query query = new Query();
//		try {
//			query.queryTest();
//		}
//		catch (Exception e){
//			e.printStackTrace();
//		}

		//package information
		PackageInfo packageInfo =new PackageInfo();
		try {
			packageInfo.orderPackage();
		}
		catch (Exception e){
			e.printStackTrace();
		}
		//package  State
		PackageState packageState =new PackageState();
		try {
			packageState.updatePackageState();
		}
		catch (Exception e){
			e.printStackTrace();
		}
		 GetProject getProject =new GetProject();
		try {
			getProject.getprojectsTest();
		}
		catch (Exception e){
			e.printStackTrace();
		}

//        File file =new File();
//        try{
//            file.FileTest();
//        }
//        catch (Exception e){
//            e.printStackTrace();
//        }
        //注册
//		RegisterService userService = new RegisterService();
//		try{
//			userService.usersTest();
//		}catch(Exception e){
//			e.printStackTrace();
//		}

	}
}