#pragma once

#include <godot_cpp/classes/ref_counted.hpp>

namespace godot {

class StatsCalculator : public RefCounted {
    GDCLASS(StatsCalculator, RefCounted);

private:
    float total_xp;
    int current_level;
    float level_progression;

protected:
    static void _bind_methods();

public:
    StatsCalculator();
    ~StatsCalculator();

    void init(float p_progression);
    
    void add_xp(float p_value);
    float get_xp() const;
    void add_level(int p_level);
    int get_level() const;
};

} // namespace godot
