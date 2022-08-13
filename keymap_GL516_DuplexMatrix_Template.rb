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
    [ [row0,col0], [row0,col1], [row0,col2], [row0,col3], [row0,col4], [row0,col5], [row0,col6], [row0,col7], [col0,row0], [col1,row0], [col2,row0], [col3,row0], [col4,row0], [col5,row0], [col6,row0], [col7,row0],],
    [ [row1,col0], [row1,col1], [row1,col2], [row1,col3], [row1,col4], [row1,col5], [row1,col6], [row1,col7], [col0,row1], [col1,row1], [col2,row1], [col3,row1], [col4,row1], [col5,row1], [col6,row1], [col7,row1],],
    [ [row2,col0], [row2,col1], [row2,col2], [row2,col3], [row2,col4], [row2,col5], [row2,col6], [row2,col7], [col0,row2], [col1,row2], [col2,row2], [col3,row2], [col4,row2], [col5,row2], [col6,row2], [col7,row2],],
    [ [row3,col0], [row3,col1], [row3,col2], [row3,col3], [row3,col4], [row3,col5], [row3,col6], [row3,col7], [col0,row3], [col1,row3], [col2,row3], [col3,row3], [col4,row3], [col5,row3], [col6,row3], [col7,row3],],
    [ [row4,col0], [row4,col1], [row4,col2], [row4,col3], [row4,col4], [row4,col5], [row4,col6], [row4,col7], [col0,row4], [col1,row4], [col2,row4], [col3,row4], [col4,row4], [col5,row4], [col6,row4], [col7,row4],],
  ]
)

# default layer (should be added at first)
kbd.add_layer :default, %i(
  KC_ESC  KC_1    KC_2    KC_3    KC_4    KC_5    KC_6    KC_7    KC_8     KC_9     KC_0     KC_MINUS KC_EQL   KC_BSPC  KC_F3   KC_F8
  KC_TAB  KC_Q    KC_W    KC_E    KC_R    KC_T    KC_Y    KC_U    KC_I     KC_O     KC_P     KC_LBRC  KC_RBRC  KC_BSLS  KC_F4   KC_F9
  KC_CAPS KC_A    KC_S    KC_D    KC_F    KC_G    KC_H    KC_J    KC_K     KC_L     KC_SCLN  KC_QUOT  KC_ENT   KC_F1    KC_F5   KC_F10
  KC_LSFT KC_Z    KC_X    KC_C    KC_V    KC_B    KC_N    KC_M    KC_COMM  KC_DOT   KC_SLSH  KC_RSFT  KC_UP    KC_F2    KC_F6   KC_F11
  KC_LCTL KC_LGUI KC_LALT KC_MHEN KC_SPC  KC_HENK KC_KANA KC_RALT KC_RGUI  KC_APPLICATION KC_RCTL  KC_LEFT  KC_DOWN  KC_RIGHT KC_F7   LAYER1
)
# layer1
kbd.add_layer :layer1, %i(
  KC_ESC  KC_1    KC_2    KC_3    KC_4    KC_5    KC_6    KC_7    KC_8     KC_9     KC_0     KC_MINUS KC_EQL   KC_BSPC  KC_F3   KC_F8
  KC_TAB  KC_Q    KC_W    KC_E    KC_R    KC_T    KC_Y    KC_U    KC_I     KC_O     KC_P     KC_LBRC  KC_RBRC  KC_BSLS  KC_F4   KC_F9
  KC_CAPS KC_A    KC_S    KC_D    KC_F    KC_G    KC_H    KC_J    KC_K     KC_L     KC_SCLN  KC_QUOT  KC_ENT   KC_F1    KC_F5   KC_F10
  KC_LSFT KC_Z    KC_X    KC_C    KC_V    KC_B    KC_N    KC_M    KC_COMM  KC_DOT   KC_SLSH  KC_RSFT  KC_UP    KC_F2    KC_F6   KC_F11
  KC_LCTL KC_LGUI KC_LALT KC_MHEN KC_SPC  KC_HENK KC_KANA KC_RALT KC_RGUI  KC_APPLICATION KC_RCTL  KC_LEFT  KC_DOWN  KC_RIGHT KC_F7   LAYER1
)

kbd.define_mode_key :LAYER1, [ nil, :layer1, nil, nil ]

kbd.start!
