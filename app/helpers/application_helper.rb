module ApplicationHelper
# return a title on a per-page basis
def title
	base_title = "Blue Door Cafe"
	if @title.nil?
		base_title
	else
		"#{base_title} | #{@title}"
	end
end
def custom_menu_branch_css(local_assigns)
    options = local_assigns.dup
    options.update(:sibling_count => options[:menu_branch].shown_siblings.length) unless options[:sibling_count]

    css = []
    css << 'active' if selected_page_or_descendant_page_selected?(local_assigns[:menu_branch])
    css
end
end
