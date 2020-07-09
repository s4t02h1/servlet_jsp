<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
<head>

<!-- Type & CharSet -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- キャッシュコントロール -->
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="expires" content="0" />

<!-- タイトル -->
<title>システム(仮)</title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="../common/system_files/bootstrap.min.css" />

<!-- Optional theme -->
<link rel="stylesheet" href="../common/system_files/bootstrap-theme.min.css" />

<!-- els CSS -->
<link rel="stylesheet" href="../common/system_files/els.css" />
<link rel="stylesheet" href="../common/system_files/bootstrap-datetimepicker.min.css" />

<!-- Latest compiled and minified JavaScript -->
<script src="../common/system_files/jquery-1.11.3.min.js"></script>
<script src="../common/system_files/bootstrap.min.js"></script>
<script src="../common/system_files/bootbox.js"></script>
<script src="../common/system_files/moment-with-locales.js"></script>
<script src="../common/system_files/bootstrap-datetimepicker.min.js"></script>
<script src="../common/system_files/jquery-ui.min.js"></script>
<script src="../common/system_files/spin.min.js"></script>
<script src="../common/system_files/ckeditor.js"></script>
</head>
<body>
	<div id="wrap">
		<div class="container">
			<div id="header" style="border-bottom: 1px solid #eee;" class="col-xs-12 col-sm-12 col-md-12">
				<div id="logo">
					<h1>システム(仮)</h1>
				</div>
				<div class="dropdown col-sm-2" style="position: absolute; bottom: 10px; right: 0; text-align: right; vertical-align: bottom;">
					<a href="#" data-toggle="dropdown" role="button" aria-expanded="false">てすと太郎<span class="caret"></span></a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="./customerMaster.jsp">マスターメンテナンス</a></li>
						<li><a href="./システム.html">ログアウト</a></li>
					</ul>
				</div>
			</div>
			<div id="content" style="margin-left: auto; margin-top: 10px;" class="col-sm-12">
				<ul class="nav nav-tabs">
					<li><a data-toggle="tab" id="XXX">XX入力</a></li>
					<li class="active"><a data-toggle="tab" id="customerMaster">顧客マスタ</a></li>
					<li><a data-toggle="tab" id="Master2">XXマスタ</a></li>
					<li><a data-toggle="tab" id="Master3">XXマスタ</a></li>
				</ul>
					<div id="content" class="col-xs-4 col-sm-4 col-md-4" style="margin-left: auto; margin-top:10px;">
										<div class="col-xs-12 col-sm-12 col-md-12"
						style="margin-top: 10px; position: relative;"></div>
						<form name="sendSalaryMailActionForm" id="sendmailListForm" method="post" action="/ssis/sendSalaryMail/">
							<input type="hidden" name="page" value="1" id="page">
							<div class="form-group">
							<table class="table table-bordered">
								<tr>
									<td class="success col-xs-5 col-sm-5 col-md-5" style="line-height: 30px;">会員</td>
									<td class="col-xs-7 col-sm-7 col-md-7"><select class="form-control" id="InputSelect">
											<option></option>
											<option>会員</option>
											<option>非会員</option>
									</select></td>
								</tr>
								<tr>
									<td class="success col-xs-2 col-sm-2 col-md-2" style="line-height: 30px;">住所（市町村）</td>
									<td class="col-xs-3 col-sm-3 col-md-3"><select class="form-control" id="InputSelect">
											<option selected>能美市</option>
											<option>小松市</option>
											<option>能美市・小松市以外の県内</option>
											<option>その他</option>
									</select></td>
								</tr>
								<tr>
									<td class="success col-xs-2 col-sm-2 col-md-2" style="line-height: 30px;">顧客番号</td>
									<td class="col-xs-3 col-sm-3 col-md-3"><input type="text" style="width: 100%;" class="form-control" /></td>
								</tr>
								<tr>
									<td class="success col-xs-2 col-sm-2 col-md-2" style="line-height: 30px;">顧客名</td>
									<td class="col-xs-3 col-sm-3 col-md-3"><input type="text" style="width: 100%;" class="form-control" /></td>
								</tr>
								<tr>
									<td class="success col-xs-2 col-sm-2 col-md-2"
										style="line-height: 30px;">条件１</td>
									<td class="col-xs-3 col-sm-3 col-md-3">
										<div class="form-group">
											<p class="control-label"></p>
											<div class="radio-inline">
												<input type="radio"/>含む</div>
											<div class="radio-inline">
												<input type="radio" checked/>含まない</div>
										</div>
									</td>
								</tr>
							</table>
							</div>
						</form>
					</div>
					<div class="col-xs-8 col-sm-8 col-md-8" style="float: left;">
						<table class="table">
							<tr>
								<td style="line-height: 33px; border: 0;"><br></td>
							</tr>
							<tr>
								<td style="line-height: 33px; border: 0;"><br></td>
							</tr>
							<tr>
								<td style="line-height: 33px; border: 0;"><br></td>
							</tr>
							<tr>
								<td style="line-height: 33px; border: 0;"><br></td>
							</tr>
							<tr>
								<td style="line-height: 33px; border: 0;"><br></td>
							</tr>
							<tr>
								<td style="line-height: 30px; border: 0;"><button class="btn btn-default">検索</button>
									<button class="btn btn-default"style="margin-left: 10px;" >検索条件クリア</button>
									<button class="btn btn-default" style="margin-left: 10px;" data-toggle="modal" data-target="#modalMailTextAll">登録</button>
									<button class="btn btn-default" style="margin-left: 10px;" data-toggle="modal" data-target="#modalMailText">削除</button></td>
							</tr>
						</table>
					</div>

				<div style="clear: both;">
					<div class="col-xs-6 col-sm-6 col-md-6 col-xs-offset-3 col-sm-offset-3 col-md-offset-3"style="margin-top:20px;">
						<div class="container-fluid">
							<div class="row">
								<div class="col-xs-1 col-sm-1 col-md-1">
									<a class="first_page lead" style="margin-bottom: 0; display: none;">&lt;&lt;</a>
								</div>
								<div class="col-xs-1 col-sm-1 col-md-1">
									<a class="prev_page lead" style="margin-bottom: 0; display: none;">&lt;</a>
								</div>
								<div class="col-xs-8 col-sm-8 col-md-8" style="text-align: center;">
									<span class="page lead">1 / 1</span>
								</div>
								<div class="col-xs-1 col-sm-1 col-md-1">
									<a class="next_page lead" style="margin-bottom: 0; display: none;">&gt;</a>
								</div>
								<div class="col-xs-1 col-sm-1 col-md-1">
									<a class="last_page lead" style="margin-bottom: 0; display: none;">&gt;&gt;</a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xs-12 col-sm-12 col-md-12">
						<table class="table table-hover table-bordered" style="text-align: left;">
							<thead>
								<tr class="success">
									<th class="col-xs-1 col-sm-1 col-md-1"></th>
									<th class="col-xs-2 col-sm-2 col-md-2">顧客番号</th>
									<th class="col-xs-3 col-sm-3 col-md-3">顧客名</th>
									<th class="col-xs-2 col-sm-2 col-md-2">会員/非会員</th>
									<th class="col-xs-2 col-sm-2 col-md-2">住所（市町村）</th>
									<th class="col-xs-1 col-sm-1 col-md-1">条件１</th>
									<th class="col-xs-1 col-sm-1 col-md-1"></th>
								</tr>
							</thead>
							<tbody>

								<tr>
									<td class="col-xs-1 col-sm-1 col-md-1"><input type="checkbox" value="1"></td>
									<td class="col-xs-2 col-sm-2 col-md-2">000001</td>
									<td class="col-xs-3 col-sm-3 col-md-3">てすと太郎</td>
									<td class="col-xs-2 col-sm-2 col-md-2">会員</td>
									<td class="col-xs-2 col-sm-2 col-md-2">小松市</td>

									<td class="col-xs-1 col-sm-1 col-md-1">△△</td>
									<td class="col-xs-1 col-sm-1 col-md-1" style="text-align:center;"><button class="btn btn-xs btn-default" id="updateButton" data-toggle="modal" data-target="#modalChangeWorkTime">修正</button></td>
								</tr>

								<tr>
									<td class="col-xs-1 col-sm-1 col-md-1"><input type="checkbox" value="1"></td>
									<td class="col-xs-2 col-sm-2 col-md-2">000002</td>
									<td class="col-xs-3 col-sm-3 col-md-3">てすと次郎</td>
									<td class="col-xs-2 col-sm-2 col-md-2">会員</td>
									<td class="col-xs-2 col-sm-2 col-md-2">小松市</td>

									<td class="col-xs-1 col-sm-1 col-md-1">△△</td>
									<td class="col-xs-1 col-sm-1 col-md-1" style="text-align:center;"><button class="btn btn-xs btn-default">修正</button></td>
								</tr>

								<tr>
									<td class="col-xs-1 col-sm-1 col-md-1"><input type="checkbox" value="1"></td>
									<td class="col-xs-2 col-sm-2 col-md-2">000003</td>
									<td class="col-xs-3 col-sm-3 col-md-3">てすと三郎</td>
									<td class="col-xs-2 col-sm-2 col-md-2">会員</td>
									<td class="col-xs-2 col-sm-2 col-md-2">能美市</td>

									<td class="col-xs-1 col-sm-1 col-md-1">△△</td>
									<td class="col-xs-1 col-sm-1 col-md-1" style="text-align:center;"><button class="btn btn-xs btn-default">修正</button></td>
								</tr>

								<tr>
									<td class="col-xs-1 col-sm-1 col-md-1"><input type="checkbox" value="1"></td>
									<td class="col-xs-2 col-sm-2 col-md-2">000004</td>
									<td class="col-xs-3 col-sm-3 col-md-3">てすと四郎</td>
									<td class="col-xs-2 col-sm-2 col-md-2">会員</td>
									<td class="col-xs-2 col-sm-2 col-md-2">能美市</td>

									<td class="col-xs-1 col-sm-1 col-md-1">△△</td>
									<td class="col-xs-1 col-sm-1 col-md-1" style="text-align:center;"><button class="btn btn-xs btn-default">修正</button></td>
								</tr>

								<tr>
									<td class="col-xs-1 col-sm-1 col-md-1"><input type="checkbox" value="1"></td>
									<td class="col-xs-2 col-sm-2 col-md-2">000005</td>
									<td class="col-xs-3 col-sm-3 col-md-3">てすと五郎</td>
									<td class="col-xs-2 col-sm-2 col-md-2">非会員</td>
									<td class="col-xs-2 col-sm-2 col-md-2">能美市</td>

									<td class="col-xs-1 col-sm-1 col-md-1">△△</td>
									<td class="col-xs-1 col-sm-1 col-md-1" style="text-align:center;"><button class="btn btn-xs btn-default">修正</button></td>
								</tr>

								<tr>
									<td class="col-xs-1 col-sm-1 col-md-1"><input type="checkbox" value="1"></td>
									<td class="col-xs-2 col-sm-2 col-md-2">000006</td>
									<td class="col-xs-3 col-sm-3 col-md-3">てすと六郎</td>
									<td class="col-xs-2 col-sm-2 col-md-2">会員</td>
									<td class="col-xs-2 col-sm-2 col-md-2">能美市</td>

									<td class="col-xs-1 col-sm-1 col-md-1">△△</td>
									<td class="col-xs-1 col-sm-1 col-md-1" style="text-align:center;"><button class="btn btn-xs btn-default">修正</button></td>
								</tr>

								<tr>
									<td class="col-xs-1 col-sm-1 col-md-1"><input type="checkbox" value="1"></td>
									<td class="col-xs-2 col-sm-2 col-md-2">000007</td>
									<td class="col-xs-3 col-sm-3 col-md-3">てすと七郎</td>
									<td class="col-xs-2 col-sm-2 col-md-2">非会員</td>
									<td class="col-xs-2 col-sm-2 col-md-2">能美市</td>

									<td class="col-xs-1 col-sm-1 col-md-1">△△</td>
									<td class="col-xs-1 col-sm-1 col-md-1" style="text-align:center;"><button class="btn btn-xs btn-default">修正</button></td>
								</tr>

								<tr>
									<td class="col-xs-1 col-sm-1 col-md-1"><input type="checkbox" value="1"></td>
									<td class="col-xs-2 col-sm-2 col-md-2">000008</td>
									<td class="col-xs-3 col-sm-3 col-md-3">てすと八郎</td>
									<td class="col-xs-2 col-sm-2 col-md-2">会員</td>
									<td class="col-xs-2 col-sm-2 col-md-2">能美市</td>

									<td class="col-xs-1 col-sm-1 col-md-1">△△</td>
									<td class="col-xs-1 col-sm-1 col-md-1" style="text-align:center;"><button class="btn btn-xs btn-default">修正</button></td>
								</tr>

								<tr>
									<td class="col-xs-1 col-sm-1 col-md-1"><input type="checkbox" value="1"></td>
									<td class="col-xs-2 col-sm-2 col-md-2">000009</td>
									<td class="col-xs-3 col-sm-3 col-md-3">つば九郎</td>
									<td class="col-xs-2 col-sm-2 col-md-2">非会員</td>
									<td class="col-xs-2 col-sm-2 col-md-2">能美市・小松市以外の県内</td>
									<td class="col-xs-1 col-sm-1 col-md-1">△△</td>
									<td class="col-xs-1 col-sm-1 col-md-1" style="text-align:center;"><button class="btn btn-xs btn-default">修正</button></td>
								</tr>

								<tr>
									<td class="col-xs-1 col-sm-1 col-md-1"><input type="checkbox" value="1"></td>
									<td class="col-xs-2 col-sm-2 col-md-2">000010</td>
									<td class="col-xs-3 col-sm-3 col-md-3">てすと十郎</td>
									<td class="col-xs-2 col-sm-2 col-md-2">会員</td>
									<td class="col-xs-2 col-sm-2 col-md-2">能美市</td>

									<td class="col-xs-1 col-sm-1 col-md-1">△△</td>
									<td class="col-xs-1 col-sm-1 col-md-1" style="text-align:center;"><button class="btn btn-xs btn-default">修正</button></td>
								</tr>

								<tr>
									<td class="col-xs-1 col-sm-1 col-md-1"><input type="checkbox" value="1"></td>
									<td class="col-xs-2 col-sm-2 col-md-2">000011</td>
									<td class="col-xs-3 col-sm-3 col-md-3">てすと十一郎</td>
									<td class="col-xs-2 col-sm-2 col-md-2">非会員</td>
									<td class="col-xs-2 col-sm-2 col-md-2">その他</td>

									<td class="col-xs-1 col-sm-1 col-md-1">△△</td>
									<td class="col-xs-1 col-sm-1 col-md-1" style="text-align:center;"><button class="btn btn-xs btn-default">修正</button></td>
								</tr>

								<tr>
									<td class="col-xs-1 col-sm-1 col-md-1"><input type="checkbox" value="1"></td>
									<td class="col-xs-2 col-sm-2 col-md-2">000012</td>
									<td class="col-xs-3 col-sm-3 col-md-3">てすと十二郎</td>
									<td class="col-xs-2 col-sm-2 col-md-2">非会員</td>
									<td class="col-xs-2 col-sm-2 col-md-2">その他</td>

									<td class="col-xs-1 col-sm-1 col-md-1">△△</td>
									<td class="col-xs-1 col-sm-1 col-md-1" style="text-align:center;"><button class="btn btn-xs btn-default">修正</button></td>
								</tr>

								<tr>
									<td class="col-xs-1 col-sm-1 col-md-1"><input type="checkbox" value="1"></td>
									<td class="col-xs-2 col-sm-2 col-md-2">000013</td>
									<td class="col-xs-3 col-sm-3 col-md-3">てすと十三郎</td>
									<td class="col-xs-2 col-sm-2 col-md-2">会員</td>
									<td class="col-xs-2 col-sm-2 col-md-2">能美市</td>

									<td class="col-xs-1 col-sm-1 col-md-1">△△</td>
									<td class="col-xs-1 col-sm-1 col-md-1" style="text-align:center;"><button class="btn btn-xs btn-default">修正</button></td>
								</tr>

								<tr>
									<td class="col-xs-1 col-sm-1 col-md-1"><input type="checkbox" value="1"></td>
									<td class="col-xs-2 col-sm-2 col-md-2">000014</td>
									<td class="col-xs-3 col-sm-3 col-md-3">てすと十四郎</td>
									<td class="col-xs-2 col-sm-2 col-md-2">会員</td>
									<td class="col-xs-2 col-sm-2 col-md-2">能美市</td>

									<td class="col-xs-1 col-sm-1 col-md-1">△△</td>
									<td class="col-xs-1 col-sm-1 col-md-1" style="text-align:center;"><button class="btn btn-xs btn-default">修正</button></td>
								</tr>

								<tr>
									<td class="col-xs-1 col-sm-1 col-md-1"><input type="checkbox" value="1"></td>
									<td class="col-xs-2 col-sm-2 col-md-2">000015</td>
									<td class="col-xs-3 col-sm-3 col-md-3">てすと十五郎</td>
									<td class="col-xs-2 col-sm-2 col-md-2">非会員</td>
									<td class="col-xs-2 col-sm-2 col-md-2">能美市</td>

									<td class="col-xs-1 col-sm-1 col-md-1">△△</td>
									<td class="col-xs-1 col-sm-1 col-md-1" style="text-align:center;"><button class="btn btn-xs btn-default">修正</button></td>
								</tr>

								<tr>
									<td class="col-xs-1 col-sm-1 col-md-1"><input type="checkbox" value="1"></td>
									<td class="col-xs-2 col-sm-2 col-md-2">000016</td>
									<td class="col-xs-3 col-sm-3 col-md-3">てすと十六郎</td>
									<td class="col-xs-2 col-sm-2 col-md-2">非会員</td>
									<td class="col-xs-2 col-sm-2 col-md-2">能美市</td>

									<td class="col-xs-1 col-sm-1 col-md-1">△△</td>
									<td class="col-xs-1 col-sm-1 col-md-1" style="text-align:center;"><button class="btn btn-xs btn-default">修正</button></td>
								</tr>

								<tr>
									<td class="col-xs-1 col-sm-1 col-md-1"><input type="checkbox" value="1"></td>
									<td class="col-xs-2 col-sm-2 col-md-2">000017</td>
									<td class="col-xs-3 col-sm-3 col-md-3">てすと十七郎</td>
									<td class="col-xs-2 col-sm-2 col-md-2">会員</td>
									<td class="col-xs-2 col-sm-2 col-md-2">能美市</td>

									<td class="col-xs-1 col-sm-1 col-md-1">△△</td>
									<td class="col-xs-1 col-sm-1 col-md-1" style="text-align:center;"><button class="btn btn-xs btn-default">修正</button></td>
								</tr>

								<tr>
									<td class="col-xs-1 col-sm-1 col-md-1"><input type="checkbox" value="1"></td>
									<td class="col-xs-2 col-sm-2 col-md-2">000018</td>
									<td class="col-xs-3 col-sm-3 col-md-3">てすと十八郎</td>
									<td class="col-xs-2 col-sm-2 col-md-2">会員</td>
									<td class="col-xs-2 col-sm-2 col-md-2">能美市・小松市以外の県内</td>

									<td class="col-xs-1 col-sm-1 col-md-1">△△</td>
									<td class="col-xs-1 col-sm-1 col-md-1" style="text-align:center;"><button class="btn btn-xs btn-default">修正</button></td>
								</tr>

								<tr>
									<td class="col-xs-1 col-sm-1 col-md-1"><input type="checkbox" value="1"></td>
									<td class="col-xs-2 col-sm-2 col-md-2">000019</td>
									<td class="col-xs-3 col-sm-3 col-md-3">てすと十九郎</td>
									<td class="col-xs-2 col-sm-2 col-md-2">会員</td>
									<td class="col-xs-2 col-sm-2 col-md-2">能美市</td>

									<td class="col-xs-1 col-sm-1 col-md-1">△△</td>
									<td class="col-xs-1 col-sm-1 col-md-1" style="text-align:center;"><button class="btn btn-xs btn-default">修正</button></td>
								</tr>

								<tr>
									<td class="col-xs-1 col-sm-1 col-md-1"><input type="checkbox" value="1"></td>
									<td class="col-xs-2 col-sm-2 col-md-2">000020</td>
									<td class="col-xs-3 col-sm-3 col-md-3">てすと二十郎</td>
									<td class="col-xs-2 col-sm-2 col-md-2">非会員</td>
									<td class="col-xs-2 col-sm-2 col-md-2">能美市・小松市以外の県内</td>

									<td class="col-xs-1 col-sm-1 col-md-1">△△</td>
									<td class="col-xs-1 col-sm-1 col-md-1" style="text-align:center;"><button class="btn btn-xs btn-default">修正</button></td>
								</tr>

								<tr>
									<td class="col-xs-1 col-sm-1 col-md-1"><input type="checkbox" value="1"></td>
									<td class="col-xs-2 col-sm-2 col-md-2">000021</td>
									<td class="col-xs-3 col-sm-3 col-md-3">てすと二十一郎</td>
									<td class="col-xs-2 col-sm-2 col-md-2">会員</td>
									<td class="col-xs-2 col-sm-2 col-md-2">能美市</td>

									<td class="col-xs-1 col-sm-1 col-md-1">△△</td>
									<td class="col-xs-1 col-sm-1 col-md-1" style="text-align:center;"><button class="btn btn-xs btn-default">修正</button></td>
								</tr>

								<tr>
									<td class="col-xs-1 col-sm-1 col-md-1"><input type="checkbox" value="1"></td>
									<td class="col-xs-2 col-sm-2 col-md-2">000022</td>
									<td class="col-xs-3 col-sm-3 col-md-3">てすと二十二郎</td>
									<td class="col-xs-2 col-sm-2 col-md-2">非会員</td>
									<td class="col-xs-2 col-sm-2 col-md-2">能美市</td>

									<td class="col-xs-1 col-sm-1 col-md-1">△△</td>
									<td class="col-xs-1 col-sm-1 col-md-1" style="text-align:center;"><button class="btn btn-xs btn-default">修正</button></td>
								</tr>

								<tr>
									<td class="col-xs-1 col-sm-1 col-md-1"><input type="checkbox" value="1"></td>
									<td class="col-xs-2 col-sm-2 col-md-2">000023</td>
									<td class="col-xs-3 col-sm-3 col-md-3">てすと二十三郎</td>
									<td class="col-xs-2 col-sm-2 col-md-2">会員</td>
									<td class="col-xs-2 col-sm-2 col-md-2">能美市</td>

									<td class="col-xs-1 col-sm-1 col-md-1">△△</td>
									<td class="col-xs-1 col-sm-1 col-md-1" style="text-align:center;"><button class="btn btn-xs btn-default">修正</button></td>
								</tr>

								<tr>
									<td class="col-xs-1 col-sm-1 col-md-1"><input type="checkbox" value="1"></td>
									<td class="col-xs-2 col-sm-2 col-md-2">000024</td>
									<td class="col-xs-3 col-sm-3 col-md-3">てすと二十四郎</td>
									<td class="col-xs-2 col-sm-2 col-md-2">非会員</td>
									<td class="col-xs-2 col-sm-2 col-md-2">能美市</td>

									<td class="col-xs-1 col-sm-1 col-md-1">△△</td>
									<td class="col-xs-1 col-sm-1 col-md-1" style="text-align:center;"><button class="btn btn-xs btn-default">修正</button></td>
								</tr>

								<tr>
									<td class="col-xs-1 col-sm-1 col-md-1"><input type="checkbox" value="1"></td>
									<td class="col-xs-2 col-sm-2 col-md-2">000025</td>
									<td class="col-xs-3 col-sm-3 col-md-3">てすと二十五郎</td>
									<td class="col-xs-2 col-sm-2 col-md-2">会員</td>
									<td class="col-xs-2 col-sm-2 col-md-2">その他</td>

									<td class="col-xs-1 col-sm-1 col-md-1">△△</td>
									<td class="col-xs-1 col-sm-1 col-md-1" style="text-align:center;"><button class="btn btn-xs btn-default">修正</button></td>
								</tr>

								<tr>
									<td class="col-xs-1 col-sm-1 col-md-1"><input type="checkbox" value="1"></td>
									<td class="col-xs-2 col-sm-2 col-md-2">000026</td>
									<td class="col-xs-3 col-sm-3 col-md-3">てすと二十六郎</td>
									<td class="col-xs-2 col-sm-2 col-md-2">非会員</td>
									<td class="col-xs-2 col-sm-2 col-md-2">能美市</td>

									<td class="col-xs-1 col-sm-1 col-md-1">△△</td>
									<td class="col-xs-1 col-sm-1 col-md-1" style="text-align:center;"><button class="btn btn-xs btn-default">修正</button></td>
								</tr>

								<tr>
									<td class="col-xs-1 col-sm-1 col-md-1"><input type="checkbox" value="1"></td>
									<td class="col-xs-2 col-sm-2 col-md-2">000027</td>
									<td class="col-xs-3 col-sm-3 col-md-3">てすと二十七郎</td>
									<td class="col-xs-2 col-sm-2 col-md-2">会員</td>
									<td class="col-xs-2 col-sm-2 col-md-2">その他</td>

									<td class="col-xs-1 col-sm-1 col-md-1">△△</td>
									<td class="col-xs-1 col-sm-1 col-md-1" style="text-align:center;"><button class="btn btn-xs btn-default">修正</button></td>
								</tr>

								<tr>
									<td class="col-xs-1 col-sm-1 col-md-1"><input type="checkbox" value="1"></td>
									<td class="col-xs-2 col-sm-2 col-md-2">000028</td>
									<td class="col-xs-3 col-sm-3 col-md-3">てすと二十八郎</td>
									<td class="col-xs-2 col-sm-2 col-md-2">会員</td>
									<td class="col-xs-2 col-sm-2 col-md-2">その他</td>

									<td class="col-xs-1 col-sm-1 col-md-1">△△</td>
									<td class="col-xs-1 col-sm-1 col-md-1" style="text-align:center;"><button class="btn btn-xs btn-default">修正</button></td>
								</tr>

								<tr>
									<td class="col-xs-1 col-sm-1 col-md-1"><input type="checkbox" value="1"></td>
									<td class="col-xs-2 col-sm-2 col-md-2">000029</td>
									<td class="col-xs-3 col-sm-3 col-md-3">てすと二十九郎</td>
									<td class="col-xs-2 col-sm-2 col-md-2">会員</td>
									<td class="col-xs-2 col-sm-2 col-md-2">能美市</td>

									<td class="col-xs-1 col-sm-1 col-md-1">△△</td>
									<td class="col-xs-1 col-sm-1 col-md-1" style="text-align:center;"><button class="btn btn-xs btn-default">修正</button></td>
								</tr>

								<tr>
									<td class="col-xs-1 col-sm-1 col-md-1"><input type="checkbox" value="1"></td>
									<td class="col-xs-2 col-sm-2 col-md-2">000030</td>
									<td class="col-xs-3 col-sm-3 col-md-3">てすと三十郎</td>
									<td class="col-xs-2 col-sm-2 col-md-2">非会員</td>
									<td class="col-xs-2 col-sm-2 col-md-2">能美市</td>

									<td class="col-xs-1 col-sm-1 col-md-1">△△</td>
									<td class="col-xs-1 col-sm-1 col-md-1" style="text-align:center;"><button class="btn btn-xs btn-default">修正</button></td>
								</tr>

								<tr>
									<td class="col-xs-1 col-sm-1 col-md-1"><input type="checkbox" value="1"></td>
									<td class="col-xs-2 col-sm-2 col-md-2">000031</td>
									<td class="col-xs-3 col-sm-3 col-md-3">てすと三十一郎</td>
									<td class="col-xs-2 col-sm-2 col-md-2">非会員</td>
									<td class="col-xs-2 col-sm-2 col-md-2">能美市</td>

									<td class="col-xs-1 col-sm-1 col-md-1">△△</td>
									<td class="col-xs-1 col-sm-1 col-md-1" style="text-align:center;"><button class="btn btn-xs btn-default">修正</button></td>
								</tr>

							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<div class="modal" id="modalMailText" tabindex="-1" role="dialog" aria-labelledby="staticModalLabel" aria-hidden="true" data-show="true" data-keyboard="false" data-backdrop="static">
			<div class="modal-dialog">
				<div class="modal-content" id="modal-content-sendmail">
					<div class="modal-header" id="modal-header-sendmail">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">&#215;</span><span class="sr-only">閉じる</span>
						</button>
						<h4 class="modal-title">顧客情報削除確認</h4>
					</div>
					<div class="modal-body" id="modal-body-sendmail">削除してよろしいですか？</div>
					<div class="modal-footer" style="position: relative;" id="modal-footer-sendmail">
						<button type="button" class="btn btn-primary" id="btnSendmailOk">削除</button>
						<button type="button" class="btn btn-default" id="btnSendmailCancel" data-dismiss="modal">キャンセル</button>
					</div>
				</div>
			</div>
		</div>
		<div class="modal" id="modalMailTextAll" tabindex="-1" role="dialog" aria-labelledby="staticModalLabel" aria-hidden="true" data-show="true" data-keyboard="false" data-backdrop="static">
			<div class="modal-dialog">
				<div class="modal-content" id="modal-content-sendmail">
					<div class="modal-header" id="modal-header-sendmail">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">&#215;</span><span class="sr-only">閉じる</span>
						</button>
						<h4 class="modal-title">顧客情報登録</h4>
					</div>
					<div class="modal-body" id="modal-body-sendmail" style="height: 500px; overflow: auto;">
						<span style="color: red;">※は入力必須項目</span><br>

						<form action="disp.jsp" method="get">
						<table class="table table-bordered">
							<tbody>
								<tr>
									<td class="success col-xs-3 col-sm-3 col-md-3" style="line-height: 30px;">顧客番号<span style="color: red;">※</span></td>
									<td><div class="col-xs-3 col-sm-3 col-md-3" style="padding-left: 0px;">
											<input type="text" name="cno" maxlength="7" class="form-control input-sm" />
										</div></td>
								</tr>
								<tr>
									<td class="success col-xs-3 col-sm-3 col-md-3" style="line-height: 30px;">氏名(全角)<span style="color: red;">※</span></td>
									<td><input type="text" class="form-control input-sm"></td>
								</tr>
								<tr>
									<td class="success col-xs-3 col-sm-3 col-md-3" style="line-height: 30px;">氏名(カナ)<span style="color: red;">※</span></td>
									<td><input type="text" class="form-control input-sm"></td>
								</tr>
								<tr>
									<td class="success col-xs-3 col-sm-3 col-md-3" style="line-height: 30px;">誕生日</td>
									<td>
										<div class='form-group' style="margin: 0;">
											<div class='input-group provideProcessDate col-xs-4 col-sm-4 col-md-4'>
												<input type="text" name="provideProcessDate" class="form-control input-sm" id="provideProcessDate" onpaste="return false" onkeydown="return false;" /> <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
											</div>
										</div>
									</td>
								</tr>
								<tr>
									<td class="success col-xs-3 col-sm-3 col-md-3" style="line-height: 30px;">性別</td>
									<td>
										<div class='form-group' style="margin: 0;">
											<input type="radio" name="gender1" style="margin: 0 5px;" checked />男 <input type="radio" name="gender1" style="margin: 0 5px;" />女
										</div>
									</td>
								</tr>
								<tr>
									<td class="success col-xs-3 col-sm-3 col-md-3" style="line-height: 30px;">郵便番号</td>
									<td><div class="col-xs-3 col-sm-3 col-md-3" style="padding-left: 0px;">
											<input type="text" name="" maxlength="7" class="form-control input-sm" />
										</div>(ハイフンなし)</td>
								</tr>
								<tr>
									<td class="success col-xs-3 col-sm-3 col-md-3" style="line-height: 30px;">住所</td>
									<td><input type="text" class="form-control input-sm"></td>
								</tr>
								<tr>
									<td class="success col-xs-3 col-sm-3 col-md-3" style="line-height: 30px;">電話番号</td>
									<td><div class="col-xs-4 col-sm-4 col-md-4" style="padding-left: 0px;">
											<input type="text" class="form-control input-sm">
										</div>(ハイフンなし)</td>
								</tr>
								<tr>
									<td class="success col-xs-3 col-sm-3 col-md-3" style="line-height: 30px;">初回利用年月日</td>
									<td class="col-xs-3 col-sm-3 col-md-3">
										<div class='form-group' style="margin: 0;">
											<div class='input-group provideProcessDate col-xs-4 col-sm-4 col-md-4'>
												<input type="text" name="provideProcessDate" class="form-control input-sm" id="provideProcessDate" onpaste="return false" onkeydown="return false;" /> <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
											</div>
										</div>
									</td>
								</tr>
								<tr>
									<td class="success col-xs-3 col-sm-3 col-md-3" style="line-height: 30px;">退会年月日</td>
									<td class="col-xs-3 col-sm-3 col-md-3">
										<div class='form-group' style="margin: 0;">
											<div class='input-group provideProcessDate col-xs-4 col-sm-4 col-md-4'>
												<input type="text" name="provideProcessDate" class="form-control input-sm" id="provideProcessDate" onpaste="return false" onkeydown="return false;" /> <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
											</div>
										</div>
									</td>
								</tr>
								<tr>
									<td class="success col-xs-3 col-sm-3 col-md-3" style="line-height: 30px;">住所（市町村）<span style="color: red;">※</span></td>
									<td class="col-xs-10 col-sm-10 col-md-10"><select class="form-control input-sm" id="InputSelect">
											<option selected>能美市</option>
											<option>小松市</option>
											<option>能美市・小松市以外の県内</option>
											<option>その他</option>
									</select></td>
								</tr>
								<tr>
									<td class="success col-xs-3 col-sm-3 col-md-3" style="line-height: 30px;">会員/非会員<span style="color: red;">※</span></td>
									<td class="col-xs-10 col-sm-10 col-md-10"><select class="form-control input-sm" id="InputSelect">
											<option>会員</option>
											<option>非会員</option>
									</select></td>
								</tr>
								<tr>
									<td class="success col-xs-3 col-sm-3 col-md-3" style="line-height: 30px;">メールアドレス</td>
									<td><input type="text" class="form-control input-sm"></td>
								</tr>
								<tr>
									<td class="success col-xs-3 col-sm-3 col-md-3" style="line-height: 30px;">アカウント<span style="color: red;">※</span></td>
									<td><input type="text" class="form-control input-sm"></td>
								</tr>
								<tr>
									<td class="success col-xs-3 col-sm-3 col-md-3" style="line-height: 30px;">パスワード<span style="color: red;">※</span></td>
									<td><input type="password" class="form-control input-sm"></td>
								</tr>
								<tr>
									<td class="success col-xs-3 col-sm-3 col-md-3" style="line-height: 30px;">(確認用)<span style="color: red;">※</span></td>
									<td><input type="password" class="form-control input-sm"></td>
								</tr>
								<tr>
									<td class="success col-xs-3 col-sm-3 col-md-3" style="line-height: 30px;">権限<span style="color: red;">※</span></td>
									<td class="col-xs-10 col-sm-10 col-md-10"><select class="form-control input-sm" id="InputSelect">
											<option>一般</option>
											<option>職員</option>
											<option>管理者</option>
									</select></td>
								</tr>
								<tr>
									<td class="success col-xs-3 col-sm-3 col-md-3" style="line-height: 30px;">備考</td>
									<td colspan="3"><input type="text" class="form-control input-sm"></td>
								</tr>
							</tbody>
						</table>

					</div>
					<div class="modal-footer" style="position: relative;" id="modal-footer-sendmail">
						<!--  <button type="button" class="btn btn-primary" id="btnSendmailOk">追加</button>-->
						<input type="submit"  class="btn btn-primary" value="追加">
						<button type="button" class="btn btn-default" id="btnSendmailCancel" data-dismiss="modal">キャンセル</button>
					</div>
					</form>

				</div>
			</div>
		</div>
		<div class="modal" id="modalChangeWorkTime" tabindex="-1" role="dialog" aria-labelledby="staticModalLabel" aria-hidden="true" data-show="true" data-keyboard="false" data-backdrop="static">
			<div class="modal-dialog">
				<div class="modal-content" id="modal-content-sendmail">
					<div class="modal-header" id="modal-header-sendmail">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">&#215;</span><span class="sr-only">閉じる</span>
						</button>
						<h4 class="modal-title">顧客情報更新</h4>
					</div>
					<div class="modal-body" id="modal-body-sendmail" style="height: 500px; overflow: auto;">
						<span style="color: red;">※は入力必須項目</span><br>
						<table class="table table-bordered">
							<tbody>
								<tr>
									<td class="success col-xs-3 col-sm-3 col-md-3" style="line-height: 30px;">顧客番号</td>
									<td>000001</td>
								</tr>
								<tr>
									<td class="success col-xs-3 col-sm-3 col-md-3" style="line-height: 30px;">氏名(全角)<span style="color: red;">※</span></td>
									<td><input type="text" class="form-control input-sm" value="てすと太郎"></td>
								</tr>
								<tr>
									<td class="success col-xs-3 col-sm-3 col-md-3" style="line-height: 30px;">氏名(カナ)<span style="color: red;">※</span></td>
									<td><input type="text" class="form-control input-sm" value="テストタロウ"></td>
								</tr>
								<tr>
									<td class="success col-xs-3 col-sm-3 col-md-3" style="line-height: 30px;">誕生日</td>
									<td>
										<div class='form-group' style="margin: 0;">
											<div class='input-group provideProcessDate col-xs-4 col-sm-4 col-md-4'>
												<input type="text" name="provideProcessDate" class="form-control input-sm" id="provideProcessDate" onpaste="return false" onkeydown="return false;" value="1999-09-09" /> <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
											</div>
										</div>
									</td>
								</tr>
								<tr>
									<td class="success col-xs-3 col-sm-3 col-md-3" style="line-height: 30px;">性別</td>
									<td>
										<div class='form-group' style="margin: 0;">
											<input type="radio" name="gender2" style="margin: 0 5px;" checked />男 <input type="radio" name="gender2" style="margin: 0 5px;" />女
										</div>
									</td>
								</tr>
								<tr>
									<td class="success col-xs-3 col-sm-3 col-md-3" style="line-height: 30px;">郵便番号</td>
									<td><div class="col-xs-3 col-sm-3 col-md-3" style="padding-left: 0px;">
											<input type="text" name="" maxlength="7" value="1234567" class="form-control input-sm" />
										</div>(ハイフンなし)</td>
								</tr>
								<tr>
									<td class="success col-xs-3 col-sm-3 col-md-3" style="line-height: 30px;">住所</td>
									<td><input type="text" class="form-control input-sm" value="石川県能美市テスト"></td>
								</tr>
								<tr>
									<td class="success col-xs-3 col-sm-3 col-md-3" style="line-height: 30px;">電話番号</td>
									<td><div class="col-xs-4 col-sm-4 col-md-4" style="padding-left: 0px;">
											<input type="text" class="form-control input-sm" value="0123456789">
										</div>(ハイフンなし)</td>
								</tr>
								<tr>
									<td class="success col-xs-3 col-sm-3 col-md-3" style="line-height: 30px;">初回利用年月日</td>
									<td class="col-xs-3 col-sm-3 col-md-3">
										<div class='form-group' style="margin: 0;">
											<div class='input-group provideProcessDate col-xs-4 col-sm-4 col-md-4'>
												<input type="text" name="provideProcessDate" class="form-control input-sm" id="provideProcessDate" onpaste="return false" onkeydown="return false;" value="2014-11-10" /> <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
											</div>
										</div>
									</td>
								</tr>
								<tr>
									<td class="success col-xs-3 col-sm-3 col-md-3" style="line-height: 30px;">退会年月日</td>
									<td class="col-xs-3 col-sm-3 col-md-3">
										<div class='form-group' style="margin: 0;">
											<div class='input-group provideProcessDate col-xs-4 col-sm-4 col-md-4'>
												<input type="text" name="provideProcessDate" class="form-control input-sm" id="provideProcessDate" onpaste="return false" onkeydown="return false;" /> <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
											</div>
										</div>
									</td>
								</tr>
								<tr>height
									<td class="success col-xs-3 col-sm-3 col-md-3" style="line-: 30px;">住所（市町村）<span style="color: red;">※</span></td>
									<td class="col-xs-10 col-sm-10 col-md-10"><select class="form-control input-sm" id="InputSelect">
											<option selected>能美市</option>
											<option>小松市</option>
											<option>能美市・小松市以外の県内</option>
											<option>その他</option>
									</select></td>
								</tr>
								<tr>
									<td class="success col-xs-3 col-sm-3 col-md-3" style="line-height: 30px;">会員/非会員<span style="color: red;">※</span></td>
									<td class="col-xs-10 col-sm-10 col-md-10"><select class="form-control input-sm" id="InputSelect">
											<option selected>会員</option>
											<option>非会員</option>
									</select></td>
								</tr>
								<tr>
									<td class="success col-xs-3 col-sm-3 col-md-3" style="line-height: 30px;">メールアドレス</td>
									<td><input type="text" class="form-control input-sm" value="test@test.co.jp"></td>
								</tr>
								<tr>
									<td class="success col-xs-3 col-sm-3 col-md-3" style="line-height: 30px;">アカウント<span style="color: red;">※</span></td>
									<td><input type="text" class="form-control input-sm" value="test"></td>
								</tr>
								<tr>
									<td class="success col-xs-3 col-sm-3 col-md-3" style="line-height: 30px;">パスワード<span style="color: red;">※</span></td>
									<td><input type="password" class="form-control input-sm" value="test"></td>
								</tr>
								<tr>
									<td class="success col-xs-3 col-sm-3 col-md-3" style="line-height: 30px;">(確認用)<span style="color: red;">※</span></td>
									<td><input type="password" class="form-control input-sm" value="test"></td>
								</tr>
								<tr>
									<td class="success col-xs-3 col-sm-3 col-md-3" style="line-height: 30px;">権限<span style="color: red;">※</span></td>
									<td class="col-xs-10 col-sm-10 col-md-10"><select class="form-control input-sm" id="InputSelect">
											<option>一般</option>
											<option selected>職員</option>
											<option>管理者</option>
									</select></td>
								</tr>
								<tr>
									<td class="success col-xs-3 col-sm-3 col-md-3" style="line-height: 30px;">備考</td>
									<td colspan="3"><input type="text" class="form-control input-sm"></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="modal-footer" style="position: relative;" id="modal-footer-sendmail">
						<button type="button" class="btn btn-primary" id="btnSendmailOk">更新</button>
						<button type="button" class="btn btn-default" id="btnSendmailCancel" data-dismiss="modal">キャンセル</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$('.provideProcessDate').datetimepicker({
			format : 'YYYY-MM-DD',
			locale : 'ja'
		});
		$("#XXX").on("click", function() {
			location.href = "#";
		});
		$("#customerMaster").on("click", function() {
			location.href = "./customerMaster.jsp";
		});
		$("#Master2").on("click", function() {
			location.href = "#";
		});
		$("#Master3").on("click", function() {
			location.href = "#";
		});
	</script>
	<div class="container">
		<div id="" style="border-top: 1px solid #eee; padding-top: 5px; text-align: center;" class="col-sm-12">Copyright © 2015 Eeb Corporation. All Rights Reserved.</div>
	</div>
</body>
</html>
