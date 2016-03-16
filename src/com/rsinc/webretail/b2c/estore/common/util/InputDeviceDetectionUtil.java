/**
 * 
 */
package com.rsinc.webretail.b2c.estore.common.util;

import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;

/**
 * @author Roshan Titus
 *
 */
public class InputDeviceDetectionUtil {

//    private Map<String, String> osCodeMap = new HashMap<String, String>();
//    private Map<String, String> browserCodeMap = new HashMap<String, String>();
    
	/**
	 * 
	 */
	private InputDeviceDetectionUtil() {

//		osCodeMap.put("WINDOWS_XP", "Windows XP");
//		osCodeMap.put("WINDOWS_2000", "Windows 2000");
//		osCodeMap.put("WINDOWS_7", "Windows 7");
//		osCodeMap.put("WINDOWS_VISTA", "Windows Vista");
//		osCodeMap.put("WINDOWS_2003", "Windows 2003");
//		osCodeMap.put("LINUX", "Linux");
//		osCodeMap.put("MACINTOSH", "Macintosh");
//		osCodeMap.put("OTHERS", "Other OS");
//		
//		browserCodeMap.put("INTERNET_EXPLORER", "Internet Explorer");
//		browserCodeMap.put("FIREFOX", "Firefox");
//		browserCodeMap.put("GOOGLE_CHROME", "Google Chrome");
//		browserCodeMap.put("SAFARI", "Safari");
//		browserCodeMap.put("OPERA", "OPERA");
//		browserCodeMap.put("NETSCAPE", "Netscape");
//		browserCodeMap.put("AMERICA_ONLINE", "America Online");
//		browserCodeMap.put("OTHERS", "Other Browsers");		
		
	}
	
    public static InputDeviceInfo getInputDeviceInfo(HttpServletRequest request)
    {
        InputDeviceInfo inputDeviceInfo = new InputDeviceInfo();
        inputDeviceInfo.setIpAddress(request.getRemoteAddr());
        getBrowserInfo(request.getHeader(CommonConstants.USER_AGENT), inputDeviceInfo);
        getOSVersionInfo(request.getHeader(CommonConstants.USER_AGENT), inputDeviceInfo);
        return inputDeviceInfo;
    }
    
    private static void getBrowserInfo(String userAgent, InputDeviceInfo inputDeviceInfo)
    {
        userAgent = userAgent.toLowerCase();
        if (userAgent.indexOf("msie") != -1)
        {
            if (userAgent.indexOf("msie 8.0") != -1)
            {
                inputDeviceInfo.setBrowserVersion("ie 8.0");
                inputDeviceInfo.setBrowserText("INTERNET EXPLORER");
                inputDeviceInfo.setBrowserCode("Internet Explorer");
            }
            else if (userAgent.indexOf("msie 7.0") != -1)
            {
                inputDeviceInfo.setBrowserVersion("ie 7.0");
                inputDeviceInfo.setBrowserText("INTERNET EXPLORER");
                inputDeviceInfo.setBrowserCode("Internet Explorer");
            }
            else if (userAgent.indexOf("msie 6.0") != -1)
            {
                inputDeviceInfo.setBrowserVersion("ie 6.0");
                inputDeviceInfo.setBrowserText("INTERNET EXPLORER");
                inputDeviceInfo.setBrowserCode("Internet Explorer");
            }
            else if (userAgent.indexOf("msie 5.0") != -1)
            {
                inputDeviceInfo.setBrowserVersion("ie 5.0");
                inputDeviceInfo.setBrowserText("INTERNET EXPLORER");
                inputDeviceInfo.setBrowserCode("Internet Explorer");
            }
            else if (userAgent.indexOf("msie 5.5") != -1)
            {
                inputDeviceInfo.setBrowserVersion("ie 5.5");
                inputDeviceInfo.setBrowserText("INTERNET EXPLORER");
                inputDeviceInfo.setBrowserCode("Internet Explorer");
            }
            else if (userAgent.indexOf("msie 5.01") != -1)
            {
                inputDeviceInfo.setBrowserVersion("ie 5.0");
                inputDeviceInfo.setBrowserText("INTERNET EXPLORER");
                inputDeviceInfo.setBrowserCode("Internet Explorer");
            }
            else if (userAgent.indexOf("msie 4") != -1)
            {
                inputDeviceInfo.setBrowserVersion("ie 4");
                inputDeviceInfo.setBrowserText("INTERNET EXPLORER");
                inputDeviceInfo.setBrowserCode("Internet Explorer");
            }
            else if (userAgent.indexOf("msie 3") != -1)
            {
                inputDeviceInfo.setBrowserVersion("ie 3");
                inputDeviceInfo.setBrowserText("INTERNET EXPLORER");
                inputDeviceInfo.setBrowserCode("Internet Explorer");
            }
            else if (userAgent.indexOf("msie") != -1)
            {
                inputDeviceInfo.setBrowserVersion("ie ?");
                inputDeviceInfo.setBrowserText("INTERNET EXPLORER");
                inputDeviceInfo.setBrowserCode("Internet Explorer");
            }
        }
        else if (userAgent.indexOf("firefox") > -1)
        {
            if (userAgent.indexOf("firefox/3.8") > -1)
            {
                inputDeviceInfo.setBrowserVersion("Firefox 3.8");
                inputDeviceInfo.setBrowserText("MOZILLA FIREFOX");
                inputDeviceInfo.setBrowserCode("Firefox");
            }
            else if (userAgent.indexOf("firefox/3.5") > -1)
            {
                inputDeviceInfo.setBrowserVersion("Firefox 3.5");
                inputDeviceInfo.setBrowserText("MOZILLA FIREFOX");
                inputDeviceInfo.setBrowserCode("Firefox");
            }
            else if (userAgent.indexOf("firefox/3.1") > -1)
            {
                inputDeviceInfo.setBrowserVersion("Firefox 3.1");
                inputDeviceInfo.setBrowserText("MOZILLA FIREFOX");
                inputDeviceInfo.setBrowserCode("Firefox");
            }
            else if (userAgent.indexOf("firefox/3.0") > -1)
            {
                inputDeviceInfo.setBrowserVersion("Firefox 3.0");
                inputDeviceInfo.setBrowserText("MOZILLA FIREFOX");
                inputDeviceInfo.setBrowserCode("Firefox");
            }
            else if (userAgent.indexOf("firefox/2.0") > -1)
            {
                inputDeviceInfo.setBrowserVersion("Firefox 2.0");
                inputDeviceInfo.setBrowserText("MOZILLA FIREFOX");
                inputDeviceInfo.setBrowserCode("Firefox");
            }
            else if (userAgent.indexOf("firefox/1.5") > -1)
            {
                inputDeviceInfo.setBrowserVersion("Firefox 1.5");
                inputDeviceInfo.setBrowserText("MOZILLA FIREFOX");
                inputDeviceInfo.setBrowserCode("Firefox");
            }
            else if (userAgent.indexOf("firefox/1.0") > -1)
            {
                inputDeviceInfo.setBrowserVersion("Firefox 1.0");
                inputDeviceInfo.setBrowserText("MOZILLA FIREFOX");
                inputDeviceInfo.setBrowserCode("Firefox");
            }
        }
        else if (userAgent.indexOf("chrome") > -1)
        {
            if (userAgent.indexOf("chrome/3.0") > -1)
            {
                inputDeviceInfo.setBrowserVersion("Google Chrome 3.0");
                inputDeviceInfo.setBrowserText("GOOGLE CHROME");
                inputDeviceInfo.setBrowserCode("Google Chrome");
            }
            else if (userAgent.indexOf("chrome/2.0") > -1)
            {
                inputDeviceInfo.setBrowserVersion("Google Chrome 2.0");
                inputDeviceInfo.setBrowserText("GOOGLE CHROME");
                inputDeviceInfo.setBrowserCode("Google Chrome");
            }
            else if (userAgent.indexOf("chrome/1.0") > -1)
            {
                inputDeviceInfo.setBrowserVersion("Google Chrome 1.0");
                inputDeviceInfo.setBrowserText("GOOGLE CHROME");
                inputDeviceInfo.setBrowserCode("Google Chrome");
            }
            else if (userAgent.indexOf("chrome/0.4") > -1)
            {
                inputDeviceInfo.setBrowserVersion("Google Chrome 0.4");
                inputDeviceInfo.setBrowserText("GOOGLE CHROME");
                inputDeviceInfo.setBrowserCode("Google Chrome");
            }
            else if (userAgent.indexOf("chrome/0.3") > -1)
            {
                inputDeviceInfo.setBrowserVersion("Google Chrome 0.3");
                inputDeviceInfo.setBrowserText("GOOGLE CHROME");
                inputDeviceInfo.setBrowserCode("Google Chrome");
            }
            else if (userAgent.indexOf("chrome/0.2") > -1)
            {
                inputDeviceInfo.setBrowserVersion("Google Chrome 0.2");
                inputDeviceInfo.setBrowserText("GOOGLE CHROME");
                inputDeviceInfo.setBrowserCode("Google Chrome");
            }
            else
            {
                inputDeviceInfo.setBrowserVersion("Google Chrome");
                inputDeviceInfo.setBrowserText("GOOGLE CHROME");
                inputDeviceInfo.setBrowserCode("Google Chrome");
            }
        }
        else if (userAgent.indexOf("safari") > -1)
        {
            String safariVersion = getSafariVersion(userAgent);
            if (safariVersion.equals(""))
            {
                inputDeviceInfo.setBrowserVersion("Safari");
                inputDeviceInfo.setBrowserText("SAFARI BROWSER");
                inputDeviceInfo.setBrowserCode("Safari");
            }
            else if (safariVersion.startsWith("4.0"))
            {
                inputDeviceInfo.setBrowserVersion("Safari 4.0");
                inputDeviceInfo.setBrowserText("SAFARI BROWSER");
                inputDeviceInfo.setBrowserCode("Safari");
            }
            else if (safariVersion.startsWith("3.2"))
            {
                inputDeviceInfo.setBrowserVersion("Safari 3.2");
                inputDeviceInfo.setBrowserText("SAFARI BROWSER");
                inputDeviceInfo.setBrowserCode("Safari");
            }
            else if (safariVersion.startsWith("3.1"))
            {
                inputDeviceInfo.setBrowserVersion("Safari 3.1");
                inputDeviceInfo.setBrowserText("SAFARI BROWSER");
                inputDeviceInfo.setBrowserCode("Safari");
            }
            else if (safariVersion.startsWith("3.0"))
            {
                inputDeviceInfo.setBrowserVersion("Safari 3.0");
                inputDeviceInfo.setBrowserText("SAFARI BROWSER");
                inputDeviceInfo.setBrowserCode("Safari");
            }
            else
            {
                inputDeviceInfo.setBrowserVersion("Safari");
                inputDeviceInfo.setBrowserText("SAFARI BROWSER");
                inputDeviceInfo.setBrowserCode("Safari");
            }
        }
        else if (userAgent.indexOf("opera") > -1)
        {
            inputDeviceInfo.setBrowserVersion("opera browser");
            inputDeviceInfo.setBrowserText("OPERA BROWSER");
            inputDeviceInfo.setBrowserCode("OPERA");
        }
        else if (userAgent.indexOf("netscape6") != -1)
        {
            inputDeviceInfo.setBrowserVersion("netscape 6");
            inputDeviceInfo.setBrowserText("NETSCAPE NAVIGATOR");
            inputDeviceInfo.setBrowserCode("Netscape");
        }
        else if (userAgent.indexOf("mozilla") > -1)
        {
            if (userAgent.indexOf("mozilla/7.0") > -1)
            {
                inputDeviceInfo.setBrowserVersion("netscape 7");
                inputDeviceInfo.setBrowserText("NETSCAPE NAVIGATOR");
                inputDeviceInfo.setBrowserCode("Netscape");
            }
            else if (userAgent.indexOf("mozilla/4.7") != -1)
            {
                inputDeviceInfo.setBrowserVersion("netscape 4.7");
                inputDeviceInfo.setBrowserText("NETSCAPE NAVIGATOR");
                inputDeviceInfo.setBrowserCode("Netscape");
            }
            else if (userAgent.indexOf("mozilla/4.78") != -1)
            {
                inputDeviceInfo.setBrowserVersion("netscape 4.78");
                inputDeviceInfo.setBrowserText("NETSCAPE NAVIGATOR");
                inputDeviceInfo.setBrowserCode("Netscape");
            }
            else if (userAgent.indexOf("mozilla/4.08") != -1)
            {
                inputDeviceInfo.setBrowserVersion("netscape 4.08");
                inputDeviceInfo.setBrowserText("NETSCAPE NAVIGATOR");
                inputDeviceInfo.setBrowserCode("Netscape");
            }
            else if (userAgent.indexOf("mozilla/3") != -1)
            {
                inputDeviceInfo.setBrowserVersion("netscape 3");
                inputDeviceInfo.setBrowserText("NETSCAPE NAVIGATOR");
                inputDeviceInfo.setBrowserCode("Netscape");
            }
        }
    }

    private static void getOSVersionInfo(String userAgent, InputDeviceInfo inputDeviceInfo)
    {
        userAgent = userAgent.toLowerCase();
        if (userAgent.indexOf("windows nt 6.1") >= 0)
        {
            inputDeviceInfo.setOsVersion("Windows 7");
            inputDeviceInfo.setOsText("WINDOWS");
            inputDeviceInfo.setOsCode("Windows 7");
        }
        else if (userAgent.indexOf("windows nt 6.0") >= 0)
        {
            inputDeviceInfo.setOsVersion("Windows Vista");
            inputDeviceInfo.setOsText("WINDOWS");
            inputDeviceInfo.setOsCode("Windows Vista");
        }
        else if (userAgent.indexOf("windows nt 5.2") >= 0)
        {
            inputDeviceInfo.setOsVersion("Windows Server 2003");
            inputDeviceInfo.setOsText("WINDOWS");
            inputDeviceInfo.setOsCode("Windows 2003");
        }
        else if (userAgent.indexOf("windows nt 5.1") >= 0)
        {
            inputDeviceInfo.setOsVersion("Windows XP");
            inputDeviceInfo.setOsText("WINDOWS");
            inputDeviceInfo.setOsCode("Windows XP");
        }
        else if (userAgent.indexOf("windows nt 5.0") >= 0)
        {
            inputDeviceInfo.setOsVersion("Windows 2000");
            inputDeviceInfo.setOsText("WINDOWS");
            inputDeviceInfo.setOsCode("Windows 2000");
        }
        else if (userAgent.indexOf("windows nt 4.0") >= 0)
        {
            inputDeviceInfo.setOsVersion("Windows nt 4");
            inputDeviceInfo.setOsText("WINDOWS");
            inputDeviceInfo.setOsCode("Others");
        }
        else if (userAgent.indexOf("windows 98") >= 0)
        {
            inputDeviceInfo.setOsVersion("Windows 98");
            inputDeviceInfo.setOsText("WINDOWS");
            inputDeviceInfo.setOsCode("Others");
        }
        else if (userAgent.indexOf("windows 95") >= 0)
        {
            inputDeviceInfo.setOsVersion("Windows 95");
            inputDeviceInfo.setOsText("WINDOWS");
            inputDeviceInfo.setOsCode("Others");
        }
        else if (userAgent.indexOf("windows 16") >= 0)
        {
            inputDeviceInfo.setOsVersion("Windows 3.11");
            inputDeviceInfo.setOsText("WINDOWS");
            inputDeviceInfo.setOsCode("Others");
        }
        else if (userAgent.indexOf("mac") >= 0)
        {
            inputDeviceInfo.setOsVersion("Mac");
            inputDeviceInfo.setOsText("MACINTOSH");
            inputDeviceInfo.setOsCode("Macintosh");
        }
        else if (userAgent.indexOf("x11") >= 0)
        {
            inputDeviceInfo.setOsVersion("Unix");
            inputDeviceInfo.setOsText("UNIX");
            inputDeviceInfo.setOsCode("Others");
        }
    }

    private static String getSafariVersion(String userAgent)
    {
        Pattern patt = Pattern.compile("[.a-z0-9\\s]+safari");
        Matcher m = patt.matcher(userAgent);
        while (m.find())
        {
            int start = m.start(0);
            int end = m.end(0);
            return userAgent.substring(start, end);
        }
        return "";
    }	

}
