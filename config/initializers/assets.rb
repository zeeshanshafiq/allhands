Rails.application.config.assets.precompile += %w( bootstrap.min.js )
Rails.application.config.assets.precompile += %w( simplex.css )
Rails.application.config.assets.precompile += %w( simplex.js )
Rails.application.config.assets.precompile += %w( markitup/sets/markdown/h1.png )
Rails.application.config.assets.precompile += %w(*.svg *.eot *.woff *.ttf *.gif *.png *.ico)
Rails.application.config.assets.precompile << /\A(?!active_admin).*\.(js|css)\z/
