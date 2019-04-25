<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ page import="com.amaker.util.User" %>--%>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>志愿者问卷调查</title>
</head>
<link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>

<style type="">
	body{
		background: #ebedf0;
		padding-top:50px;
		margin:5px;
		font-family: "Microsoft Yahei";
	}
	.main{
		background:#fff;
		width:920px;
		padding:0 70px;
		margin:0 auto;
	}
	.toptitle{
		padding:26px 10px 12px;
	}
	.htitle{
		font-size: 20px;
		line-height: 32px;
		font-weight: bold;
		text-align: center;
		color: #1ea0fa;
	}
	.bottom{
		background:#ebedf0;
        text-align:center;
        position: fixed;
        bottom: 0px;
        padding: 20px 0px;
        width: 100%;
	}
	.bottom_btn{
		margin: 0 25px;
		width: 200px;
		border-radius: 8px;
		display: inline-block;
		line-height: 45px;
		color:#fff;
		font-size: 16px;
		background: #1ea0fa;
    }
    .bottom_btn:hover {
		background: #0987db;
		color: #fff;
	}
	.gobackBtn {
		display: inline-block;
		border-color: #999;
		color: #999;
		background: #fff;
	}
	
	a{
		text-decoration: none;
	}

	.topic__inner{
		padding: 0 18px 100px;
	}
	.topic__type-des{
		margin: 16px 0;
	}
	.topic__dottedLine{
		border-top: 1px dashed #c2c2c2;
	}
	.topic__type-body fieldset:first-child {
		margin-top: 16px;
	}
	.topic__type-body fieldset {
		margin-top: 24px;
	}
	fieldset {
		border: 0px solid #c0c0c0;
		margin: 0;
		padding: 0;
	}
	.topic__type-title {
		font-size: 16px;
		font-weight: bold;
		line-height: 26px;
		margin-bottom: 10px;
	}
	legend {
		border: 0;
		padding: 0;
	}
	.topic__type-dry{
		margin-left: 20px;
	}
	.topic__type-dry .topic__type-items {
		line-height: 1.4;
		margin-bottom: 6px;
	}
	.topic__type-items {
		position: relative;
		font-size: 16px;
		color: #333;
		line-height: 32px;
		display: flex;
		display: -webkit-flex;
		align-items: center;
	}
	.topic__type-items .radio__type {
		flex: 0 0 auto;
		position: absolute;
		top: 6px;
		width: 12px;
		height: 12px;
		border: 1px solid #666;
		border-radius: 50%;
	}
	.topic__type-items .checkbox__type {
		flex: 0 0 auto;
		position: absolute;
		top: 6px;
		width: 12px;
		height: 12px;
		border: 1px solid #666;
	}
	.topic__type-items .text__type {
		flex: 1 1 auto;
		height: 32px;
		border: 1px solid #b3b3b3;
		background-color: #fff;
	}
	.topic__type-dry label {
		margin-left: 18px;
	}
</style>

<body>
	<jsp:useBean id="user" scope="page" class="com.amaker.util.User"/>
	<jsp:setProperty name="user" property="username"/>

    <form action="doAnswerServlet" method="post">
        <div class="main">
            <!-- 标题 -->
            <div class="toptitle">
                <h1 class="htitle">
                    欢迎您
                    <font color="red">
                        <jsp:getProperty name="user" property="username"/>
                    </font>
                    填一下问卷吧！
                </h1>
            </div>
            <!-- 正文 -->
            <div class="topic__type">
                <div class="topic__inner">
                    <div class="topic__type-des"></div>
                    <div class="topic__dottedLine"></div>
                    <div class="topic__type-body">
                        <fieldset>
                            <legend class="topic__type-title">1. 你是否做过志愿者？</legend>
                            <div class="topic__type-dry">
                                <span class="topic__type-items">
                                    <input type="radio" name="1" value="是" class="radio__type"/>
                                    <label>是</label>
                                </span>
                                <span class="topic__type-items">
                                    <input type="radio" name="1" value="否" class="radio__type"/>
                                    <label>否</label>
                                </span>
                            </div>
                        </fieldset>
                        <fieldset>
                            <legend class="topic__type-title">2. 你愿意做志愿者吗？</legend>
                            <div class="topic__type-dry">
                                <span class="topic__type-items">
                                    <input type="radio" name="2" value="愿意" class="radio__type"/>
                                    <label>愿意</label>
                                </span>
                                <span class="topic__type-items">
                                    <input type="radio" name="2" value="不愿意" class="radio__type"/>
                                    <label>不愿意</label>
                                </span>
                            </div>
                        </fieldset>
                        <fieldset>
                            <legend class="topic__type-title">3. 你做志愿者的原因是什么呢？</legend>
                            <div class="topic__type-dry">
                                <span class="topic__type-items">
                                    <input type="checkbox" name="3" value="为了奉献爱心" class="checkbox__type"/>
                                    <label>为了奉献爱心</label>
                                </span>
                                <span class="topic__type-items">
                                    <input type="checkbox" name="3" value="因为无聊" class="checkbox__type"/>
                                    <label>因为无聊</label>
                                </span>
                                <span class="topic__type-items">
                                    <input type="checkbox" name="3" value="为了学校要求的自愿时长" class="checkbox__type"/>
                                    <label>为了学校要求的自愿时长</label>
                                </span>
                                <span class="topic__type-items">
                                    <input type="checkbox" name="3" value="为了补贴（有些是有工资补贴的）" class="checkbox__type"/>
                                    <label>为了补贴（有些是有工资补贴的）</label>
                                </span>
                                <span class="topic__type-items">
                                    <input type="checkbox" name="3" value="想多交朋友" class="checkbox__type"/>
                                    <label>想多交朋友</label>
                                </span>
                                <span class="topic__type-items">
                                    <input type="checkbox" name="3" value="为了证书" class="checkbox__type"/>
                                    <label>为了证书</label>
                                </span>
                            </div>
                        </fieldset>
                        <fieldset>
                            <legend class="topic__type-title">4. 你做志愿者的时候，有遇到过不被人理解，尊重的情况吗？</legend>
                            <div class="topic__type-dry">
                                <span class="topic__type-items">
                                    <input type="radio" name="4" value="有" class="radio__type"/>
                                    <label>有</label>
                                </span>
                                <span class="topic__type-items">
                                    <input type="radio" name="4" value="没有" class="radio__type"/>
                                    <label>没有</label>
                                </span>
                            </div>
                        </fieldset>
                        <fieldset>
                            <legend class="topic__type-title">5. 你做过什么志愿者呢？</legend>
                            <div class="topic__type-dry">
							<span class="topic__type-items">
                                <input type="text" class="text__type" name="5">
							</span>
                            </div>
                        </fieldset>
                        <fieldset>
                            <legend class="topic__type-title">6. 你觉得有些自愿活动是否变质了？</legend>
                            <div class="topic__type-dry">
                                <span class="topic__type-items">
                                    <input type="radio" name="6" value="是" class="radio__type"/>
                                    <label>是</label>
                                </span>
                                <span class="topic__type-items">
                                    <input type="radio" name="6" value="否" class="radio__type"/>
                                    <label>否</label>
                                </span>
                            </div>
                        </fieldset>
                        <fieldset>
                            <legend class="topic__type-title">7. 你是通过什么方式报名参加自愿活动？</legend>
                            <div class="topic__type-dry">
                                <span class="topic__type-items">
                                    <input type="checkbox" name="7" value="自愿者网站" class="checkbox__type"/>
                                    <label>自愿者网站</label>
                                </span>
                                <span class="topic__type-items">
                                    <input type="checkbox" name="7" value="通过朋友介绍" class="checkbox__type"/>
                                    <label>通过朋友介绍</label>
                                </span>
                                <span class="topic__type-items">
                                    <input type="checkbox" name="7" value="学校里的消息" class="checkbox__type"/>
                                    <label>学校里的消息</label>
                                </span>
                                <span class="topic__type-items">
                                    <input type="checkbox" name="7" value="志愿者群" class="checkbox__type"/>
                                    <label>志愿者群</label>
                                </span>
                            </div>
                        </fieldset>
                        <fieldset>
                            <legend class="topic__type-title">8. 实践的志愿活动跟你想象的是否一样?</legend>
                            <div class="topic__type-dry">
                                <span class="topic__type-items">
                                    <input type="radio" name="8" value="是" class="radio__type"/>
                                    <label>是</label>
                                </span>
                                <span class="topic__type-items">
                                    <input type="radio" name="8" value="否" class="radio__type"/>
                                    <label>否</label>
                                </span>
                            </div>
                        </fieldset>
                        <fieldset>
                            <legend class="topic__type-title">9. 你在做志愿活动的时候，觉得别人会真心感激你吗？</legend>
                            <div class="topic__type-dry">
                                <span class="topic__type-items">
                                    <input type="radio" name="9" value="是" class="radio__type"/>
                                    <label>是</label>
                                </span>
                                <span class="topic__type-items">
                                    <input type="radio" name="9" value="否" class="radio__type"/>
                                    <label>否</label>
                                </span>
                            </div>
                        </fieldset>
                        <fieldset>
                            <legend class="topic__type-title">10. 如果你看到人家在做志愿活动，你会怎么办？</legend>
                            <div class="topic__type-dry">
                                <span class="topic__type-items">
                                    <input type="radio" name="10" value="是" class="radio__type"/>
                                    <label>是</label>
                                </span>
                                <span class="topic__type-items">
                                    <input type="radio" name="10" value="否" class="radio__type"/>
                                    <label>否</label>
                                </span>
                            </div>
                        </fieldset>
                        <fieldset>
                            <legend class="topic__type-title">11. 看到志愿者，你会觉得</legend>
                            <div class="topic__type-dry">
                                <span class="topic__type-items">
                                    <input type="radio" name="11" value="很高尚" class="radio__type"/>
                                    <label>很高尚</label>
                                </span>
                                <span class="topic__type-items">
                                    <input type="radio" name="11" value="好丢人" class="radio__type"/>
                                    <label>好丢人</label>
                                </span>
                                <span class="topic__type-items">
                                    <input type="radio" name="11" value="没什么特别" class="radio__type"/>
                                    <label>没什么特别</label>
                                </span>
                            </div>
                        </fieldset>
                        <fieldset>
                            <legend class="topic__type-title">12. 你觉得自己做的志愿活动有意义吗？</legend>
                            <div class="topic__type-dry">
                                <span class="topic__type-items">
                                    <input type="radio" name="12" value="有" class="radio__type"/>
                                    <label>有</label>
                                </span>
                                <span class="topic__type-items">
                                    <input type="radio" name="12" value="没有" class="radio__type"/>
                                    <label>没有</label>
                                </span>
                            </div>
                        </fieldset>
                        <fieldset>
                            <legend class="topic__type-title">13. 你做的志愿活动有收获什么呢？</legend>
                            <div class="topic__type-dry">
                                <span class="topic__type-items">
                                    <input type="checkbox" name="13" value="交了志同道合的朋友" class="checkbox__type"/>
                                    <label>交了志同道合的朋友</label>
                                </span>
                                <span class="topic__type-items">
                                    <input type="checkbox" name="13" value="学习到了新技能" class="checkbox__type"/>
                                    <label>学习到了新技能</label>
                                </span>
                                <span class="topic__type-items">
                                    <input type="checkbox" name="13" value="充实业余时间，丰富生活体现" class="checkbox__type"/>
                                    <label>充实业余时间，丰富生活体现</label>
                                </span>
                                <span class="topic__type-items">
                                    <input type="checkbox" name="13" value="提升个人的精神境界" class="checkbox__type"/>
                                    <label>提升个人的精神境界）</label>
                                </span>
                                <span class="topic__type-items">
                                    <input type="checkbox" name="13" value="改善自己的社交技巧" class="checkbox__type"/>
                                    <label>改善自己的社交技巧</label>
                                </span>
                                <span class="topic__type-items">
                                    <input type="checkbox" name="13" value="得到相关的工作经验" class="checkbox__type"/>
                                    <label>得到相关的工作经验</label>
                                </span>
                                <span class="topic__type-items">
                                    <input type="checkbox" name="13" value="好像没有哦" class="checkbox__type"/>
                                    <label>好像没有哦</label>
                                </span>
                            </div>
                        </fieldset>
                        <fieldset>
                            <legend class="topic__type-title">14. 你是否觉得有一些志愿活动是可有可无的？</legend>
                            <div class="topic__type-dry">
                                <span class="topic__type-items">
                                    <input type="radio" name="14" value="是" class="radio__type"/>
                                    <label>是</label>
                                </span>
                                <span class="topic__type-items">
                                    <input type="radio" name="14" value="否" class="radio__type"/>
                                    <label>否</label>
                                </span>
                            </div>
                        </fieldset>
                        <fieldset>
                            <legend class="topic__type-title">15. 你觉得应该积极地去做志愿者吗？</legend>
                            <div class="topic__type-dry">
                                <span class="topic__type-items">
                                    <input type="radio" name="15" value="应该" class="radio__type"/>
                                    <label>应该</label>
                                </span>
                                <span class="topic__type-items">
                                    <input type="radio" name="15" value="不应该" class="radio__type"/>
                                    <label>不应该</label>
                                </span>
                            </div>
                        </fieldset>
                        <fieldset>
                            <legend class="topic__type-title">16. 你是否对一些志愿活动失望过？</legend>
                            <div class="topic__type-dry">
                                <span class="topic__type-items">
                                    <input type="radio" name="16" value="是" class="radio__type"/>
                                    <label>是</label>
                                </span>
                                <span class="topic__type-items">
                                    <input type="radio" name="16" value="否" class="radio__type"/>
                                    <label>否</label>
                                </span>
                            </div>
                        </fieldset>
                        <fieldset>
                            <legend class="topic__type-title">17. 您所在的学校？</legend>
                            <div class="topic__type-dry">
                                <select name="school" class="form-control" style="width:200px">
                                    <option value="华南师范大学">华南师范大学</option>
                                    <option value="华南理工大学">华南理工大学</option>
                                    <option value="暨南大学">暨南大学</option>
                                    <option value="华南农业大学">华南农业大学</option>
                                    <option value="其他">其他</option>
                                </select>
                            </div>
                        </fieldset>
                        <fieldset>
                            <legend class="topic__type-title">18. 您的年龄范围？</legend>
                            <div class="topic__type-dry">
                                <input type="number" name="leftage" value=18 onblur="if(value<18){alert('大哥，年龄要超过18岁啦！');value=18}" />
                                <span> - </span>
                                <input type="number" name="rightage" value=80 onblur="if(value>80){alert('大哥，年龄最多只能填80呀！');value=80}" />
                            </div>
                        </fieldset>
                    </div>
                </div>
            </div>
            <!-- 底下 -->
        </div>
        <div class="bottom">
            <input type="submit" value="提交" class='bottom_btn gobackBtn'/>
            <a class='bottom_btn' href="#">复制此问卷</a>
        </div>
    </form>

</body>
</html>
