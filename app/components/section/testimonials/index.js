import Component from '@glimmer/component';
import { cache } from '@ascua/decorators';
import { arg } from '@ascua/decorators';

export default class extends Component {
	@arg count = 100;

	@cache get testimonials() {
		return [
			{
				name: 'Anup Jadhav',
				user: 'Director, Partner Delivery Success, C360 Cross-Cloud, Salesforce',
				text: `"It think it's going to change how we query databases."`,
				img: '/static/img/logos/salesforce1.svg',
			},
			{
				name: 'Jeff Delaney',
				user: 'Web Developer and Tech Influencer, Fireship',
				text: `"Now that it's at 1.0, there is a pretty good use case to using it in some serious projects."`,
				img: '/static/img/logos/fireship.svg',
			},
			{
				name: 'Rajani Rao FRSA MBCS',
				user: 'R&D Principal Technologist, Aveva',
				text: `"Throughout my years dealing with database challenges, SurrealDB seems to be a beacon of innovation. Addressing issues like multi-tenancy, blending the best of hybrid & distributed databases, and ensuring unmatched scalability & performance. Oh and btw it had ML integrated in the database - how cool is that! But the true standout? Live queries and change feeds. Such features are not just advancements, they're revolutions in how we handle data. Goes to show the evolution of databases are not over yet!!"`,
				img: '/static/img/logos/aveva.svg',
			},
			{
				name: 'Necmettin Karakaya',
				user: 'Lead Software Engineer, Figment',
				text: `"Exciting things are happening in the Tech industry. Bun just announced version 1.0 is prod ready. And now SurrealDB is launching stable version 1.0. This is the most significant shift in my decade-long developer experience. Excited to see what's next!"`,
				img: '/static/img/logos/figment.png',
			},
			{
				name: 'Travis Barney',
				user: 'Principal Engineer, Vivint',
				text: `"Very excited to put these capabilities into practice."`,
				img: '/static/img/logos/vivint.png',
			},
			{
				name: 'Julian Mills',
				user: 'Lead Developer, Yaacomm',
				text: `"Here at Yaacomm we are already using SurrealDB in a significant way for our backend infrastructure, however I believe SurrealDB can play an even bigger role in other areas as well. Being able to embed SurrealDB locally in Android and iOS apps could make it a perfect fit for local caching. Additionally, this would provide us with all the benefits of SurrealDB such as full-text searching and its graph based nature without relying on a network connection."`,
				img: '/static/img/logos/yaacomm.png',
			},
			{
				name: 'Sebastian Wessel',
				user: 'Senior Developer',
				text: `"It's incredible what SurrealDB provides and also what's coming up in the near future. Embedding, scaling, machine learning, live queries... SurrealDB as an event store or persisted broker or IoT platform - I've so many ideas right now for the next project. Awesome!"`,
			},
			{
				name: 'Reza Qorbani',
				user: 'Co-founder and CTO, Qualia',
				text: `"SurrealDB looks amazing. Cloud-native Database written in Rust using SQL for structured and unstructured data, graph querying, full-text indexing, and geospatial querying, while supporting row-level permissions."`,
				img: '/static/img/logos/qualia.png',
			},
		];
	}
}
