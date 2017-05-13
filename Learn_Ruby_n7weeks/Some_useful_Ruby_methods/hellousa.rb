def send_messages(*messages)
  messages.each { |m| p m }
end

send_messages <<END_HEREDOC
This is a
  multiline,
as is String!
END_HEREDOC
# >> "This is a\n  multiline,\nas is String!\n"

send_messages <<END_HEREDOC.strip
This is a
  multiline,
as is String!
END_HEREDOC
# >> "This is a\n  multiline,\nas is String!"

send_messages <<END_SQL.gsub(/\s+/, " ").strip
SELECT * FROM     users
         ORDER BY users.id DESC
END_SQL
# >> "SELECT * FROM users ORDER BY users.id DESC"

send_messages(<<END_MESSAGE_ONE, <<END_MESSAGE_TWO)
This is message one.

...
END_MESSAGE_ONE
Another message.

....
END_MESSAGE_TWO
# >> "This is message one.:\n\n...\n"
# >> "Another message.\n\n...\n"

send_messages <<DOUBLE_QUOTED
Tricks:
\tindented
\t#{100 + 23}
DOUBLE_QUOTED
# >> "Tricks:\n\tindented\n\t123\n"

send_messages <<'SINGLE_QUOTED'
Tricks:
\tindented
\t#{100 + 23}
SINGLE_QUOTED
# >> "Tricks:\n\tindented\n\t#{100 + 23}\n"

module HateMacro
  def self.generate_hate(target)
    module_eval <<-END_RUBY
      def self.hate_#{target}
        puts "#{target.to_s.capitalize} sucks!"
      end
    END_RUBY
  end
end

HateMacro.generate_hate :emacs  # Just for Jim Weirich!
HateMacro.hate_emacs
# >> Emacs sucks!