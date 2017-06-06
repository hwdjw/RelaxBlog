-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: blog
-- ------------------------------------------------------
-- Server version	5.7.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles` (
  `art_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `created_date` date NOT NULL,
  `modified_date` date DEFAULT NULL,
  `content` varchar(10000) DEFAULT NULL,
  `categories` varchar(50) DEFAULT NULL,
  `comments_num` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`art_id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (43,'关于软件架构的粗浅理解','2017-05-30',NULL,'<p><br/></p><p style=\"text-indent:20px\"><span style=\"font-size:15px;font-family:宋体\">软件架构，按定义来讲，是指在一定设计原则基础上，从不同角度对组成系统的各部分进行搭配和安排，形成系统的多个结构而组成架构，它包括系统的各个组件，组件外部可见属性及组件之间的相互关系。软件架构相当于软件的草图。正如建筑师设计建筑项目时考虑设计原则和目标一样，软件架构也是一项复杂的、需要参考大量数据、从许多角度研究考量的设计。</span></p><p><span style=\"font-size:21px;font-family:宋体;color:white;background:#0070C0\">软件架构的重要性</span></p><p style=\"text-indent:37px\"><span style=\"font-size:19px;font-family:宋体\">我们设计软件时需要架构，这是在计算机软件发展过程中，暴露出的无数问题下总结出来的经验。我们需要精心设计和架构，因为软件设计需要达到可靠性、安全性、可拓展性、可维护性等等多项目标，倘若在开发软件的过程中，不事先设计精巧的架构，而是盲目开发，最终导致的结果则是不断出现各种问题，需要将软件推翻重制，浪费开发时间和开发经费，导致项目的失败。</span></p><p style=\"text-indent:37px\"><span style=\"font-size:19px;font-family:宋体\">在软件编码之前，我们要做出一系列的决策，如软件以什么样的结构开发、软件应该达到什么样的规模、软件内各元素之间的逻辑关系是怎样的、串行并行的选择、物理设备怎样部署等等，这样的决策的影响将伴随着软件的设计、开发直至维护升级阶段。系统越复杂，出现问题和漏洞的可能性就越大，系统就更需要精密的架构来支撑项目的进行。</span></p><p><span style=\"font-size:21px;font-family:宋体;color:white;background:#0070C0\">软件架构师</span></p><p style=\"text-indent:37px\"><span style=\"font-size:19px;font-family:宋体\">身为架构师，应当具备各种必要的素质，比如全局思维，从业务到市场再到技术实现，从软件的研发到硬件的部署；比如战略思维，从行业的发展方向到技术的发展方向；比如抽象思维，将需求抽象成功能模块，诸如此类。</span></p><p><span style=\"font-size:21px;font-family:宋体;color:white;background:#0070C0\">总结</span></p><p style=\"text-indent:37px\"><span style=\"font-size:19px;font-family:宋体\">总而言之，软件架构是一个宽泛的概念，包含方方面面的考量和设计，好的架构让软件灵活而稳定，差的架构让软件难以维护、漏洞百出。可以说软件架构影响着软件的整个生命周期。</span></p><p><br/></p>','软件架构',NULL,1),(44,'关于软件架构的一个问题','2017-06-05',NULL,'<p>What kinds of business goals have driven the construction of the following:</p><p class=\"MsoListParagraph\" style=\"margin-left: 67px;white-space: normal;text-indent: 37px\"><span style=\"font-size: 19px;color: rgb(0, 32, 96)\">1.&nbsp;&nbsp;&nbsp;&nbsp; The World Wide Web</span></p><p class=\"MsoListParagraph\" style=\"margin-left: 67px;white-space: normal;text-indent: 37px\"><span style=\"font-size: 19px;font-family: 宋体;color: rgb(0, 32, 96)\">为人们与全世界进行信息互通提供了传播媒介，帮助人们创造一个世界性的知识信息库。它能使人们能够通过轻松的点击来获取网络上的信息资源，而不必事必躬亲地去寻找，比如通过邮件、电话、图书馆等方式，万维网更加快捷方便。</span></p><p class=\"MsoListParagraph\" style=\"margin-left: 67px;white-space: normal;text-indent: 37px\"><span style=\"font-size: 19px;color: rgb(0, 32, 96)\">2.&nbsp;&nbsp;&nbsp;&nbsp; Amazon’s EC2 cloud infrastructure</span></p><p class=\"MsoListParagraph\" style=\"margin-left: 67px;white-space: normal;text-indent: 37px\"><span style=\"font-size: 19px;font-family: 宋体;color: rgb(0, 32, 96)\">亚马逊希望建立起一个高效、高性能、高利用率的云计算平台，一个能够将用户程序运行在其上，并按照需求分配相应性能的虚拟机的平台。而亚马逊弹性计算云（</span><span style=\"font-size: 19px;color: rgb(0, 32, 96)\">Amazon</span><span style=\"font-size: 19px;font-family: 宋体;color: rgb(0, 32, 96)\">’</span><span style=\"font-size: 19px;color: rgb(0, 32, 96)\">s EC2 cloud</span><span style=\"font-size: 19px;font-family: 宋体;color: rgb(0, 32, 96)\">）应运而生，它使得用户不必亲自购买、维护一台服务器，而是按照需求租借云服务器进行信息维护。</span></p><p class=\"MsoListParagraph\" style=\"margin-left: 67px;white-space: normal;text-indent: 37px\"><span style=\"font-size: 19px;color: rgb(0, 32, 96)\">Google’s Android platform</span></p><p class=\"MsoListParagraph\" style=\"margin-left: 67px;white-space: normal\"><span style=\"font-size: 19px;font-family: 宋体;color: rgb(0, 32, 96)\">谷歌与</span><span style=\"font-size: 19px;color: rgb(0, 32, 96)\">84</span><span style=\"font-size: 19px;font-family: 宋体;color: rgb(0, 32, 96)\">家硬件制造商、软件开发商及电信营运商组建开放手机联盟，共同研发改良</span><span style=\"font-size: 19px;color: rgb(0, 32, 96)\">Android</span><span style=\"font-size: 19px;font-family: 宋体;color: rgb(0, 32, 96)\">系统，目的是开发出一款开源的智能移动端操作系统，以打破先前移动端操作系统的垄断，并促进移动端开发领域的发展。</span></p><p><br/></p>','软件架构',NULL,0),(45,'数据库设计习题','2017-06-05',NULL,'<p><span style=\"font-family:宋体\">某电子公司要设计一个产品研发管理系统，需要管理如下信息：</span> <br/> <span style=\"font-family:宋体\">产品</span>(P)<span style=\"font-family:宋体\">：产品号</span>(pNo)<span style=\"font-family:宋体\">，产品名</span>(pName)<span style=\"font-family:宋体\">，预算</span>(pCost)<span style=\"font-family:宋体\">，保密级别</span>(pLevel)<span style=\"font-family:宋体\">，开始时间</span>(pStart)<span style=\"font-family:宋体\">，结束时间</span>(pEnd) <br/> <span style=\"font-family:宋体\">人员</span>(E)<span style=\"font-family:宋体\">：编号</span>(eNO)<span style=\"font-family:宋体\">，姓名</span>(eName)<span style=\"font-family:宋体\">，性别</span>(eSex)<span style=\"font-family:宋体\">，职称</span>(eTitle)<span style=\"font-family:宋体\">，生日</span>(eBirthday) <br/> <span style=\"font-family:宋体\">元件</span>(C)<span style=\"font-family:宋体\">：元件号</span>(cNo)<span style=\"font-family:宋体\">，元件名</span>(cName)<span style=\"font-family:宋体\">，类型</span>(cType)<span style=\"font-family:宋体\">，价格</span>(cPrice) <br/> <span style=\"font-family:宋体\">供货商</span>(S)<span style=\"font-family:宋体\">：名称</span>(sName)<span style=\"font-family:宋体\">，电话</span>(sTel)<span style=\"font-family:宋体\">，城市</span>(sCity) <br/> <span style=\"font-family:宋体\">此外，一个人员可参加多种产品研发工作，一种产品研发工作可有多人参加，但一种产品有且只有一个负责人，一个人最多负责一种产品。一种产品会使用多种元件，数量各不相同，一种元件也可能被多种产品使用。一种元件只有一个供货商供应，一个供应商可供应多种元件。</span> <br/> <span style=\"font-family:宋体\">根据上述描述，完成以下要求：</span> <br/> ①<span style=\"font-family:宋体\">画出此系统的</span>E-R<span style=\"font-family:宋体\">图。</span> <br/> ②<span style=\"font-family:宋体\">根据</span>ER<span style=\"font-family:宋体\">图，设计一组满足</span>3NF<span style=\"font-family:宋体\">的关系模式。</span> <br/> ③<span style=\"font-family:宋体\">在设计的关系模式下用</span>SQL<span style=\"font-family:宋体\">完成查询：</span>&quot;<span style=\"font-family:宋体\">王五</span>&quot;<span style=\"font-family:宋体\">负责的产品所使用的所有元件的元件名、数量和价格。</span></p><p><span style=\"font-family:宋体;color:#E36C0A\">答：</span></p><p><br/></p><p><br/></p><p><span style=\"color:#E36C0A\">2.</span><span style=\"font-family:宋体;color:#E36C0A\">关系模式如下：</span></p><p><span style=\"font-family:&#39;微软雅黑&#39;,&#39;sans-serif&#39;\">P(<strong><span style=\"text-decoration:underline;\">pNo</span>,</strong> pName, pCost, pLevel, pStart, pEnd, managerID)</span></p><p><span style=\"font-family:&#39;微软雅黑&#39;,&#39;sans-serif&#39;\">E(<strong><span style=\"text-decoration:underline;\">eNO,</span></strong> eName, eSex, eTitle, eBirthday)</span></p><p><span style=\"font-family:&#39;微软雅黑&#39;,&#39;sans-serif&#39;\">participate(<strong><span style=\"text-decoration:underline;\">eNo,Pno</span></strong>)</span></p><p><span style=\"font-family:&#39;微软雅黑&#39;,&#39;sans-serif&#39;\">C(<strong><span style=\"text-decoration:underline;\">cNo</span></strong>, cName, cType, cPrice)</span></p><p><span style=\"font-family:&#39;微软雅黑&#39;,&#39;sans-serif&#39;\">makeup(<strong><span style=\"text-decoration:underline;\">cNo</span></strong>, <strong><span style=\"text-decoration:underline;\">pNo,</span></strong>quantity)</span></p><p><span style=\"font-family:&#39;微软雅黑&#39;,&#39;sans-serif&#39;\">S(<strong><span style=\"text-decoration:underline;\">sName</span></strong>, sTel, sCity)</span></p><p><span style=\"font-family:&#39;微软雅黑&#39;,&#39;sans-serif&#39;\">supply(<strong><span style=\"text-decoration:underline;\">cNo</span></strong>,<strong><span style=\"text-decoration:underline;\">sName</span></strong>)</span></p><p>3.<span style=\"font-family:宋体\">可以写出。</span>SQL<span style=\"font-family:宋体\">语句如下：</span></p><p>/*</p><p><span style=\"font-family:宋体\">选择出王五负责的所有产品</span></p><p>*/</p><p><span style=\"color:#00B050\">with t as</span></p><p><span style=\"color:#00B050\">select pNo from P where managerID=(select eNo from E where eName=&quot;</span><span style=\"font-family:宋体;color:#00B050\">王五</span><span style=\"color:#00B050\">&quot;)</span></p><p>&nbsp;</p><p>/*</p><p><span style=\"font-family:宋体\">选择出王五负责产品的零件</span>ID,<span style=\"font-family:宋体\">产品</span>ID<span style=\"font-family:宋体\">和数量</span></p><p>*/</p><p><span style=\"color:#00B050\">with s as</span></p><p><span style=\"color:#00B050\">select cNo,pNo,quantity from makeup nature join t</span></p><p>/*</p><p>s<span style=\"font-family:宋体\">与</span>C<span style=\"font-family:宋体\">自然连接后，加入零件名称和价格属性</span></p><p>*/</p><p><span style=\"color:#00B050\">with r as</span></p><p><span style=\"color:#00B050\">select cName,pNo,quantity,price from C nature join s</span></p><p>/*</p><p><span style=\"font-family:宋体\">以零件名合并后投影</span></p><p>*/</p><p><span style=\"color:#00B050\">select cName,sum(quantity),price from r </span></p><p><span style=\"color:#00B050\">group by cName;</span></p><p>&nbsp;</p><p><br/></p>','数据库',NULL,1),(46,'数据库习题2','2017-06-05',NULL,'<p><span style=\"font-size:16px;font-family:宋体\">某大学数据库系统需管理下述信息：学生可根据自己的情况选修课程。每门课程仅由一个学院开设。一门课程可以在不同学期（如2016年秋，2017年春等）多次开设，每学期可以分别由多位教师讲授。一位学生可在同一学期选修多门课程，也可在不同学期选修同一课程。 <br/> <br/> 1. 根据上述说明，并充分利用常识，画出此系统的E-R图。 <br/> 2. 在1的基础上，设计此系统的一组合适的关系模式。 <br/> 3. 在你设计的关系模式下，能写SQL语句完成下面查询吗？ <br/> 求选修“王敏”老师讲的“市场营销学”的学生的学号、姓名及选课学期？ </span></p><p><span style=\"font-family:宋体;color:#E36C0A\">答：</span></p><p><br/></p><p><br/></p><p><span style=\"color:#E36C0A\">2.</span><span style=\"font-family:宋体;color:#E36C0A\">关系模式如下：</span></p><p><span style=\"font-family:&#39;微软雅黑&#39;,&#39;sans-serif&#39;\">teacher(<strong><span style=\"text-decoration:underline;\">teacher_id</span></strong>, name, dept_name)</span></p><p><span style=\"font-family:&#39;微软雅黑&#39;,&#39;sans-serif&#39;\">student( <strong><span style=\"text-decoration:underline;\">student_id,</span></strong> name, tot_cred, dept_name)</span></p><p><span style=\"font-family:&#39;微软雅黑&#39;,&#39;sans-serif&#39;\">course(<strong><span style=\"text-decoration:underline;\">course_id</span></strong>, title, dept_name, credit)</span></p><p><span style=\"font-family:&#39;微软雅黑&#39;,&#39;sans-serif&#39;\">section(<strong><span style=\"text-decoration:underline;\">course_id</span></strong>, <strong><span style=\"text-decoration:underline;\">sec_id</span></strong>, <strong><span style=\"text-decoration:underline;\">semester</span></strong>, <strong><span style=\"text-decoration:underline;\">year</span></strong>, building, room_num, times_slot_id)</span></p><p><span style=\"font-family:&#39;微软雅黑&#39;,&#39;sans-serif&#39;\">teaches(<strong><span style=\"text-decoration:underline;\">teacher_id</span></strong>, <strong><span style=\"text-decoration:underline;\">course_id</span></strong>,<strong><span style=\"text-decoration:underline;\"> sec_id</span></strong>, <strong><span style=\"text-decoration:underline;\">semester</span></strong>,<strong><span style=\"text-decoration:underline;\"> year</span></strong>)</span></p><p><span style=\"font-family:&#39;微软雅黑&#39;,&#39;sans-serif&#39;\">takes(<strong><span style=\"text-decoration:underline;\">student_id</span></strong>, <strong><span style=\"text-decoration:underline;\">coruse_id</span></strong>, <strong><span style=\"text-decoration:underline;\">sec_id</span></strong>, <strong><span style=\"text-decoration:underline;\">semester</span></strong>, <strong><span style=\"text-decoration:underline;\">year</span></strong>)</span></p><p><span style=\"font-family:&#39;微软雅黑&#39;,&#39;sans-serif&#39;\">classroom(<strong><span style=\"text-decoration:underline;\">room_num</span></strong>, <strong><span style=\"text-decoration:underline;\">building</span></strong>, capacity)</span></p><p><span style=\"font-family:&#39;微软雅黑&#39;,&#39;sans-serif&#39;\">time_slot(<strong><span style=\"text-decoration:underline;\">time_slot_id</span></strong>, day, start_time, end_time)</span></p><p>&nbsp;</p><p>3.<span style=\"font-family:宋体\">可以写出。</span>SQL<span style=\"font-family:宋体\">语句如下：</span></p><p>/*</p><p><span style=\"font-family:宋体\">查询出王敏老师教的“市场营销学”的课程</span>ID<span style=\"font-family:宋体\">，课序号，学期，学年，并记结果为</span>t</p><p>*/</p><p><span style=\"color:#00B050\">with t as</span></p><p><span style=\"color:#00B050\">select course_id,sec_id,semeter,year from teaches</span></p><p><span style=\"color:#00B050\">where </span></p><p><span style=\"color:#00B050\">teacher_id=(select teacher_id from teacher where name=&#39;</span><span style=\"font-family:宋体;color:#00B050\">王敏</span><span style=\"color:#00B050\">&#39;)</span></p><p><span style=\"color:#00B050\">and</span></p><p><span style=\"color:#00B050\">course_id=(select course_id from course where title=&#39;</span><span style=\"font-family:宋体;color:#00B050\">市场营销学</span><span style=\"color:#00B050\">&#39;)</span></p><p>/*</p><p><span style=\"font-family:宋体\">从</span>takes<span style=\"font-family:宋体\">表中查找所有选了</span>t<span style=\"font-family:宋体\">结果中课程的行，记为</span>s</p><p>*/</p><p>&nbsp;</p><p><span style=\"color:#00B050\">with s as</span></p><p><span style=\"color:#00B050\">select * from takes </span></p><p><span style=\"color:#00B050\">where (course_id,sec_id,semester,year) in t</span></p><p>/*</p><p><span style=\"font-family:宋体\">从</span>student<span style=\"font-family:宋体\">和</span>s<span style=\"font-family:宋体\">的笛卡尔积中查找符合</span>s<span style=\"font-family:宋体\">结果的学生</span>id\\<span style=\"font-family:宋体\">姓名等信息</span>,<span style=\"font-family:宋体\">输出结果</span>.</p><p>*/</p><p><span style=\"color:#00B050\">select student_id,name,semester,year from student,s</span></p><p><span style=\"color:#00B050\">where student.student_id=s.student_id;</span></p><p><br/></p>','数据库',NULL,1),(47,'堆栈计算器数据结构','2017-06-05',NULL,'<p><span style=\"font-family:宋体\">主要数据结构设计说明</span></p><p style=\"margin-left:52px;line-height:27px\"><span style=\"font-family:宋体\">A.</span><span style=\"font-family:宋体\">主要数据结构：</span></p><p style=\"margin-left:52px;line-height:27px\"><span style=\"font-family:宋体\">栈的使用：包括清空、入栈、出栈、取值、计算长度等基本功能。</span></p><p style=\"margin-left:52px;line-height:27px\"><span style=\"font-family:宋体\">B.</span><span style=\"font-family:宋体\">主要功能算法：</span></p><p style=\"margin-left:52px;line-height:27px\"><span style=\"font-family:宋体\">（1）加减乘除四则运算及乘方：略</span></p><p style=\"margin-left:52px;line-height:27px\"><span style=\"font-family:宋体\">（2）小数处理：检测十进制数字和小数点,检测到非“.”或数字时，将前部分扫描结果连接成字符串然后再转化为double型存入操作数栈。</span></p><p style=\"margin-left:52px;line-height:27px\"><span style=\"font-family:宋体\">（3）中缀表达式转化为后缀表达式并进行计算：</span></p><p style=\"margin-left:52px;text-indent:28px;line-height:27px\"><span style=\"font-family:宋体\">3.1 </span><span style=\"font-family:宋体\">定义两个栈：操作符栈（ostack）和操作数栈（nstack）；定义优先级&quot;+&quot;&quot;-&quot;为1级，&quot;*&quot;&quot;/&quot;为2级,&quot;^&quot;&quot;%&quot;为3级，优先级由低到高。定义输出的后缀表达式的字符串</span></p><p style=\"margin-left:52px;text-indent:28px;line-height:27px\"><span style=\"font-family:宋体\">3.2</span><span style=\"font-family:宋体\">从左到右一次扫描中缀表达式的每一个字符，如果是数字字符和圆点“.”进入小数处理的函数，将其转化为double存入操作数栈；如果遇到“（”，则将其入操作符栈, 运行括号是否匹配算法函数；如果遇到sin（）等见下sin（）算法同样运算出结果后将结果压入操作数栈；若取出的字符是运算符，则将该运算符与操作符栈栈顶元素比较，如果该运算符优先级大于栈顶运算符优先级，则将该运算符入栈，否者，将栈顶运算符弹出。</span></p><p style=\"margin-left:52px;text-indent:28px;line-height:27px\"><span style=\"font-family:宋体\">3.3</span><span style=\"font-family:宋体\">一直循环直到将所有字符处理完将所有元素按处理过程中入定义的后缀表达式字符串出队列并打印就可显示后缀表达式。每次取操作数栈中两个数和操作符栈中一个操作符进行计算直至栈空即可得输出结果。</span></p><p style=\"margin-left:52px;line-height:27px\"><span style=\"font-family:宋体\">C.</span><span style=\"font-family:宋体\">附加功能算法：</span></p><p style=\"margin-left:52px;line-height:27px\"><span style=\"font-family:宋体\">（1）进制转换：</span></p><p style=\"margin-left:52px;line-height:27px\"><span style=\"font-family:宋体\">传入参数为字符串，扫描后判断记录是否存在小数点并将数字分离传入数组。将数组中数字按权展开累加。例如：二进制中10.1转化为十进制为0*1+1*2+1*（1/2）。八进制中23.6转为十进制为3*1+2*8+6*（1/8）。</span></p><p style=\"margin-left:52px;line-height:27px\"><span style=\"font-family:宋体\">（2）sin()（同理tan()，cos(),log()exp()等) 计算：检测数组中若连续三位是sin则检测括号匹配，将括号内字符串单独储存进入递归计算，保存递归的运算结果用math.h中的sin处理,保存递归后得到的后缀表达式。</span></p><p style=\"margin-left:52px;line-height:27px\"><span style=\"font-family:宋体\">D.</span><span style=\"font-family:宋体\">报错功能算法：</span></p><p style=\"margin-left:52px;line-height:27px\"><span style=\"font-family:宋体\">（1)括号是否匹配：布尔返回值函数,参数为带括号字符串函数。从头到尾扫描所有字符,若为左括号,则将它在字符串的下标号压入栈,若为右括号则弹出。若压入前栈满则报错,若弹出时栈空说明右括号过多不匹配 。若扫描后栈恰好为空,则匹配,不为空则左括号过多,不匹配。</span></p><p style=\"margin-left:52px;line-height:27px\"><span style=\"font-family:宋体\">（2）布尔函数检测是否为功能函数可识别的字符否则报错。</span></p><p><br/></p>','数据结构与算法',NULL,1),(50,'关于计算机网络的思考','2017-06-05',NULL,'<p>正在学习中,具体内容之后补充.</p>','计算机网络',NULL,0),(51,'来自网易云音乐的分享','2017-06-05',NULL,'<p>\n    曲名 晴天<br/>\n</p>\n<p>\n    曲作者：周杰伦<br/>\n &nbsp; &nbsp;演奏者：昼夜<br/>\n &nbsp; &nbsp;来自网易云音乐<br/>\n  <iframe frameborder=\"no\" border=\"0\" marginwidth=\"0\" marginheight=\"0\" width=330 height=86 src=\"//music.163.com/outchain/player?type=2&id=423703261&auto=0&height=66\"></iframe>\n</p>','音乐',NULL,1);
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `cmt_id` int(11) NOT NULL AUTO_INCREMENT,
  `created_date` date NOT NULL,
  `art_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` varchar(200) NOT NULL,
  PRIMARY KEY (`cmt_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,'2015-05-04',1,1,'这是第一个评论测试'),(2,'2015-05-04',1,2,'这是第二个评论测试'),(3,'2015-05-04',1,3,'这是第三个评论测试');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `links`
--

DROP TABLE IF EXISTS `links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(200) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `links`
--

LOCK TABLES `links` WRITE;
/*!40000 ALTER TABLE `links` DISABLE KEYS */;
INSERT INTO `links` VALUES (10,'http://www.baidu.com','百度','百度搜索'),(11,'http://www.scu.edu.cn','四川大学','四川大学官方网站'),(12,'http://sw.scu.edu.cn','四川大学软件学院','四川大学软件学院官方网站'),(13,'http://github.com/hwdjw/relaxblog','hwdjw-RelaxBlog','作者Github');
/*!40000 ALTER TABLE `links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `home_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_id` (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'AAAAA','123456','A@163.com',NULL),(2,'BBBBB','123456','B@163.com',NULL),(3,'CCCCC','123456','C@163.com',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-05 23:15:48
