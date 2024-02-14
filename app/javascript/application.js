// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "./controllers"

// This import has side effects
import { createPopper } from '@popperjs/core'
import "trix"
import "actiontext";
import "@rails/actiontext"
import 'bootstrap/dist/css/bootstrap.min.css'

// Include jQuery and UJS (Unobtrusive JavaScript) for Rails
//= require jquery
//= require jquery_ujs

// Include jQuery UI and SweetAlert
//= require jquery-ui
//= require sweetalert
