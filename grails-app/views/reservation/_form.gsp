<%@ page import="reservation.app.Reservation" %>

<div class="col-md-4">
	<div class="form-group">
		<label for="guestName" class="control-label">
			<g:message code="reservation.guestName.label" default="Guest Name" />
		</label>
		<g:textField  class="form-control" name="guestName" required="" value="${reservationInstance?.guestName}"/>
	</div>
	<div class="form-group">
		<legend>Reservation Dates</legend>
		<div class="list-group">
			<g:each in="${reservationDateList}" status="i" var="date">
				<a class="list-group-item hand-pointed date-list-item" data-target="#date-${i}">
					<button class="glyphicon glyphicon-remove pull-right" type="button"
							data-toggle="tooltip" data-placement="left" title="Cancel this booking date"></button>
					${formatDate(format:"dd MMM yyyy", date:date)}
				</a>
			</g:each>
		</div>
	</div>
</div>

<div class="col-md-8">
	<legend>Reserved Rooms for <span id="date-label" data-default="the whole duration">the whole duration</span></legend>
	<table class="table">
		<thead>
			<th>Room Number</th>
			<th>Type</th>
			<th>Rate</th>
			<th>Date</th>
		</thead>
		<tbody>
			<g:each in="${reservationDetailList}" var="detail">
				<tr>
					<td>${detail?.room}</td>
					<td>${detail?.room.type}</td>
					<td>${detail?.rate}</td>
					<td>${formatDate(format:"dd MMM yyyy", date:detail.date)}</td>
				</tr>
			</g:each>
		</tbody>
	</table>
</div>

%{--<div class="form-group">
	<label for="checkIn" class="control-label">
		<g:message code="reservation.checkIn.label" default="Check In" />
	</label>
	<g:datePicker class="form-control" name="checkIn" precision="day"  value="${reservationInstance?.checkIn}"  />

</div>

<div class="form-group">
	<label for="checkOut" class="control-label">
		<g:message code="reservation.checkOut.label" default="Check Out" />
	</label>
	<g:datePicker class="form-control" name="checkOut" precision="day"  value="${reservationInstance?.checkOut}"  />
</div>--}%


