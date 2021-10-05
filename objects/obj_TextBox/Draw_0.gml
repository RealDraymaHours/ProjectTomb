/// @description Make textbox

draw_sprite(spr_TextBox, 0, xChosen, yChosen);

draw_set_font(fnt_Text);

draw_text_ext(x + 4, y + 3, Text, stringHeight, boxWidth);