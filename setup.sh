#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY�c� q��t0�����������b�� 0 `*=`��ֽ�����u�ze�w3�ݽo|����۾���t;�z>�Š�ֹW���l�UeY���z^kz�٩6��]!��˩Sw%�i����}�m���.�[���D��:�L�0�MSd��	螔�����d'��=@ 4 ��L��b��I�FOP  CC�h� )���MO54��ԟ���D�F��@h�44	5	�O�b��H�0e4�����F�i���@I��A5?MS�OS��m&dѢl�F��Q�h4j		��ҟ���ڧ�'�Ch�����'�v@$
��jԈ*ADDQ~�7���2J�������d�?o��߻�_�J��t��J
ΈRǱ�6��fJ*�6U"2 �Uٝ>/�u��"8��p����I+��b�����h���m�@�RK.���N���{M�f�j��%|`���l��CGR�4��ޒK�G�� �4Ʊg[o<5�>+��i1���G��2�B��DA���y�~G>�f+��l(��.���\l�K{*�vz�%S2p��X߮L�S��pm��ߗ����^I�4�ۧ��U'G|w��֕�
,�38s�$(���ѻ�G��X���4�h#Ɔh���i�2��Q�8��a�Dϕ+�a��G�nρ���1f��o�VL��y�i��o��gC��؝��D6�y�+���7��7Y�P2^X�+�1��p��4N���A�N��Cz��z������KnO�Gt�?5�L��Q�:�i�e�&�۽Qu�Fjϕ���'�d��|i�(�D��!��n�����n�f�N�\tn���'Ǉca��/�}�L�y�q9ٺ��y����UV�L�E��j�h�#s(T�d�f%�7m�fv�A;_Fno�����	p}Q_;"ǯ+^�po����sV����~��B��/{i��&a��6��|�[�W����9�K�wL���`mL&G"�}��ظ��W �uE�R�9kZM���h���[ln�������/��oʹ����qq�௕f�~pR�D�Ҩ=�sJ,{�=�x-)C`s�5�t�;x���8�(�؇�@���z[��.�����)�n~�����S`��}�?���
�q�6���.=��檽ȹ5�]*�#X�Ü6�i�ƙ~%�#|�R(y�#��hU�w�j=��WZeǤ>%&� [�P9<��mS
fD��U:�+�����-zw�D-�������Y��	��@^ǛE�\����8d��9�B�m�������J�Xw�xw{��i-�W��qa���:AЩH �=��ꀡd��$�y�H9x!rc�-�h&��w��%X��&c�l�,4�	UM
;�\*ֽ��ɮ�=l�'TB�YN��`�ad���l��˄*� {�����I��Ơ���/��#��Ō}X�t6��z��;E0,�-����y2���:�6�9�,�+�0|Q	K�a�#6�Ϻ0&t�(�L)��D�ɵ����h�4�p��O0!�ok2!����0ţN�NB�vq[ӟ=�SO��e�h��u�ƪ��zl!���≔�q����=D�����t�?8~��:� �7�m���U�j�r���
��;�fئ���#��>����g;g�fO��
*�k��3ys&)d���چ���j/�0/�k�+��2���ӻ%R����=�-�96��5W `�a;�Bs��?�7��ў<=T�`9-��US��PU"�i2��_Ά��rܒ��~����o�Z%&�<Ϲ)|�zf�S��<�a����(���K�Z��n��������o � �_)���������ɋKS����"���#��ؖ'+;+6�m�-:�T]^o[�M<��x3�ʐ;-��?3wI�S¼�/�2}�t��.��ܷk��� ���DA�Lv�����:��t�=׵��UQ�c�s)x�vQ�l�{�S��v r��>13X��X���.�����2&�`��4�X4v�ِ����V��r���Є�����@T�V����Ё���|��cHu��S�]�y����)/��R���0pWBF��j�R�eBx��֩=;l���ѿ��hk�4Ԑ��j��69�CR�RC|���!��[���'Lڼ�쎎�����߾�#sH����JjcK[?A!�
H,>A�˃���?n���+�@9�jhL�����,��d
d���F�%$wS���(�����]�}"ɠ�P,�Ҫ@B���Ht��NsNq��UJ�`�"d����2����&M�1���
6�.��P��O���{]�k��}мPS��{9R˝��!�Ͷu_q<��{��$B�;	>���r�b�FT�wy�߀`���^j��RBK���$����P&��������i��eQ��\��춞՞&_���{D'� hd��Țq�;����ͮ��yS�/!%~�ۘdL���#�]�E'�����P��(����<��rA/� �z����l�I�A��*�HB]���yzQ#�b��/xB��HyD�bwiMա6��Vy�����)i�~)q����ݣ�t�26F	^�^��%���l�ƺ�W9nuK!@6*ߠ�8���V�`.� Y����Ml�
`w�"5>:ٞ�SiT�&�7$��:���Y�� m&<�p��T4��U��\��P�&��<��.�Nꤩ�,��&��5���^R ��G�@��g��<�5��iD���'��J=���,���<ă0HU�*/�����YQUk[-�r<�9 ��Zv���y,�����<���J�ĵ���7���FBQ��-2��l��� �+,�U�=v ;�X�wĽ��s�\z̦�X��Oϔ�Q�����D��6�(õ�]G|�r�1��ǌ��vՂR�1&��[F�ޓ.5n���f-/�,_\<�A(;��6�*��EAAdQH�`�,���S���"��ص^܅��iF˩���j�z�ƌ6�C��{�D���=7S�9FN���[m���H����f�W�a#r�[�qEW���,)�X�{�m[5�Չi��E���8�.S1��7H�D��^ܒ�(81��awHG0>vvJ���-�D�87�~��sJ�y����$[,J{�lHUKk]
+��0A�;B��o�,��&��r�f�0̎a�0��97��1y�~�u�fˤ�Gƞ��g�Cп!I�D݀[0ف�iΛT��ص87\0��Po�ʚ�$�*���K����LV��X{
E��r�w=�>|(��`#��ʞ��CJ���2>���p�A)*%��X~r>k'&	_��wd�tS<y�̀�`<_A2x��F2߰�J�Y�t��+���kP����n���i���R�(?^}�����k�W�谸��e�}�G%|�X~u�,6��а��߯`�v�SP-�}�U�N�����b�)�9���#�v�����V�W�wWn"
�y��E�	W?e^N��]�|k)Y���^���]�w�F�O����l�z/��ߓp�"��Ι��h�4<>e�|H�P�tD�N>�u�Ő�57mK�d^�(&��gȎr^㔔r��f�>��'E%I�HT��P�+���_e�$�x;�&ô��w'��7������i�Br�T"��z�p��{�=�{F��]�&�|([�?L���l�B��ˎM{=Eg_k]R۱ܵziRLjC�:��
�Hv8iD��p.�o7s�k�:?iD��1 ǲ&�%m�G�Z�N�\<��C�̈\d���6
`�~V���ĭu���D��o�k�&5�s�)�zFoK��c&-8�pF��$�8���5S*v";�M2k���uҤBH�,U�3"{���ca�����s˒ȟ��� Z���^��"b���ۤ8MG*N:'��s8c�5tlic��q^��3<Uܕ9��{��=Q&��nE��S��艐��1X�ZS���i،�_��������͊GgH&X��uK/8N��𮓨��Y�%�Iˤ3�����cMtU/֝=�l"�uG��H�4�r���K��O�̀.)�"��I�e~�TEޠ�!xM#�#�(ZT������G�9/�~RaswCf�"fl���+�gz���\��w��w)��������f�0��4��P0s������M)��c�����3�:��UNn5�NOX�~���0��^��2ZPI@`�h\�:����/\͞�"#��|�6wSS��1���p�m���4g�q��͂b+��|�u�$���5+umcRv^3���g]X)�˓[���5$�V���E� L1��Ws{��޲�Q���$�I���	��'��B�1�FJ�
8%��'�#���X}`�iOF��g��� '8s�
�G������O�{a��"A$y�'�ϝ�AT�[IZc?��QV0DI��+���=���!�$Ɩ	&F�Տ�W[^����sG�A�1#�̑�JB1UG�(nB=߰�Gˬ���>�8��>��$5^�g4���>͍�u1~]ƍ�ƠI�v���8��E�QDQ���O{�+|E���A=H�����f���D8*���ʱ��7�t��I4 ��T���Cb�s�L�+�יj�-���l=���e�,��������πTT�b,�=÷:��B{j��T;f�B\��ہ�.U9H��pN�&J� h����>]7��O,�'��Q��_�@��0PA�>�i^`=Ug	�(���{K΅��-��n�$a �6���졝�m�i�%8�����f�󘺺���͝�n�<f�2X �GH�;k���҈ђ1���ĉ����_K�Ԥ"�T`2�
��6d�ԡD=:�ӵ�o��eӭ�f���l�|\��ES7lp3G>���T����\y�0d:�!W�F�e��8�C������XE-����g������+hũ*��S�9,��zh�|VS�!
�. ���s���ѩUu��ݷ�R�Un�sA�n��f
s�X��!�Ťr��Gz��2�n���	H�KQ
㥳z�G/P�`�Aǉ"$��S�HG6r�=S�S}�E
m�v�\9��n�z��B!p��ҽ2�h'�GIy	i��W�W
���!��1D%��=����v�Ma2��ӌC`�!�_����=S�.@s�3#�.����Aq�cV�8D���"t,t/�*�NѠ��F��r?}>"��!%k��ΰT^�u�T�:A�Ȅs.$εn<�����J��z�������Uc*���%ja:3��X�%}��}����Ux�⋭���'��}�SJ�E,�Kvm�6gK5޴���k:����`�$a�f 2�5�v3}#��l�͏L�b¦�8�V;\���i��$+��b���@�,EBd>�
(
�"���(I� ���d ��@^��\�x�u$����I{b4C)�8A*m_B��٠���%a� J�!u^Y�ַՉ��ě�T��*!�G�	Z�[ᰣY(����%6%t7=g�j\�F,!��D}ҋ�QK �s0��A^д8$��Q}p~<��P�bŐ6Q}zW"8HŽM
��XÌ��=����۸x�M�]կ:��C{C��P�\�R��z14x�0Ca��������Q� ����� ���ŌB?�884'�C�+�D*Jm1�N��}S���C�	v�AR�߫��=i_I�9�y��bܶY	Q�zY˪�t�Ra��,�@�ٙ����9�=ā������@�f�ݰ�t��m��Z�	�슪h2U�(�Ը��;��U�s�}�AԨ�2@&�q=���w<�����=N�.#�$駧�(Y�P%;^�4�룵�2�.�@�=)hE"�����B����߷����n*�LAI������y\�a���)o�LB��q��3j �
�ǆ9�"cj���ܧ=U�ԇ`sN��{����LO
9�.N-f�'�+�8A�vZ�$*��W��p�("T=�u����^!�}�T/Δ/���y�Ps��+�6�F�Hg��+��6@�m�x-
����; �u`�s(���u��=y��01A&=$Nyә	z�*种ȿC"�o%��p2!��f�%V@)�[@��P]ET��g���`��Y�@���DMa���S�C�>�X`X((H*�����o. #s#��c�}4w��N�]~*����`yWcA���b���^2ɐ�Bk2�Z ��q�Qd�F@PC׼����P��f�ꄲ	e˘.�I纏�Q�=(�@7m:�߮'S��㸲P���r�1��$H��V����5+���O��ͻ<��:TkF��K�T�iy��iAˈ� ]X��Y���������RĴ],:��L3�1����K��'z"`�0+!����*�=$D�L�+q�̄�K�m%�ϋ�8"噊D	�f:�b��E&a�ې�|�[�RS/x�ēD��v�)!;h��G�1����6q�����M=�4��S�p�mZ!vjW�:k�G�5����	�6{I@�"�Y]�8O#t�2tU�B�ܒ��/v-�o�g�e�q���\}2�`��E��T�'tDeW	���a��3��'��l���L�O��x�<�T���F3��iK���3-Inh��Ճ���o�����\M�?d���0��ʑ��S���	
~���}�׋+�T��y�ŜZ�mM�,�D^ ����s7�n����eLW"�HZq�j;��t�LC�'s��J���J��՜�rd�oz��P�9������=�������I%�M��ݖY&�S��s(�.�ό^�c& ��*�����A�Řw�^.ͽ�J

$��¡�XY�s64��$ȭ�T�1T\���3f||�b�Hi�[Ģ�
q�9�
�a	$�r% 1�K��Y~�}fMvh(��	lyط�ݣSU٠8[��d�&W���F�N���H�"!�	��p|y�26��
"�$�a�u�n0P�_i�݈Z��J�8�M�PC1� ��5#�h���7n$�M#��r9��8�N�e��0)t��"��ES�l,q�� ��L� ��EE����<ZA�~~2�eĄ�G�P�H�c#�k{h<:�0iWd�,���d3T�a	bd!n�n��L_���g����%�H�"��c!	~�x��TC�Il@��8���G�P�8�W�6�~��6��� �Y]��J4]��dL ��#�sH�Bw-���^��q��L������X�����p�U#h�����^��yB�r�!��l
C;��iJ,�.SJ���z�b�SNx�c�b�Of2"C�D�|5��g�Q���х@�6�x��7����Az�c{�w��6�r�
����b�GR3�BR10��Q�L)AAP$�_��%z9�H(]�+������1�Y�ɑM> ��-�1E��6<u0Cx�������j�UR,����-U��,��Xhk*{��P���gA��m%��ª���3X$T�E(S�J�X�	�ҹ*�H?�@T�(�5��=0Ј��}���shs(s�1B�c����Mq�2{'Q����v)�+�(�P�������=P�LIǪ��1���[M���'�!w"� �p,�I� Ն���$Q�w�E�e�J)�]\��M��!���A��brC�c[�J�!-Sf(����eX���QET���Mŷ � 5�,!h��;�ӥ����HB��	�0m��;~�a�HU�5F"��w%ߦU
�vb�HtI.E�-�r�cҕ}&,6H&4 '�!E)Ҏ�&	DLjͅF�TL�AXxj����h�i�$A������%l�N�5��)#eR-SZʄ` �����Ƞ4��A��v�5�*Ƃ��`e�{n�>�Y1w���b7�.c$3�m���ԅYT\�*��%��c�"aT�KM��w�9B������~;�'�B}C���}��y	�$�$@��Σ�(����}Gl�2���쥱�(���!F$8	EA��8�|䅔o#�FЂ�y"�"KP�5��>FʳE�n�"�ȱ+$c��@�0j�� �1�!�p�#_Zoq��}.5"�g�){[��o�B�x�K����;��$e�li��K(AEň���]n
ͺ��\/Z�=3���|��[B����$3�'d�%�PS>2�͖��S�V��Z�|\�	Y�F��rΡ�*�цr� �V�lY�PƄ\ߦ�;5e��΁k���Vh��؛6}�	Ȝ�2|�-�"c,�Ed���_
g�zD�/&*lP20u��C���TѤa����tZf�J$%���k6^�-39b ������P������0|^�2���ZƷ�YbeFd�Uڊ��7�΂��~l� �2E
����%ƛ�g�t#xd���=�ym���nh�CӇD�Zf�\�C&����fwWj0L>��a��qV���O��MA"���,��sD�Zkcx6[87�JIz��փ��\nD0;� �TAD��0�~���9��/��7lT��']�³��?Nr���=�=J��°5�����1��5?;5-��'җq��$w�|͂.k�2S�W��<�f�TT&[�r�Ōkd�}�#����m媠��f�[N�Y@���{�M���� p�xWg�<($���]�bbi�����Pt����UO)\� $�H}P9E��w���<}�*�5Z�o��M_4��	�i`�Ѳ�"[��&n�< �Usp������{-�	�6���8�����M���c7�s1�e���w�h�HI5Ct�5E�_�"�;��h*^�d@�ԏ3���!1I�E�:�A�]I�X�%��B2DP�y�~[��4��ϝ���T$�Cg�����cJ��:z"g�y��O4���aC/J=�92���g�禂���������\C�b�e���ϸCw�� ���􀈞�҅��G���ޝ?�@G��R�� )�?���)�6K`