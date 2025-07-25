;;; australia-holidays.el --- Australian holidays for calendar -*- lexical-binding: t -*-

;; Copyright (C) 2025 JM Ibañez

;; Author: JM Ibañez <jm@jmibanez.com>
;; URL: https://github.com/jmibanez/australia-holidays.el
;; Version: 1.0.0
;; Package-Requires: ((emacs "24.1"))
;; Keywords: calendar

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; For a full copy of the GNU General Public License
;; see <http://www.gnu.org/licenses/>.

;;; Commentary:
;;
;; Replace holidays with holidays valid across all Australian states
;; and territories; e.g.:
;;
;; (setq calendar-holidays australia-holidays)
;;
;; Or append holidays:
;;
;; (setq calendar-holidays (append calendar-holidays australia-holidays))
;;
;; You can also use a more specific list tailored to your state; e.g.
;; for New South Wales use australia-holidays-for-nsw.
;;
;;; Code:

(eval-when-compile
  (require 'calendar)
  (require 'holidays))

;;;###autoload
(defcustom australia-holidays-january-26-label "Australia Day"
  "What to call the holiday celebrated on January 26."
  :type 'string
  :group 'calendar)

;;;###autoload
(defcustom australia-holidays-include-january-26 t
  "Whether to include January 26 in the list of holidays."
  :type 'boolean
  :group 'calendar)

;;;###autoload
(defvar australia-holidays
  '((holiday-fixed 1 1 "New Year")
    (if australia-holidays-include-january-26
      (holiday-fixed 1 26 australia-holidays-january-26-label))
    (holiday-easter-etc -2 "Good Friday")
    (holiday-easter-etc 1 "Easter Monday")
    (holiday-fixed 4 25 "ANZAC Day")
    (holiday-fixed 12 25 "Christmas Day"))
  "Australian holidays.
Only provides holidays that are valid in all states and territories.")
;;;###autoload
(defvar australia-holidays-for-act
  '(australia-holidays
    (holiday-float 3 1 2 "Canberra Day")
    (holiday-easter-etc -1 "Easter Saturday")
    (holiday-easter-etc 0 "Easter Sunday")
    (holiday-float 5 1 1 "Reconciliation Day" 26)
    (holiday-float 6 1 2 "King's Birthday")
    (holiday-float 10 1 1 "Labour Day")
    (holiday-fixed 12 26 "Boxing Day"))
  "Holidays in the Australian Capital Territory.")

;;;###autoload
(defvar australia-holidays-for-nsw
  '(australia-holidays
    (holiday-easter-etc -1 "Easter Saturday")
    (holiday-easter-etc 0 "Easter Sunday")
    (holiday-fixed 4 25 "ANZAC Day")
    (holiday-float 6 1 2 "King's Birthday")
    (holiday-float 10 1 1 "Labour Day")
    (holiday-fixed 12 26 "Boxing Day"))
  "Holidays in New South Wales.")

;;;###autoload
(defvar australia-holidays-for-nt
  '(australia-holidays
    (holiday-easter-etc -1 "Easter Saturday")
    (holiday-easter-etc 0 "Easter Sunday")
    (holiday-float 5 1 1 "May Day")
    (holiday-float 6 1 2 "King's Birthday")
    (holiday-float 8 1 1 "Picnic Day")
    (holiday-fixed 12 24 "Christmas Eve")
    (holiday-fixed 12 26 "Boxing Day")
    (holiday-fixed 12 31 "New Year's Eve"))
  "Holidays in the Northern Territory.")

;;;###autoload
(defvar australia-holidays-for-qld
  '(australia-holidays
    (holiday-easter-etc -1 "The Day After Good Friday")
    (holiday-easter-etc 0 "Easter Sunday")
    (holiday-float 5 1 1 "Labour Day")
    (holiday-float 8 3 1 "Royal Queensland Show" 9)
    (holiday-float 10 1 1 "King's Birthday")
    (holiday-fixed 12 24 "Christmas Eve")
    (holiday-fixed 12 26 "Boxing Day"))
  "Holidays in Queensland.")

;;;###autoload
(defvar australia-holidays-for-sa
  '(australia-holidays
    (holiday-float 3 1 2 "Adelaide Cup Day")
    (holiday-easter-etc -1 "Easter Saturday")
    (holiday-easter-etc 0 "Easter Sunday")
    (holiday-float 6 1 2 "King's Birthday")
    (holiday-float 10 1 1 "Labour Day")
    (holiday-fixed 12 24 "Christmas Eve")
    (holiday-fixed 12 26 "Proclamation Day")
    (holiday-fixed 12 31 "New Year's Eve"))
  "Holidays in South Australia.")

;;;###autoload
(defvar australia-holidays-for-tas
  '(australia-holidays
    (holiday-float 2 1 2 "Royal Hobart Regatta")
    (holiday-float 3 1 2 "Eight Hours Day")
    (holiday-easter-etc 2 "Easter Tuesday")
    (holiday-float 6 1 2 "King's Birthday")
    (holiday-float 11 1 1 "Recreation Day")
    (holiday-fixed 12 26 "Boxing Day"))
  "Holidays in Tasmania.")

;;;###autoload
(defvar australia-holidays-for-vic
  '(australia-holidays
    (holiday-float 3 1 2 "Labour Day")
    (holiday-easter-etc -1 "Saturday Before Easter Sunday")
    (holiday-easter-etc 0 "Easter Sunday")
    (holiday-float 6 1 2 "King's Birthday")
    (holiday-float 11 2 1 "Melbourne Cup")
    (holiday-fixed 12 26 "Boxing Day"))
  "Holidays in Victoria.")

;;;###autoload
(defvar australia-holidays-for-wa
  '(australia-holidays
    (holiday-float 3 1 1 "Labour Day")
    (holiday-easter-etc 0 "Easter Sunday")
    (holiday-float 6 1 1 "Western Australia Day")
    (holiday-fixed 12 26 "Boxing Day"))
  "Holidays in Western Australia.")

(provide 'australia-holidays)

;;; australia-holidays.el ends here
