package auto;


import org.openqa.selenium.WebDriver;
import org.openqa.selenium.edge.EdgeDriver;
public class Automation1 {
    public static void main(String args[]) { 
       // System.setProperty("webdriver.edge.driver", "D:\\stqa");
        WebDriver driver = new EdgeDriver();
        driver.get("https://rhgupta01.github.io/B_House/");
        int a=1;
        int b=3;
        System.out.println(a+b);
    }
}
