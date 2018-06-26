<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="${pageBean.pageCount>0 }">
	<ul class="pagination">
		<li><a href="javascript:go_page(1);">首页</a></li>
		<li class="prev <c:if test="${pageBean.currentPage==1}"> disabled</c:if>">
			<c:if test="${pageBean.currentPage-1>0 }">
				<a href="javascript:go_page(${pageBean.currentPage-1 });"> &lt;&lt;&nbsp;&nbsp;上一页 </a>
			</c:if> 
			<c:if test="${pageBean.currentPage-1==0 }">
				<a href="javascript:void(0);"> &lt;&lt;&nbsp;&nbsp;上一页 </a>
			</c:if>
		</li>

		<c:forEach begin="${pageBean.startPage }" end="${pageBean.endPage }" varStatus="v">
			<li
				<c:if test="${v.index==pageBean.currentPage }" var="next current">class="active"</c:if>
				<c:if test="${!current}">class="prev"</c:if>><a href="javascript:go_page(${v.index });">${v.index }</a>
			</li>
		</c:forEach>

		<li class="next <c:if test="${pageBean.currentPage==pageBean.pageCount}"> disabled</c:if>">
			<c:if test="${pageBean.currentPage+1<=pageBean.pageCount}">
				<a href="javascript:go_page(${pageBean.currentPage+1 });"> 下一页&nbsp;&nbsp;&gt;&gt; </a>
			</c:if> 
			<c:if test="${pageBean.currentPage==pageBean.pageCount}">
				<a href="javascript:void(0);"> 下一页&nbsp;&nbsp;&gt;&gt; </a>
			</c:if>
		</li>
		<li><a href="javascript:go_page(${pageBean.pageCount });">尾页</a></li>
		
		<li>&nbsp;&nbsp;第${pageBean.currentPage}页/共${pageBean.pageCount }页</li>
		<li>&nbsp;&nbsp;到第<input type="text" value="${pageBean.currentPage }"
			data-options="min:1,max:${pageBean.pageCount }" 
			id="pagenum" style="width: 35px;" maxlength="4" />页&nbsp;&nbsp;
			<input class="btn btn-xs btn-info" type="button" onclick="go_page($('#pagenum').val());" value="确定" />
		</li>
	</ul>
</c:if>