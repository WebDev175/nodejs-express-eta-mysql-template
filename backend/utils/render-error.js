export function renderError(res, statusCode = 500, title, subTitle) {
	res.status(statusCode).render("errors/error", {
		title: "Error",
		errorTitle: title,
		errorSubTitle: subTitle,
	});
}
