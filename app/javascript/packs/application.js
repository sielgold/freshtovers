import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import "../plugins/flatpickr"
import { initMapbox } from '../plugins/init_mapbox';

initMapbox();
// require 'algolia/v3/algoliasearch.min'


import { initStarRating } from '../plugins/init_star_rating';

initStarRating();

