kbd = Keyboard.new

# Pro Micro 'Port' => Pin Number
#    'D1' => 2
#    'D0' => 3
#    'D4' => 4
#    'C6' => 5
#    'D7' => 6
#    'E6' => 7
#    'B4' => 8
#    'B5' => 9
#    'F4' => 29
#    'F5' => 28
#    'F6' => 27
#    'F7' => 26
#    'B1' => 22
#    'B3' => 20
#    'B2' => 23
#    'B6' => 21

row0 = 2
row1 = 3
row2 = 4
row3 = 5
row4 = 6
col0 = 29
col1 = 28
col2 = 27
col3 = 26
col4 = 22
col5 = 20
col6 = 23
col7 = 7

# Init duplex matrix
kbd.init_matrix_pins(
[
    [ [row0,col0], [row0,col1], [row0,col2], [row0,col3], [row0,col4], [row0,col5], [row0,col6], [row0,col7], [col0,row0], [col1,row0], [col2,row0], [col3,row0], [col4,row0], [col5,row0], [col6,row0],],
    [ [row1,col0], [row1,col1], [row1,col2], [row1,col3], [row1,col4], [row1,col5], [row1,col6], [row1,col7], [col0,row1], [col1,row1], [col2,row1], [col3,row1], [col4,row1], [col5,row1], [col6,row1],],
    [ [row2,col0], [row2,col1], [row2,col2], [row2,col3], [row2,col4], [row2,col5], [row2,col6], [row2,col7], [col0,row2], [col1,row2], [col2,row2], [col3,row2], [col4,row2],         nil, [col6,row2],],
    [ [row3,col0], [row3,col1], [row3,col2], [row3,col3], [row3,col4], [row3,col5], [row3,col6], [row3,col7], [col0,row3], [col1,row3], [col2,row3], [col3,row3], [col4,row3],         nil, [col6,row3],],
    [ [row4,col0], [row4,col1], [row4,col2], [row4,col3],         nil,         nil,         nil,         nil,         nil, [col1,row4], [col2,row4], [col3,row4], [col4,row4],         nil, [col6,row4],],
  ]
)

# default layer should be added at first
kbd.add_layer :default, %i(
  KC_ESC  KC_1    KC_2    KC_3    KC_4    KC_5    KC_6    KC_7    KC_8     KC_9     KC_0     KC_MINUS KC_EQL   KC_BSPC  KC_HOME
  KC_TAB  KC_Q    KC_W    KC_E    KC_R    KC_T    KC_Y    KC_U    KC_I     KC_O     KC_P     KC_LBRC  KC_RBRC  KC_BSLS  KC_END
  KC_CAPS KC_A    KC_S    KC_D    KC_F    KC_G    KC_H    KC_J    KC_K     KC_L     KC_SCLN  KC_QUOT  KC_ENT            KC_PGUP
  KC_LSFT KC_Z    KC_X    KC_C    KC_V    KC_B    KC_N    KC_M    KC_COMM  KC_DOT   KC_SLSH  KC_RSFT  KC_UP             KC_PGDN
  KC_LCTL KC_LGUI KC_LALT SPC_LAYER1                                       KC_RALT  KC_RGUI  KC_LEFT  KC_DOWN           KC_RIGHT
)
# layer1
kbd.add_layer :layer1, %i(
  KC_ESC  KC_1    KC_2    KC_3    KC_4    KC_5    KC_6    KC_7    KC_8     KC_9     KC_0     KC_MINUS KC_EQL   KC_BSPC  KC_HOME
  KC_TAB  KC_Q    KC_W    KC_E    KC_R    KC_T    KC_Y    KC_U    KC_I     KC_O     KC_P     KC_LBRC  KC_RBRC  KC_BSLS  KC_END
  KC_CAPS KC_A    KC_S    KC_D    KC_F    KC_G    KC_H    KC_J    KC_K     KC_L     KC_SCLN  KC_QUOT  KC_ENT            KC_PGUP
  KC_LSFT KC_Z    KC_X    KC_C    KC_V    KC_B    KC_N    KC_M    KC_COMM  KC_DOT   KC_SLSH  KC_RSFT  KC_UP             KC_PGDN
  KC_LCTL KC_LGUI KC_LALT SPC_LAYER1                                       KC_RALT  KC_RGUI  KC_LEFT  KC_DOWN           KC_RIGHT
)

kbd.define_mode_key :SPC_LAYER1,    [ :KC_SPACE,            :layer1, 200, 200 ]

kbd.start!
