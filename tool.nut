// 増やしたい人口を「都市名:人口」の形で表記する

// 1ループで大きくする人口　数が多いほど早く　小さいほど正確性が増します
local tolerance = 300

function work(player, pos) {
	local city = city_x(pos.x, pos.y)
	local target = split(city.get_name(),":")[1].tointeger()
	local low_limit = target - tolerance
	local citizens = city.get_citizens()[0]

	local num = tolerance.tostring()

	while(target > citizens){
		if(low_limit <= citizens){
			num = (target - citizens).tostring()
		}
		command_x(tool_change_city_size).work(player, pos, num)
		local before_citizens = citizens
		while(before_citizens == citizens){
			sleep()
			citizens = city_x(pos.x, pos.y).get_citizens()[0]
		}
	}
}
