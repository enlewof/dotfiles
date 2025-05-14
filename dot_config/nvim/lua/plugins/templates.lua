return {
	"motosir/skel-nvim",
	config = function()
		require("skel-nvim").setup({
			-- file pattern -> template mappings
			mappings = {
				["s3.tf"] = "s3.tf.skel",
			},
		})
	end,
}
