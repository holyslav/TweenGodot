GDPC                                                                               D   res://.import/crosshair.png-b7f9cb2e0fc32a087972fec001d3421e.stex   �       �       ��؀�+�'�Y��<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex�>      �      ŏ�����I5&�y@   res://.import/white.png-d8533361663a5f8fe5200e5b5262a62d.stex   �L      �       }�����Y\̺����x,   res://Blur.tscn P      s      gJT.�q���۴�|   res://Main.gd.remap  P             �(@Er�#��K�F�[   res://Main.gdc  �      q      <�c�8v�'�����E�   res://Main.tscn P
      �      Pؼ�h�Q�������   res://TweenItem.gd.remap P      $       ������v����u�   res://TweenItem.gdc 0      �      ��x��J��q�Lb��   res://TweenItem.tscn�      J      Y��t��y���T�)<   res://TweenScene.gd.remap   PP      %       �-����+C�̜@ቭ�   res://TweenScene.gdc0      �      ���
�Y�g��F^#���   res://TweenScene.tscn          �      �^� g{Ҟp���<�   res://crosshair.png.import  �!      �      �3�!����oO�U   res://default_env.tres  P$      �       um�`�N��<*ỳ�8   res://icon.icns �P      |      H�.H��LD�*�|(+�   res://icon.icns  %      |      H�.H��LD�*�|(+�   res://icon.png.import   PJ      �      �����%��(#AB�   res://project.binary j      �      	�k�{�9��`h� }�6   res://white.png.import  pM      �      ��!\����8G?gC    [gd_scene load_steps=4 format=2]

[ext_resource path="res://white.png" type="Texture" id=1]

[sub_resource type="Shader" id=1]
code = "shader_type canvas_item;

uniform float amount: hint_range(0.0, 5.0);

void fragment() {
	COLOR.rgb = textureLod(SCREEN_TEXTURE, SCREEN_UV, amount).rgb;
}
"

[sub_resource type="ShaderMaterial" id=2]
shader = SubResource( 1 )
shader_param/amount = 1.5

[node name="Blur" type="TextureRect"]
material = SubResource( 2 )
anchor_right = 1.0
anchor_bottom = 1.0
size_flags_horizontal = 3
size_flags_vertical = 3
texture = ExtResource( 1 )
expand = true
__meta__ = {
"_edit_use_anchors_": false
}
             GDSC            _      ������ڶ   �����϶�   ���������������Ҷ���   �����ض�   ������Ӷ   �������¶���   ����������Ӷ   ���������Ӷ�   �����������������¶�   ����¶��   �������Ӷ���   ���������ƶ�   ��������Ӷ��   ����������������¶��   ���Ӷ���      Items      	   gui_input                      	                  '      (      /   	   <   
   =      >      D      O      \      ]      3YY0�  PQV�  �  PQ�  W�  T�  W�  T�  PQ�  W�  �  T�  W�  T�  PQ�  Y0�  P�	  QV�  �
  PQT�  PR�  R�	  QYYY0�  PQV�  W�  T�  �  PQT�  �  W�  �  T�  �  PQT�  YY`               [gd_scene load_steps=6 format=2]

[ext_resource path="res://Blur.tscn" type="PackedScene" id=1]
[ext_resource path="res://TweenScene.tscn" type="PackedScene" id=2]

[sub_resource type="Shader" id=1]
resource_local_to_scene = true
code = "shader_type canvas_item;

uniform float amount: hint_range(0.0, 5.0);

void fragment() {
	COLOR.rgb = textureLod(SCREEN_TEXTURE, SCREEN_UV, amount).rgb;
}
"

[sub_resource type="ShaderMaterial" id=2]
resource_local_to_scene = true
shader = SubResource( 1 )
shader_param/amount = 3.0

[sub_resource type="StreamTexture" id=3]
resource_local_to_scene = true
flags = 4
load_path = "res://.import/white.png-d8533361663a5f8fe5200e5b5262a62d.stex"

[node name="Main" type="Control"]
anchor_right = 1.0
anchor_bottom = 1.0
mouse_filter = 1
__meta__ = {
"_edit_use_anchors_": false
}

[node name="TweenScene" parent="." instance=ExtResource( 2 )]

[node name="Blur" parent="." instance=ExtResource( 1 )]
material = SubResource( 2 )
texture = SubResource( 3 )
   GDSC   )   	   /   a     ������ڶ   �������������Ӷ�   ����������   �����������   �����������   ����������   ������������   ����������������   ������������   ������������   �����������󶶶�   ������������   �������Ӷ���   ��������   �������ⶶ��   �����������   ������������   ���������Ӷ�   ��������Ӷ��   ����Ҷ��   ����¶��   ��Ҷ   �����Ķ�   �����Ķ�   ����   ����ض��   �����������Ӷ���   �����϶�   �������ض���   �����Ӷ�   ����������¶   ��ض   �������������������϶���   ζ��   �����������䶶��   ϶��    ����������������������������Ҷ��   ���������¶�   ����¶��   ��������������������ض��   ������Ҷ  �������?   
            �                   
   position:x     
   position:y        tween_all_completed                                      *      +      6   	   A   
   N      \      j      k      r      y      z      {      �      �      �      �      �      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $     %   /  &   5  '   =  (   D  )   H  *   I  +   J  ,   Q  -   [  .   _  /   6Y3YY>�  N�  R�  R�  R�  RY�  R�  R�  R�	  R�
  R�  OY>�  N�  R�  R�  R�  OYY8P�  Q;�  �  T�  Y8P�  Q;�  �  T�  Y8P�  RR�  Q;�  �  Y8P�  Q;�  �  P�  R�  QY8P�  Q;�  �  P�  R�  QYY5;�  W�  Y5;�  W�  YYY;�  �  YY0�  PQV�  �  T�  �  �  &�  T�  �  V�  �  �  P�  R�  Q�  �  �  P�  R�  Q�  �  PQYY0�  PQV�  �  T�   P�  R�  R�  T�!  R�  T�!  R�  R�  T�"  R�  T�  Q�  �  T�   P�  R�  R�  T�#  R�  T�#  R�  R�  R�  Q�  �  T�  PQ�  �  �  YY0�$  PQV�  &�  V�  �  �  �  �  T�   P�  R�  R�  T�!  R�  T�!  R�  R�  T�"  R�  T�  Q�  �  T�   P�  R�  R�  T�#  R�  T�#  R�  R�  R�  Q�  �  T�  PQ�  &�  T�  �  V�  AP�  R�  Q�  �  PQYYY0�%  P�&  QV�  &�&  4�'  �&  T�(  V�  �  PQY`      [gd_scene load_steps=6 format=2]

[ext_resource path="res://crosshair.png" type="Texture" id=1]
[ext_resource path="res://TweenItem.gd" type="Script" id=2]

[sub_resource type="StyleBoxEmpty" id=1]

[sub_resource type="StyleBoxFlat" id=2]
resource_local_to_scene = true
draw_center = false
border_width_left = 3
border_width_top = 3
border_width_right = 3
border_width_bottom = 3
border_blend = true

[sub_resource type="GDScript" id=3]
script/source = "extends Panel


# Declare member variables here. Examples:
# var a = 2
# var b = \"text\"


# Called when the node enters the scene tree for the first time.
func _ready():
	yield (get_tree(), \"idle_frame\") 
	print (get_parent().get_parent().rect_global_position)
	rect_global_position = get_parent().get_parent().rect_global_position
	pass
"

[node name="TweenItem" type="PanelContainer"]
margin_right = 160.0
margin_bottom = 160.0
rect_min_size = Vector2( 160, 160 )
custom_styles/panel = SubResource( 1 )
script = ExtResource( 2 )
__meta__ = {
"_edit_use_anchors_": false
}
start = Vector2( 15, 140 )
end = Vector2( 140, 15 )

[node name="Cursor" type="CPUParticles2D" parent="."]
position = Vector2( 140, 15 )
amount = 100
lifetime = 0.5
local_coords = false
texture = ExtResource( 1 )
emission_shape = 1
emission_sphere_radius = 1.0
direction = Vector2( 0, 0 )
gravity = Vector2( 0, 0 )

[node name="Tween" type="Tween" parent="."]

[node name="CanvasLayer" type="CanvasLayer" parent="."]

[node name="Frame" type="Panel" parent="CanvasLayer"]
anchor_right = 1.0
anchor_bottom = 1.0
margin_right = -864.0
margin_bottom = -440.0
custom_styles/panel = SubResource( 2 )
script = SubResource( 3 )
__meta__ = {
"_edit_use_anchors_": false
}

[connection signal="gui_input" from="." to="." method="_gui_input"]
[connection signal="tween_all_completed" from="Tween" to="." method="_on_Tween_tween_all_completed"]
      GDSC            G      ������ڶ   ���������������Ӷ���   �����϶�   ߶��   ܶ��   ���������۶�   �������Ӷ���   ���������Ŷ�   ��������Ҷ��   ���������Ӷ�   ��������Ӷ��      res://TweenItem.tscn          
                                                    (      1   	   9   
   ?      E      3YY:�  ?PQYY0�  PQV�  )�  �K  P�  R�  QV�  )�  �K  P�  R�  QV�  ;�  �  T�  PQ�  W�  T�  P�  Q�  �  T�	  �  �  �  T�
  �  Y`         [gd_scene load_steps=2 format=2]

[ext_resource path="res://TweenScene.gd" type="Script" id=1]

[node name="TweenScene" type="Control"]
anchor_right = 1.0
anchor_bottom = 1.0
mouse_filter = 1
script = ExtResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="TweenItems" type="GridContainer" parent="."]
anchor_right = 1.0
anchor_bottom = 1.0
columns = 6
__meta__ = {
"_edit_use_anchors_": false
}
   GDST              �   PNG �PNG

   IHDR         ;֕J   sRGB ���   �IDAT(���A� D���R^C��s/C�KD���]a���b�i�pI�6��.���5�<0��\v��Ats�7�H)z�̼(�)Ʋ���rM�����|6����9m�6�	��G�W{��x����~�
�_w���    IEND�B`�              [remap]

importer="texture"
type="StreamTexture"
path="res://.import/crosshair.png-b7f9cb2e0fc32a087972fec001d3421e.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://crosshair.png"
dest_files=[ "res://.import/crosshair.png-b7f9cb2e0fc32a087972fec001d3421e.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
 [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             icns  |ih32  l  *(*)�*)*(*� )**-/�0
/-**) **+14�541+**'*1�51*')-4�54-)*/�566�566�5/**0�543Os��W4554W��sO34�50**0�5W������4554����ԪW�50**0�5H�әpVg�44��gVp���H�50**0�52~�MHGGJ�ӑ�ӯJGGHM�~2�50**0�53r�R�Gl����l�GR�r3�50**0�54c�_�GIUYYUI�G_�b4�50**0�5
3X�|C3J��eF�G
Fe�J3C|�X3�50**0�5
4P���ƃ�۟L�G
L��ń����P4�50**0�5D��dt���n�Gn��tdҾD�50**0�56��sGGKiV�GViKGGs�6�5	0**0553b✁G F�G F�G��b3550**055/��J�GJז/550**0552|�{�G	{�|2550**0�58��]�G]Ե8�50**0�5Z֢I�GJMMI�GIMMJ�GI��Z�50**0�52��J�Gf��ܧ\F�GF\��ݰf�GJ��2�50**0�51��JGG\��ž��L�GEE�GL�ؾ���\GGJ��1�50**0�5#1��JGG���F>_ȃFGR��RGF��_>F���GGJ��1�50**0�5#1��JGH��rAAC��EFt��tFE��CAAr�HGJ��1�50**0�5#1��JGG��?@A��FFu��uFF��A@?��GGJ��1�50**0�5#1��JGGX��|`��KGFt��tFGK��`|��XGGJ��1�50**0�51��J�GW���Q�Ga��a�GQ���W�GJ��1�50**0�51��J�GACFB�GFllF�GBFCA�GJ��1�50**0�51��RMLKIH�GFF�GHIKLMR��1�50**0�5	1��������I�G O�Y O�G	I��������1�50**0�5	1�ϝ�����O�G	B������ӨB�G	O������н1�50**0�5	1��IEDG��V�G	>�͖�����>�G	V�GDEI��1�50**0�5#2��MGGF~𠊇y{�DHHD��{y����~FGGMМ2�50**0�5#4t�eFGGa�������tFGGFt�������aGGFe�s4�50**0�58��C�GU]gkw{L�GL�{wkg]U�GC��8�50**0�53l�N�GN��k3�50**0�5�߸[B�GB[�߈�50**0�59y��XJH�GHJX���y9�50**0�56C��䷖{haYRLFFLRYah{����C6�50**0�5/@������������������?/�50**0�535Jeu����������teJ53�50*)/�566788766�5/*)-4�54-)(*1�51*(+*+14�5
41+*+ )**-/�0/-**)� *(*)�*)*(*    DCEC�DCECD� �DIL�MLI�D EDFOT�UTOFDECDO�UODCDIT�UTIDDL�UVV�UVV�ULDDM�Uh���mTUUTm���h�UMDDM�Up������WUUW����ٲp�UMDDM�Uc�Ṡ���UU�흔����c�UMDDM�US����؟��ʍ����S�UMDDM�US������ܝ����S�UMDDM�UTz𛁌����������zT�UMDDM�U	Tn��_Tc��	��cT_��nT�UMDDM�U
Ti���̓�漏��
���˓����iT�UMDDM�U`�ᚢ��۠�����Ӣ���`�UMDDM�UV�롌�������������V�U	MDDMUUTx缝���xTUUMDDMUUR�㎝���RUUMDDMUUS��	��SUUMDDM�UW�ᖛ���W�UMDDM�Up��������������������p�UMDDM�US�ҍ������Ė������˚�����S�UMDDM�US�ҍ�����Ž�ؐ��������ؽ��ݖ���ҿS�UMDDM�U#S�ҍ�����E=^ͭ����ᓌ���^=E������ҿS�UMDDM�U#S�ҍ����q@@B������������B@@q��ҿS�UMDDM�U#S�ҍ�����>?@������������@?>������ҿS�UMDDM�U#S�ҍ�����{_�Ў���������Ю_{�ݔ���ҿS�UMDDM�US�ҍ������Ƒ����雀�����ѕ���ҿS�UMDDM�US�ҍ���������������������ҿS�UMDDM�US�ӑ�� ��� ����ӿS�UMDDM�U	S������ʳ��� ��� ���	���������S�UMDDM�U	S���������������Ċ��	�����ż��S�UMDDM�U	S�Ս��������	��޸����ꉀ�	�������սS�UMDDM�UT������������񽋌���񧤪�������ߦT�UMDDM�UT�윀���������������������ך����T�UMDDM�UX�֋�������������������������X�UMDDM�UT���������T�UMDDM�U��Θ������旄UMDDM�UX��뾔�������܉X�UMDDM�U^���з������������������^�UMDDM�UQ_������������������Ɨ^Q�UMDDM�UTVew������������weVT�UMDDL�U V�W V�ULDDIT�UTIDCDO�UODCDDFOT�UTOFDD �DIL�MLI�D� DDEC�DCEDD    [ZZY�ZYZZ[� �Z`d�fd`�Z \Z\hn�pnh\Z\X[h�ph[XY`n�pn`YYd�pqq�pqq�pdYZf�p~����oppo����~�pfZZf�p�������rppr����ݻ��pfZZf�p{�������pp��������{�pfZZf�pn�������ܫ���������n�pfZZf�po��ā������ǁ����o�pfZZf�po��ǁ������������o�pfZZf�p	o���wo{��ɋ�	���{ow���o�pfZZf�p	����Ѣ������	���Ң���ۀ�pfZZf�px�������ɏ���������x�pfZZf�pq��ɿ���Ñ��������q�p	fZZfppo��؝���oppfZZfppn�������nppfZZfppo��Ν�	��oppfZZf�pq��ě����q�pfZZf�p��ۂ����������ᄁpfZZf�po����������ć������ƀ����o�pfZZf�po��������Ž�����������ؽ���Ŀ����o�pfZZf�p#o��������G?`�ѿ����ÿ���`?G��Ͽ����o�pfZZf�p#o�������rBBD�ڿ����Ϳ�ڣDBBr�׿����o�pfZZf�p#o��������@AB�ѿ����Ϳ�ѽBA@��Ͽ����o�pfZZf�p#o��������|a��������Ϳ���a|��ÿ����o�pfZZf�po����������������ǀ������Ā����o�pfZZf�po������������ʂ����������o�pfZZf�po������������o�pfZZf�po�������ӂ� ��� �����������o�pfZZf�p	o����������������ݾ��	���������o�pfZZf�po�瀿���À������򾀿��������o�pfZZf�po�������������ف���������Ѐ���o�pfZZf�po��ǀ���������́���������ƀ���o�pfZZf�ps�澀������������������Á���s�pfZZf�po���������o�pfZZf�p���ž�����쥄pfZZf�pr�������������r�pfZZf�pw�����������������������w�pfZZf�pmx������������������˥xn�pfZZf�poq|��������������|qo�pfZYd�p�q�pdYY`n�pn`YZZh�phZX[Z\hn�p
nh\Z[ YZZ`d�fd`ZZY� [ZZY�ZYZZ[  h8mk  	  _���������������������������������������_   ,��������������������������������������������, ����������������������������������������������_����������������������������������������������_�����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������_����������������������������������������������_���������������������������������������������� ,��������������������������������������������,   _���������������������������������������_      GDST0   0           �  PNG �PNG

   IHDR   0   0   W��   sRGB ���  fIDATh�͚kp]�u�{�s�}H�������e+	[`0O�v3���&�I�xHi�~h�i&�Ia�I?4�"�v&�����8�q���c�A-l�z�u�t��w?\I�,�	��?st�蜽����Zk���7��(P���#%���nB��:��zPHqZ)�C
q�hL ���)�g�������Ly>�V���ޏc����?�M%�sB�}V0_>�#?��c;߇R
������A+�/L+pݒBbZ�`� ��^)�x�����~��>6����	)��R��ke�B�+~��ǑH�D�VD�J��髺$Lme)��V�z�g>�s`l��֚%��Z�itu�s��ޱI�IY΢�\�il�*㡦��\�#��,�dǭ<��@�싆�����*��N��&��?�՟����FV�a�J�y<�GO���d�0g>�?n	�|���<��F^��) ��֮��[��)��|�+
�sK#�o����{���įN����\G~A�?��)G����3͝�ݹ�P( @ӎF�;��f�&�v�Mr�c�<q+��\����%�\�)�H�@O�B�3lG]�5��������ދ ���m�}O>�@��V�	+  6�@A�� �v�=�f����R� ���moA?����T������l�,�aC)ۥ���h"ͪ�|�7��i�eH4�#�ҚɌ�s`X��Ӛ����1�S�`G���I[g��G�9�-)@kXS�O�w�+Y��.��z8��B�[)�Z��S=��+��@,��S=4}�s�o���z�M;���jJ������w$��
���>��`>�@hރ¼ ��/RZ����!E�ݍ�l]�s8�O^����
�/D]i�'��<NwO���^�i�g~����.�����ym�t;_\���{�f�����gi�5�`mq���M,��D��II�E�x
We���,�3�o���c����s����qKiM��*�c-���\��M^s� ��K�hr�<@�H�c-���u��Ps�`� Wi�5l"�J^k\���g2Kc��_k$�J�5l�'nB�?<F$�Gce���,4V������Xē
����i���v�QCy��+!��C>�Qé3���N+�� <�y���H'ή�V�H;!�d�Z��� ���YAvl'��C��1ȱt��������m�r5a?��h�)F+�{F8�:�pҹ��h�3���
n�-CHAۥq�8�ǥ���{��H���Kt�,:���
��������vn��.���V�?x��R�M�X����+f�2%�ji,u���=Ϸ�Tᩝ)[�\��,>�Y,;�\�GCM��/�̿�7��4�֭��|��k����q��7��}��7�%�q���5E�^�������@ ���=�c�?���<N\�.�ϲ�W��'c����8�a���KKKՑ ZgWo}I���|*J
X_�^Q��ii9Coo/�a�8�-��'c��������4�?H$A)������L�fs1�G\��B@�D����ym#��?��d:��,�e�P�`��q��?�L���>�=� �յ����Yw�Kd�^ �^��ΦZ������Q]]ŗ����`����r�,_�D��/z�/�]�׾�'(�9y~�O\��)0���ƳQe,aϮ��4/��ȣ�m����DJAko�z���(+*h�)��<��C��)|W���h��혽������޾�K��x�RX+�L>� )S�x�MCi�K�d=�J��s����+�t�pV��y�t� |�@
�Z�t���ϔ�em��M,i��]Ʀ2\��عQ�� �$d�v��=��|JR��M�Ԭ*�� @�2(Y�,
�>N�t�\���}1޿0BQФ$����\]D�M��0Fڛ��+͓۪�iMR�yΫ�惞(����歘%O6mb4�bd"Arʦg0F4�rkm��;P��z	��બ�Rp�gJ��/l�o��ˎ�j�kS���a�D)ؾ���6��'/1w���R��ӽ��cOi`JXWQ���v�%=Ccl[_�)Jd�Sk�D�Ek�]��������Ґ��>�k൶!LqY��<�m-�][��aKb���<�f�O�1�����/��s�X,)@س��갟K�����L$i��M��&�!��Ɣ�@���P���s��0'�q�q�ƒ�S$3.����L$gC�V���*�q��@��vɢ�0��[���>ҁ9g*�~3�>�)�ӟ����x��g����QWi��U���H�j�1����=u�����[x�4S���uy�GG���O���5�r���4�Ɍ˜���p<Ms��U������-�ￊ�9υ����>�\��
!���I'���z֗�sa$A,�.Z�|8J����W[j�|�(o��}�����vn38�=���0�m�Ȟ�B�``"��L�A��+
�<����>�� i�����;m��B\) �\9XA��c��yv�}���7E�@���$c)���H{����=��e7-ːX��oJ��oHJ�&U�!�U�PU�v�;�>�s�R��f�9�r�v="�<�[�(**���
��`��풱]\�ö��iY&�i�L�I<�§=�t��D��s���Ft*�����f��FJIYaU�a����C!�� �p>��5K�v����I�I%�L&���i��'�%PJ�t�\L���ZU.�5�4����^�㳅�@�)df�1��o�K�����i�����9PJ�M_J���C+����Z��9���u���sl<��Z�W$px�Nŵk���J|�Z��i�T\��M!���o���$&�����(��sl��o
!�fR�v_Q�=��o�v����6�+��D=
���'��b,�    IEND�B`�    [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
GDST@   @           v   PNG �PNG

   IHDR   @   @    �.   sRGB ���   ,IDATX��̡  �0����D��ʚ�            �8P-I���    IEND�B`�              [remap]

importer="texture"
type="StreamTexture"
path="res://.import/white.png-d8533361663a5f8fe5200e5b5262a62d.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://white.png"
dest_files=[ "res://.import/white.png-d8533361663a5f8fe5200e5b5262a62d.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
             [remap]

path="res://Main.gdc"
 [remap]

path="res://TweenItem.gdc"
            [remap]

path="res://TweenScene.gdc"
           icns  |ih32  l  *(*)�*)*(*� )**-/�0
/-**) **+14�541+**'*1�51*')-4�54-)*/�566�566�5/**0�543Os��W4554W��sO34�50**0�5W������4554����ԪW�50**0�5H�әpVg�44��gVp���H�50**0�52~�MHGGJ�ӑ�ӯJGGHM�~2�50**0�53r�R�Gl����l�GR�r3�50**0�54c�_�GIUYYUI�G_�b4�50**0�5
3X�|C3J��eF�G
Fe�J3C|�X3�50**0�5
4P���ƃ�۟L�G
L��ń����P4�50**0�5D��dt���n�Gn��tdҾD�50**0�56��sGGKiV�GViKGGs�6�5	0**0553b✁G F�G F�G��b3550**055/��J�GJז/550**0552|�{�G	{�|2550**0�58��]�G]Ե8�50**0�5Z֢I�GJMMI�GIMMJ�GI��Z�50**0�52��J�Gf��ܧ\F�GF\��ݰf�GJ��2�50**0�51��JGG\��ž��L�GEE�GL�ؾ���\GGJ��1�50**0�5#1��JGG���F>_ȃFGR��RGF��_>F���GGJ��1�50**0�5#1��JGH��rAAC��EFt��tFE��CAAr�HGJ��1�50**0�5#1��JGG��?@A��FFu��uFF��A@?��GGJ��1�50**0�5#1��JGGX��|`��KGFt��tFGK��`|��XGGJ��1�50**0�51��J�GW���Q�Ga��a�GQ���W�GJ��1�50**0�51��J�GACFB�GFllF�GBFCA�GJ��1�50**0�51��RMLKIH�GFF�GHIKLMR��1�50**0�5	1��������I�G O�Y O�G	I��������1�50**0�5	1�ϝ�����O�G	B������ӨB�G	O������н1�50**0�5	1��IEDG��V�G	>�͖�����>�G	V�GDEI��1�50**0�5#2��MGGF~𠊇y{�DHHD��{y����~FGGMМ2�50**0�5#4t�eFGGa�������tFGGFt�������aGGFe�s4�50**0�58��C�GU]gkw{L�GL�{wkg]U�GC��8�50**0�53l�N�GN��k3�50**0�5�߸[B�GB[�߈�50**0�59y��XJH�GHJX���y9�50**0�56C��䷖{haYRLFFLRYah{����C6�50**0�5/@������������������?/�50**0�535Jeu����������teJ53�50*)/�566788766�5/*)-4�54-)(*1�51*(+*+14�5
41+*+ )**-/�0/-**)� *(*)�*)*(*    DCEC�DCECD� �DIL�MLI�D EDFOT�UTOFDECDO�UODCDIT�UTIDDL�UVV�UVV�ULDDM�Uh���mTUUTm���h�UMDDM�Up������WUUW����ٲp�UMDDM�Uc�Ṡ���UU�흔����c�UMDDM�US����؟��ʍ����S�UMDDM�US������ܝ����S�UMDDM�UTz𛁌����������zT�UMDDM�U	Tn��_Tc��	��cT_��nT�UMDDM�U
Ti���̓�漏��
���˓����iT�UMDDM�U`�ᚢ��۠�����Ӣ���`�UMDDM�UV�롌�������������V�U	MDDMUUTx缝���xTUUMDDMUUR�㎝���RUUMDDMUUS��	��SUUMDDM�UW�ᖛ���W�UMDDM�Up��������������������p�UMDDM�US�ҍ������Ė������˚�����S�UMDDM�US�ҍ�����Ž�ؐ��������ؽ��ݖ���ҿS�UMDDM�U#S�ҍ�����E=^ͭ����ᓌ���^=E������ҿS�UMDDM�U#S�ҍ����q@@B������������B@@q��ҿS�UMDDM�U#S�ҍ�����>?@������������@?>������ҿS�UMDDM�U#S�ҍ�����{_�Ў���������Ю_{�ݔ���ҿS�UMDDM�US�ҍ������Ƒ����雀�����ѕ���ҿS�UMDDM�US�ҍ���������������������ҿS�UMDDM�US�ӑ�� ��� ����ӿS�UMDDM�U	S������ʳ��� ��� ���	���������S�UMDDM�U	S���������������Ċ��	�����ż��S�UMDDM�U	S�Ս��������	��޸����ꉀ�	�������սS�UMDDM�UT������������񽋌���񧤪�������ߦT�UMDDM�UT�윀���������������������ך����T�UMDDM�UX�֋�������������������������X�UMDDM�UT���������T�UMDDM�U��Θ������旄UMDDM�UX��뾔�������܉X�UMDDM�U^���з������������������^�UMDDM�UQ_������������������Ɨ^Q�UMDDM�UTVew������������weVT�UMDDL�U V�W V�ULDDIT�UTIDCDO�UODCDDFOT�UTOFDD �DIL�MLI�D� DDEC�DCEDD    [ZZY�ZYZZ[� �Z`d�fd`�Z \Z\hn�pnh\Z\X[h�ph[XY`n�pn`YYd�pqq�pqq�pdYZf�p~����oppo����~�pfZZf�p�������rppr����ݻ��pfZZf�p{�������pp��������{�pfZZf�pn�������ܫ���������n�pfZZf�po��ā������ǁ����o�pfZZf�po��ǁ������������o�pfZZf�p	o���wo{��ɋ�	���{ow���o�pfZZf�p	����Ѣ������	���Ң���ۀ�pfZZf�px�������ɏ���������x�pfZZf�pq��ɿ���Ñ��������q�p	fZZfppo��؝���oppfZZfppn�������nppfZZfppo��Ν�	��oppfZZf�pq��ě����q�pfZZf�p��ۂ����������ᄁpfZZf�po����������ć������ƀ����o�pfZZf�po��������Ž�����������ؽ���Ŀ����o�pfZZf�p#o��������G?`�ѿ����ÿ���`?G��Ͽ����o�pfZZf�p#o�������rBBD�ڿ����Ϳ�ڣDBBr�׿����o�pfZZf�p#o��������@AB�ѿ����Ϳ�ѽBA@��Ͽ����o�pfZZf�p#o��������|a��������Ϳ���a|��ÿ����o�pfZZf�po����������������ǀ������Ā����o�pfZZf�po������������ʂ����������o�pfZZf�po������������o�pfZZf�po�������ӂ� ��� �����������o�pfZZf�p	o����������������ݾ��	���������o�pfZZf�po�瀿���À������򾀿��������o�pfZZf�po�������������ف���������Ѐ���o�pfZZf�po��ǀ���������́���������ƀ���o�pfZZf�ps�澀������������������Á���s�pfZZf�po���������o�pfZZf�p���ž�����쥄pfZZf�pr�������������r�pfZZf�pw�����������������������w�pfZZf�pmx������������������˥xn�pfZZf�poq|��������������|qo�pfZYd�p�q�pdYY`n�pn`YZZh�phZX[Z\hn�p
nh\Z[ YZZ`d�fd`ZZY� [ZZY�ZYZZ[  h8mk  	  _���������������������������������������_   ,��������������������������������������������, ����������������������������������������������_����������������������������������������������_�����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������_����������������������������������������������_���������������������������������������������� ,��������������������������������������������,   _���������������������������������������_      ECFG      _global_script_classes             _global_script_class_icons             application/config/name      
   TweenGodot     application/run/main_scene         res://Main.tscn    application/config/icon         res://icon.icns )   physics/common/enable_pause_aware_picking         %   rendering/vram_compression/import_etc         )   rendering/environment/default_environment          res://default_env.tres       