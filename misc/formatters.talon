#provide both anchored and unachored commands via 'over'
say <user.text>$:
  result = user.formatted_text(text, "NOOP")
  insert(' ')
  insert(result)
say <user.text> over:
  result = user.formatted_text(text, "NOOP")
  insert(' ')
  insert(result)
speak <user.text>$:
  result = user.formatted_text(text, "NOOP")
  insert(result)
speak <user.text> over:
  result = user.formatted_text(text, "NOOP")
  insert(result)
phrase <user.text>$:
  result = user.formatted_text(text, "NOOP")
  insert(result)
  insert(' ')
phrase <user.text> over:
  result = user.formatted_text(text, "NOOP")
  insert(result)
  insert(' ')
<user.format_text>+$: user.insert_many(format_text_list)
<user.format_text>+ over: user.insert_many(format_text_list)
<user.formatters> that: user.formatters_reformat_selection(user.formatters)
word <user.word>: insert(user.word)
format help: user.formatters_help_toggle()
format recent: user.formatters_recent_toggle()
format repeat <number>: 
  result = user.formatters_recent_select(number)
  insert(result)
format copy <number>:
  result = user.formatters_recent_select(number)
  clip.set_text(result)
^nope that$: user.formatters_clear_last()
^nope that was <user.formatters>$:
  user.formatters_clear_last()
  insert(user.formatters_reformat_last(user.formatters))
