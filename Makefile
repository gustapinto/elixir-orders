new/api-project:
	mix phx.new \
		--no-assets \
		--no-dashboard \
		--no-gettext \
		--no-html \
		--no-mailer \
		--database=sqlite3 \
		--adapter=bandit \
		$(name)
