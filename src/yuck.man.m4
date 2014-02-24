./* auto generated by yuck -*- nroff -*-
changequote`'changequote([,])dnl
ifdef([YUCK_VERSION], [], [dnl else (!YUCK_VERSION)
ifdef([YUCK_SCMVER_VERSION], [dnl then
define([YUCK_VERSION], [YUCK_SCMVER_VERSION])[]dnl
], [dnl else (!YUCK_SCMVER_VERSION)
define([YUCK_VERSION], [unknown])dnl
])dnl
])dnl
.TH YUCK_STR_UMB "1" "YUCK_MAN_DATE" "YUCK_STR_UMB YUCK_VERSION" "User Commands"
.SH SYNOPSIS
.B YUCK_STR_UMB
[[\fIOPTION\fR]]...
ifelse(yuck_cmds(), [], [], [\fICOMMAND\fR])
patsubst(dquote(defn([YUCK_UMB_POSARG])), [\w+], [\\fI\&\\fR])
.SH DESCRIPTION
yuck_umb_desc()
ifelse(yuck_cmds(), [], [], [dnl

.PP
\fICOMMAND\fR may be one of:
foreachq([C], yuck_cmds(), [dnl
.TP
.B yuck_cmd_string(C)
.
yuck_cmd_desc(C)
])dnl
])dnl

.PP
Recognized \fIOPTION\fRs:
foreachq([I], yuck_idents(), [dnl
.TP
.B yuck_option_help_lhs(defn([I]), [])
yuck_option_desc(defn([I]), [])
])dnl

ifelse(yuck_cmds(), [], [], [dnl
.SH COMMANDS
])dnl
foreachq([C], yuck_cmds(), [
.P
.B YUCK_STR_UMB yuck_cmd_string(C)
[[\fIOPTION\fR]]...
patsubst(dquote(yuck_cmd_posarg(C)), [\w+], [\\fI\&\\fR])
.br
yuck_cmd_desc(C)
.P
\fIOPTION\fRs specific to the \fB[]yuck_cmd_string(C)\fR command:
foreachq([I], yuck_idents(C), [dnl
.TP
.B yuck_option_help_lhs(defn([I]), defn([C]))
yuck_option_desc(defn([I]), defn([C]))
])dnl
])dnl

./* yuck.m4man ends here
changequote`'dnl