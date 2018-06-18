# Spring Web MVC
* 프로그래밍할 때 사용하기 위해 필요한 클래스들을 모아 놓은 것을 클래스 라이브러리 또는 라이브러리라고 합니다.
* Spring은 Java 서버 프로그래밍에 필요한 클래스들을 모아 놓은 굉장히 커다란 라이브러리입니다.
* 커다란 라이브러리를 흔히 Framework Library라고 부릅니다. 그래서 흔히 Spring Framework라고 불립니다.
* Spring Framework 라이브러리의 구성 요소 중 하나는 Spring Web MVC 라이브러리입니다.  

---

<table>
<tr>
<td>Controller</td>
<td>
- Java 클래스로 구현됩니다.<br/>
- 실행 흐름을 지휘 통제하는 역할을 합니다.<br/>
- 웹브라우저의 URL 요청을 웹서버가 받아서 실행할 때, Controller가 먼저 실행되어 이후 실행 흐름을 지휘 통제합니다.<br/>
- Controller가 지휘 통제 외에 직접 작업을 하는 것은 바람직하지 않습니다.<br/>
- 즉, Controller에는 실행 흐름의 지휘 통제에 해당하는 코드만 있어야 합니다.<br/>
- 실행 흐름을 지휘 통제한다는 것은 다른 객체들의 메소드를 호출하는 대장이라는 뜻입니다.<br/>
- 실제 작업은 Controller가 아닌 다른 객체의 메소드에서 해야합니다.
</td>
</tr>

<tr>
<td>View</td>
<td>
- View가 담당하는 작업은 화면 출력입니다.<br/>
- 뷰의 주요 내용은 HTML 태그와 CSS 서식입니다.<br/>
- 웹브라우저에서 실행되는 JS 코드도 뷰의 내용에 포함됩니다.<br/>
- JSP 파일, CSS 파일, JS 파일로 뷰가 구현됩니다.<br/>
- 뷰의 JSP 파일에 가급적 Java 코드를 넣지 않는 거이 바람직합니다.
</td>
</tr>

<tr>
<td>Model</td>
<td>
- Java 클래스로 구현됩니다.<br/>
- Controller와 View 사이에 주고 받는 데이터에 해당하는 간단한 객체입니다.<br/>
- View가 화면을 그릴 때 필요한 데이터는, Controller가 View에게 일을 시키면서 전달되어야 합니다.<br/>
이렇게 View에게 전달되는 객체를 Model이라고 합니다.<br/>
- Model 클래스는, 멤버 변수에 데이터를 대입하고 꺼내기 위한 간단한 메소드만으로 구현되는 것이 보통입니다. (getter, setter)
- Model 객체를 DTO 또는 VO라고 부르기도 합니다.
</td>
</tr>

<tr>
<td>DAO</td>
<td>
- Java 클래스로 구현됩니다.<br/>
- Data Access Object의 약자입니다.<br/>
- DB의 SQL 명령 호출을 담당합니다.<br/>
- DB를 직접 호출하는 코드는 전부 DAO 클래스에 구현해야 합니다.<br/>
- MyBatis에서는 DAO를 mapper라고 부릅니다.
</td>
</tr>

<tr>
<td>Service</td>
<td>
- Java 클래스로 구현됩니다.<br/>
- DAO, Controller, View에 속하지 않는 작업은 Service 클래스에 구현합니다.<br/>
- 예를 들어, 사용자가 입력한 데이터가 올바른지 검사하거나, 작업을 할 권한이 있는지 검사하거나, 
비밀번호를 저장하기 전에 암호화하는 작업들은 Service 클래스에 구현되어야 합니다.
</td>
</tr>
</table>

### Spring Dispatcher Servlet
* Spring Web MVC 라이브러리에 들어있는 대표적인 Servlet 클래스입니다.
* Spring Web MVC의 엔진에 해당하는 클래스입니다.
* 웹브라우저가 웹서버에 전달한 request를 Spring Dispatcher Servlet이 받아 실행하면서 Spring Web MVC의 기능이 시작됩니다.
* 웹브라우저 요청을 Spring Dispatcher Servlet이 받아서 실행할 수 있으려면,<br/>
Web Application의 설정 파일인 web.xml 파일에 Spring Dispatcher Servlet이 등록되어야 합니다.

### Servlet
* 웹브라우저가 웹서버에 전달한 요청을 받아 처리하기 위해 지금까지 주로 JSP 파일을 구현했습니다.
* JSP는 웹브라우저가 전달한 request를 받아 처리하고, response로 HTML 태그를 출력하는데 최적화된 형태의<br/>
자바 서버 프로그래밍 기술 중 하나입니다.
* 자바 서버 프로그래밍 기술 중 JSP보다 오래된 것이 Servlet입니다.
* Servlet은 웹브라우저가 전달한 요청을 받아 처리하고, 응답으로 HTML 태그뿐만 아니라<br/>
여러 형태의 데이터를 출력할 수 있는 Java 클래스입니다.
* 예를 들어, HTML 태그가 아니라 다운로드할 파일을 웹브라우저에 출력하는 코드는 JSP로 구현하기 힘들고<br/>
Servlet으로 구현해야 합니다. 동영상, 음악 스트리밍을 출력하는 코드도 Servlet으로 구현해야 합니다.
* 주로 HTML 태그를 웹브라우저에 출력할 때만 JSP가 더 편하고, 그 이상의 복잡한 일은 Servlet으로 구현하는 것이 좋습니다.

### Servlet Container
* Apache Tomcat을 웹서버처럼 사용할 수도 있습니다.
* 하지만, Tomcat의 주요 역할은 Servlet 클래스를 실행하는 서버입니다.
* 그래서, Tomcat을 웹서버라고 부르기보다는 Servlet Container라고 불러야 합니다.

### JSP
* Tomcat은 Servlet 클래스만 실행할 수 있을뿐 JSP 파일을 실행할 수는 없습니다.
* JSP 파일이 Tomcat에서 실행되려면 먼저 Servlet 클래스로 변환되어 컴파일되어야 합니다.
* 예를 들어, hello.jsp 파일은 hello_jsp.java 파일로 자동으로 변환되어 컴파일되고 실행됩니다.
* 즉, Tomcat에서 실행되는 것은 JSP 파일이 아니고, JSP 파일이 변환된 Servlet 클래스입니다.

---

## 실행 과정 설명
1. 웹브라우저는 웹서버에 URL을 요청합니다.
    * 이 요청을 HTTP request라고 합니다.
    * HTTP request에는 URL과 request parameter가 포함되어 있습니다.
    * 요청된 URL이 *.html, *.jpg 등 정적 파일이라면,<br/>
    웹서버는 그 파일을 디스크에서 읽어 웹브라우저에 그대로 전송합니다.
    * 요청된 URL이 jsp 파일이라면,<br/>
    웹서버는 그 jsp 파일을 실행하고, jsp의 실행 결과 출력인 html 태그를 웹브라우저에 전송합니다.
    * 요청된 URL이 servlet의 url 패턴과 일치하면,<br/>
    웹서버는 그 servlet을 실행하고, servlet의 실행 결과 출력을 웹브라우저에 전송합니다.
    
2. 요청된 URL이 spring dispatcher servlet의 url 패턴과 일치하면,<br/>
    1. 웹서버는 spring dispatcher servlet을 실행합니다.
    2. spring dispatcher servlet은 controller action method의 @RequestMapping 값과 URL을 비교합니다.<br/>
    요청된 URL과 일치하는 controller action method를 찾아 호출합니다.
    3. controller action method에서는 model에 데이터를 add 합니다.
    4. controller action method는 view의 이름을 리턴합니다.
    5. spring dispatcher servlet은 리턴된 view의 이름에 해당하는 view 파일을 찾아 호출합니다.<br/>
    그리고 model 객체를 view에 전달합니다.
    6. view는 html 태그를 출력하고, model에서 데이터를 꺼내 출력합니다.
    7. view의 출력이 웹브라우저에 전송됩니다.

<tr>
<td></td>
<td>

</td>
</tr>