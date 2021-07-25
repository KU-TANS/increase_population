// 増やしたい人口を「都市名:人口」の形で表記する

// 1ループで大きくする人口　数が多いほど早く　小さいほど正確性が増します
local tolerance = 300

function work(player, pos) {
	local city = city_x(pos.x, pos.y)
	local city_name_split = split(city.get_name(),":")
	if(city_name_split.len() != 2){
		return
	}
	local target = city_name_split[1].tointeger()
	local low_limit = target - tolerance
	local citizens = city.get_citizens()[0]
	local num = tolerance.tostring()

	while(citizens < target){
		if(citizens > low_limit){
			num = (target - citizens).tostring()
		}
		command_x(tool_change_city_size).work(player, pos, num)
		local before_citizens = citizens
		do{
			sleep()
			citizens = city.get_citizens()[0]
		}
		while(before_citizens == citizens)
	}
}
