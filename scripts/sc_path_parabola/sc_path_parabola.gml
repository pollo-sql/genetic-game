/// @function path_parabola(_path_amount_total, _path_amount_remaining, _vertex, _value_to_update)
/// @param {integer} _path_amount_total
/// @param {integer} _path_amount_remaining
/// @param {real} _vertex
/// @param {real} _value_to_update

function path_parabola(_path_amount_total, _path_amount_remaining, _vertex, _value_to_update){
	var _t = _path_amount_remaining - (_path_amount_total)/2;
	var _a = _vertex / sqr(_path_amount_total/2);
	return _value_to_update - sqr(_t)*_a + sqr(_t-1)*_a
}