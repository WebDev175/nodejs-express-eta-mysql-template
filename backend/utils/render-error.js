export function renderError(res, statusCode = 500, err, title, subTitle) {
	if (err) {
		console.error("renderError:", err.message);
	}
	res.status(statusCode).render("errors/error", {
		title: "Error",
		errorTitle: title,
		errorSubTitle: subTitle,
	});
}
