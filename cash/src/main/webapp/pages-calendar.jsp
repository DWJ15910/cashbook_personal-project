<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%><!-- jstl에서 substring호출 -->

<!DOCTYPE html>
<html dir="ltr" lang="en">
<head>
<meta charset="utf-8" />
<title>Matrix Admin Lite Free Versions Template by WrapPixel</title>
<link rel="icon" type="image/png" sizes="16x16"href="${pageContext.request.contextPath}/assets/images/favicon.png" />
<link href="${pageContext.request.contextPath}/assets/libs/fullcalendar/dist/fullcalendar.min.css"rel="stylesheet" />
<link href="${pageContext.request.contextPath}/assets/extra-libs/calendar/calendar.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/style.min.css" rel="stylesheet" />
</head>

<body>
		<div class="page-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="">
								<div class="row">
									<div class="col-lg-3 border-right pe-0">
										<div class="card-body border-bottom">
											<h4 class="card-title mt-2">Drag & Drop Event</h4>
										</div>
										<div class="card-body">
											<div class="row">
												<div class="col-md-12">
													<div id="calendar-events" class="">
														<div class="calendar-events mb-3" data-class="bg-info">
															<i class="fa fa-circle text-info me-2"></i>Event One
														</div>
														<div class="calendar-events mb-3" data-class="bg-success">
															<i class="fa fa-circle text-success me-2"></i> Event Two
														</div>
														<div class="calendar-events mb-3" data-class="bg-danger">
															<i class="fa fa-circle text-danger me-2"></i>Event Three
														</div>
														<div class="calendar-events mb-3" data-class="bg-warning">
															<i class="fa fa-circle text-warning me-2"></i>Event Four
														</div>
													</div>
													<!-- checkbox -->
													<div class="form-check">
														<input type="checkbox" class="form-check-input"
															id="drop-remove" /> <label
															class="cform-check-label" for="drop-remove">Remove
															after drop</label>
													</div>
													<a href="javascript:void(0)" data-toggle="modal"
														data-target="#add-new-event"
														class="
                                d-flex
                                align-items-center
                                justify-content-center
                                btn
                                mt-3
                                btn-info
                                d-block
                                waves-effect waves-light
                              ">
														<i class="mdi mdi-plus fs-4 me-1"></i> Add New Event
													</a>
												</div>
											</div>
										</div>
									</div>
									<div class="col-lg-9">
										<div class="card-body b-l calender-sidebar">
											<div id="calendar"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- BEGIN MODAL -->
				<div class="modal none-border" id="my-event">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<h4 class="modal-title">
									<strong>Add Event</strong>
								</h4>
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">&times;</button>
							</div>
							<div class="modal-body"></div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary waves-effect"
									data-dismiss="modal">Close</button>
								<button type="button"
									class="btn btn-success save-event waves-effect waves-light">
									Create event</button>
								<button type="button"
									class="btn btn-danger delete-event waves-effect waves-light"
									data-dismiss="modal">Delete</button>
							</div>
						</div>
					</div>
				</div>
				<!-- Modal Add Category -->
				<div class="modal fade none-border" id="add-new-event">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<h4 class="modal-title">
									<strong>Add</strong> a category
								</h4>
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">&times;</button>
							</div>
							<div class="modal-body">
								<form>
									<div class="row">
										<div class="col-md-6">
											<label class="control-label">Category Name</label> <input
												class="form-control form-white" placeholder="Enter name"
												type="text" name="category-name" />
										</div>
										<div class="col-md-6">
											<label class="control-label">Choose
												Category Color</label> <select
												class="form-select shadow-none form-white"
												data-placeholder="Choose a color..." name="category-color">
												<option value="success">Success</option>
												<option value="danger">Danger</option>
												<option value="info">Info</option>
												<option value="primary">Primary</option>
												<option value="warning">Warning</option>
												<option value="inverse">Inverse</option>
											</select>
										</div>
									</div>
								</form>
							</div>
							<div class="modal-footer">
								<button type="button"
									class="
                      btn btn-danger
                      waves-effect waves-light
                      save-category
                    "
									data-dismiss="modal">Save</button>
								<button type="button" class="btn btn-secondary waves-effect"
									data-dismiss="modal">Close</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="${pageContext.request.contextPath}/assets/libs/jquery/dist/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery.ui.touch-punch-improved.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery-ui.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
	<!-- slimscrollbar scrollbar JavaScript -->
	<script
		src="${pageContext.request.contextPath}/assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/extra-libs/sparkline/sparkline.js"></script>
	<!--Wave Effects -->
	<script src="${pageContext.request.contextPath}/js/waves.js"></script>
	<!--Menu sidebar -->
	<script src="${pageContext.request.contextPath}/js/sidebarmenu.js"></script>
	<!--Custom JavaScript -->
	<script src="${pageContext.request.contextPath}/js/custom.min.js"></script>
	<!-- this page js -->
	<script src="${pageContext.request.contextPath}/assets/libs/moment/min/moment.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/libs/fullcalendar/dist/fullcalendar.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/pages/calendar/cal-init.js"></script>
</body>
</html>
