#pragma once

#include <godot_cpp/classes/node.hpp>

namespace godot 
{
    class HealthComponent : public Node {

    GDCLASS(HealthComponent, Node);

    protected:
        static void _bind_methods();

    public:
        HealthComponent();
        ~HealthComponent();

        void _process(double p_delta) override;

        void set_health(float p_health); 
        float get_health() const;
        float add_health(float p_health);

        bool is_alive(bool p_emit_signal);

        void set_max_health(float p_max_health);
        float get_max_health() const;

        void change_health(float p_new_max, float p_new_current);

        void set_regeneration(float p_amount, float p_interval);
        
        void set_regen_amount(float p_amount);
        float get_regen_amount() const;

        void set_regen_interval(float p_interval);
        float get_regen_interval() const;

        bool take_damage(float p_base_damage);

    private:
        float max_health;
        float current_health;

        float regen_amount;
        float regen_interval;
        double regen_timer;
    };
} // namespace godot
