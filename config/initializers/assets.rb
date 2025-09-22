# Allow Sprockets to pick up bundles emitted by jsbundling-rails/esbuild
Rails.application.config.assets.paths << Rails.root.join("app/assets/builds")

# (Belt-and-suspenders; not strictly required if the manifest links the tree)
Rails.application.config.assets.precompile += %w[application.js]
