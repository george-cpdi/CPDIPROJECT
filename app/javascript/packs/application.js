// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

require("bootstrap")
require("jquery")
require("easy-autocomplete")
require("bootstrap-datepicker")
require("moment/locale/ja")
require("tempusdominus-bootstrap-4")
require("flatpickr")
import flatpickr from "flatpickr";
import { Calendar } from '@fullcalendar/core';
import interactionPlugin from '@fullcalendar/interaction';
import dayGridPlugin from '@fullcalendar/daygrid';
import timeGridPlugin from '@fullcalendar/timegrid';
import listPlugin from '@fullcalendar/list';

import "../stylesheets/application";


Rails.start()
Turbolinks.start()
ActiveStorage.start()

require("packs/parts")
require("packs/vendors")
require("packs/roles")
require("packs/policies")
require("packs/part_orders")


document.addEventListener("turbolinks:load", () => {
    flatpickr("[class='form-control flatpickr']", {
   	 	enableTime: true,
    	dateFormat: "Y-m-d H:i",
	})

	var calendarEl = document.getElementById('calendar');

  var calendar = new Calendar(calendarEl, {
    plugins: [ interactionPlugin, dayGridPlugin, timeGridPlugin, listPlugin ],
    headerToolbar: {
      left: 'prev,next today',
      center: 'title',
      right: 'dayGridMonth,timeGridWeek,timeGridDay,listWeek'
    },
    events: '/dashboard/work_order/events.json'
  });

  calendar.render();

	

})