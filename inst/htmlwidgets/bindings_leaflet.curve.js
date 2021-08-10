LeafletWidget.methods.bezierCurve = function(options) {
  console.log(options);

var latlngs = [];

var latlng1 = [options.lat1, options.lng1],
	latlng2 = [options.lat2, options.lng2];

var offsetX = latlng2[1] - latlng1[1],
	offsetY = latlng2[0] - latlng1[0];

var r = Math.sqrt( Math.pow(offsetX, 2) + Math.pow(offsetY, 2) ),
	theta = Math.atan2(offsetY, offsetX);

var thetaOffset = (3.14/10);

var r2 = (r/2)/(Math.cos(thetaOffset)),
	theta2 = theta + thetaOffset;

var midpointX = (r2 * Math.cos(theta2)) + latlng1[1],
	midpointY = (r2 * Math.sin(theta2)) + latlng1[0];

var midpointLatLng = [midpointY, midpointX];

latlngs.push(latlng1, midpointLatLng, latlng2);

var pathOptions = {
	color: options.color,
	weight: options.weight
};

var curvedPath = L.curve(
	[
		'M', latlng1,
		'Q', midpointLatLng,
			 latlng2
	], pathOptions).addTo(this);

};
