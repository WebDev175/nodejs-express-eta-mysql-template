import { Eta } from "eta";
import path from "path";

const eta = new Eta({
	views: path.join(process.cwd(), "frontend", "views"),
});

/**
 * Make Eta compatible with Express res.render().
 * https://eta.js.org/docs/4.x.x/resources/express
 */
export function buildEtaEngine() {
	return (filePath, opts, callback) => {
		(async () => {
			try {
				const fileContent = await eta.readFile(filePath);
				const inner = await eta.renderString(fileContent, opts);
				const layoutPath = path.join(eta.config.views, "layouts", "main-layout.eta");
				const layoutContent = await eta.readFile(layoutPath);
				const renderedTemplate = await eta.renderString(layoutContent, {
					...opts,
					body: inner,
				});

				callback(null, renderedTemplate);
			} catch (error) {
				callback(error);
			}
		})();
	};
}
