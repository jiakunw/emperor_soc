// i2c_const.sv
package i2c_pkg;
    typedef enum {
        NO_OP_CMD,
        START_CMD,
        WR_CMD,
        RD_CMD,
        STOP_CMD,
        RESTART_CMD
    } i2c_cmd_t;

    typedef enum {
        IDLE,
        HOLD,
        START1,
        START2,
        DATA1,
        DATA2,
        DATA3,
        DATA4,
        DATA_END,
        RESTART,
        STOP1,
        STOP2
    } i2c_state_t;
endpackage