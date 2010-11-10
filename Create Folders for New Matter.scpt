FasdUAS 1.101.10   ��   ��    k             l      ��  ��    � �
	Name: Create Folders for New Matter
	Author: Larry Staton Jr.
	Version: 1.0
	Purpose: Ask the user for the name of the new matter, then create a standard set of folders based on the name of the folder
     � 	 	� 
 	 N a m e :   C r e a t e   F o l d e r s   f o r   N e w   M a t t e r 
 	 A u t h o r :   L a r r y   S t a t o n   J r . 
 	 V e r s i o n :   1 . 0 
 	 P u r p o s e :   A s k   t h e   u s e r   f o r   t h e   n a m e   o f   t h e   n e w   m a t t e r ,   t h e n   c r e a t e   a   s t a n d a r d   s e t   o f   f o l d e r s   b a s e d   o n   t h e   n a m e   o f   t h e   f o l d e r 
   
  
 l     ��������  ��  ��        l     ��  ��    i c How do we get input from a user? We use the "display dialog" command defined in Standard Additions     �   �   H o w   d o   w e   g e t   i n p u t   f r o m   a   u s e r ?   W e   u s e   t h e   " d i s p l a y   d i a l o g "   c o m m a n d   d e f i n e d   i n   S t a n d a r d   A d d i t i o n s      l     ��  ��    6 0 Open up the dictionary for "Standard Additions"     �   `   O p e n   u p   t h e   d i c t i o n a r y   f o r   " S t a n d a r d   A d d i t i o n s "      l     ����  r         n         1    ��
�� 
ttxt  l     ����  I    ��  
�� .sysodlogaskr        TEXT  m          � ! ! & N a m e   o f   n e w   m a t t e r :  �� " #
�� 
dtxt " m     $ $ � % %   # �� & '
�� 
btns & J     ( (  ) * ) m     + + � , ,  C a n c e l *  -�� - m     . . � / /  C r e a t e   f o l d e r s��   ' �� 0 1
�� 
dflt 0 m   	 
����  1 �� 2 3
�� 
cbtn 2 m    ����  3 �� 4��
�� 
appr 4 m     5 5 � 6 6 : C r e a t e   F o l d e r s   f o r   N e w   M a t t e r��  ��  ��    o      ���� 0 matter_name  ��  ��     7 8 7 l     ��������  ��  ��   8  9 : 9 l     �� ; <��   ; I C Time to boss around the Finder, so open up the Finder's dictionary    < � = = �   T i m e   t o   b o s s   a r o u n d   t h e   F i n d e r ,   s o   o p e n   u p   t h e   F i n d e r ' s   d i c t i o n a r y :  > ? > l     �� @ A��   @ ? 9 To boss things around, you tell those things to do stuff    A � B B r   T o   b o s s   t h i n g s   a r o u n d ,   y o u   t e l l   t h o s e   t h i n g s   t o   d o   s t u f f ?  C�� C l  � D���� D O   � E F E k   � G G  H I H l   �� J K��   J D > The enum "startup disk" is defined in the Finder's dictionary    K � L L |   T h e   e n u m   " s t a r t u p   d i s k "   i s   d e f i n e d   i n   t h e   F i n d e r ' s   d i c t i o n a r y I  M N M r    > O P O n    : Q R Q 4   3 :�� S
�� 
cfol S m   6 9 T T � U U  m a t t e r s R n    3 V W V 4   , 3�� X
�� 
cfol X m   / 2 Y Y � Z Z  D r o p b o x W n    , [ \ [ 4   % ,�� ]
�� 
cfol ] m   ( + ^ ^ � _ _  s t a t o n j r \ n    % ` a ` 4    %�� b
�� 
cfol b m   ! $ c c � d d 
 U s e r s a 1    ��
�� 
sdsk P o      ���� 0 project_directory   N  e f e l  ? ?�� g h��   g R L To make a new folder, tell the Finder to "make new folder" at some location    h � i i �   T o   m a k e   a   n e w   f o l d e r ,   t e l l   t h e   F i n d e r   t o   " m a k e   n e w   f o l d e r "   a t   s o m e   l o c a t i o n f  j k j l  ? ?�� l m��   l C = Folders have properties, as shown in the Finder's dictionary    m � n n z   F o l d e r s   h a v e   p r o p e r t i e s ,   a s   s h o w n   i n   t h e   F i n d e r ' s   d i c t i o n a r y k  o p o l  ? ?�� q r��   q @ : One property is the name of the folder, which we set here    r � s s t   O n e   p r o p e r t y   i s   t h e   n a m e   o f   t h e   f o l d e r ,   w h i c h   w e   s e t   h e r e p  t u t l  ? ?�� v w��   v I C We store a reference to this folder in the variable project_folder    w � x x �   W e   s t o r e   a   r e f e r e n c e   t o   t h i s   f o l d e r   i n   t h e   v a r i a b l e   p r o j e c t _ f o l d e r u  y z y r   ? _ { | { I  ? [���� }
�� .corecrel****      � null��   } �� ~ 
�� 
kocl ~ m   C F��
�� 
cfol  �� � �
�� 
insh � o   I L���� 0 project_directory   � �� ���
�� 
prdt � K   O U � � �� ���
�� 
pnam � o   R S���� 0 matter_name  ��  ��   | o      ���� 0 project_folder   z  � � � l  ` `�� � ���   � m g Now tell the Finder to create 3 more folders, this time within the project_folder that we just defined    � � � � �   N o w   t e l l   t h e   F i n d e r   t o   c r e a t e   3   m o r e   f o l d e r s ,   t h i s   t i m e   w i t h i n   t h e   p r o j e c t _ f o l d e r   t h a t   w e   j u s t   d e f i n e d �  � � � r   ` � � � � I  ` ~���� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m   d g��
�� 
cfol � �� � �
�� 
insh � o   j m���� 0 project_folder   � �� ���
�� 
prdt � K   p x � � �� ���
�� 
pnam � m   s v � � � � �  C o r r e s p o n d e n c e��  ��   � o      ���� 0 correspondence_folder   �  � � � r   � � � � � I  � ����� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m   � ���
�� 
cfol � �� � �
�� 
insh � o   � ����� 0 project_folder   � �� ���
�� 
prdt � K   � � � � �� ���
�� 
pnam � m   � � � � � � �  P l e a d i n g s��  ��   � o      ���� 0 pleadings_folder   �  � � � r   � � � � � I  � ����� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m   � ���
�� 
cfol � �� � �
�� 
insh � o   � ����� 0 project_folder   � �� ���
�� 
prdt � K   � � � � �� ���
�� 
pnam � m   � � � � � � �  D i s c o v e r y��  ��   � o      ���� 0 discovery_folder   �  � � � l  � ��� � ���   � #  We can also create new files    � � � � :   W e   c a n   a l s o   c r e a t e   n e w   f i l e s �  � � � l  � ��� � ���   � M G To make new files, tell the Finder to "make new file" at some location    � � � � �   T o   m a k e   n e w   f i l e s ,   t e l l   t h e   F i n d e r   t o   " m a k e   n e w   f i l e "   a t   s o m e   l o c a t i o n �  � � � l  � ��� � ���   � ] W Files also have properties and these properties are defined in the Finder's dictionary    � � � � �   F i l e s   a l s o   h a v e   p r o p e r t i e s   a n d   t h e s e   p r o p e r t i e s   a r e   d e f i n e d   i n   t h e   F i n d e r ' s   d i c t i o n a r y �  � � � I  � ����� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m   � ���
�� 
file � �� � �
�� 
insh � o   � ����� 0 correspondence_folder   � �� ���
�� 
prdt � K   � � � � �� ���
�� 
pnam � m   � � � � � � �  T O D O��  ��   �  � � � I  ����� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m   � ���
�� 
file � �� � �
�� 
insh � o   � ����� 0 pleadings_folder   � �� ���
�� 
prdt � K   �  � � �� ���
�� 
pnam � m   � � � � � � �  T O D O��  ��   �  � � � I %���� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m  ��
�� 
file � �� � �
�� 
insh � o  ���� 0 discovery_folder   � �� ���
�� 
prdt � K   � � �� ���
�� 
pnam � m   � � � � �  T O D O��  ��   �  � � � l &&�� � ���   � $  Let's open our project_folder    � � � � <   L e t ' s   o p e n   o u r   p r o j e c t _ f o l d e r �  � � � I &-�� ���
�� .aevtodocnull  �    alis � o  &)���� 0 project_folder  ��   �  � � � l ..�� � ���   � e _ Now we want to modify the Finder window itself, so we have to boss it around within the Finder    � � � � �   N o w   w e   w a n t   t o   m o d i f y   t h e   F i n d e r   w i n d o w   i t s e l f ,   s o   w e   h a v e   t o   b o s s   i t   a r o u n d   w i t h i n   t h e   F i n d e r �  � � � l ..�� � ���   � ^ X Finder windows have many properties that we can set as shown in the Finder's dictionary    � � � � �   F i n d e r   w i n d o w s   h a v e   m a n y   p r o p e r t i e s   t h a t   w e   c a n   s e t   a s   s h o w n   i n   t h e   F i n d e r ' s   d i c t i o n a r y �  � � � O  .h � � � k  7g � �  � � � r  7@   m  7:��
�� ecvwicnv 1  :?�
� 
pvew �  r  AH m  AB�~
�~ boovfals 1  BG�}
�} 
tbvi  r  IP	 m  IJ�|
�| boovfals	 1  JO�{
�{ 
stvi 

 r  Q_ J  QY  m  QT�z�z d �y m  TW�x�x d�y   1  Y^�w
�w 
posn �v r  `g m  `a�u
�u boovtrue 1  af�t
�t 
pzum�v   � 4  .4�s
�s 
brow o  23�r�r 0 matter_name   �  l ii�q�q   !  Now, a little trickeration    � 6   N o w ,   a   l i t t l e   t r i c k e r a t i o n  l ii�p�p   J D Let's hide all the other applications so only our window is showing    � �   L e t ' s   h i d e   a l l   t h e   o t h e r   a p p l i c a t i o n s   s o   o n l y   o u r   w i n d o w   i s   s h o w i n g  !  l ii�o"#�o  " = 7 The process class comes from the System Events library   # �$$ n   T h e   p r o c e s s   c l a s s   c o m e s   f r o m   t h e   S y s t e m   E v e n t s   l i b r a r y! %&% l ii�n'(�n  ' = 7 Setting the visible process to false hides the process   ( �)) n   S e t t i n g   t h e   v i s i b l e   p r o c e s s   t o   f a l s e   h i d e s   t h e   p r o c e s s& *�m* r  i�+,+ m  ij�l
�l boovfals, 6 j�-.- n  js/0/ 1  os�k
�k 
pvis0 2  jo�j
�j 
prcs. F  v�121 = w�343 1  x|�i
�i 
pvis4 m  }�h
�h boovtrue2 > ��565 1  ���g
�g 
pnam6 m  ��77 �88  F i n d e r�m   F m    99�                                                                                  MACS  alis    r  Macintosh HD               ��GH+     j
Finder.app                                                       �ǰp�        ����  	                CoreServices    ���      ǰ�       j   &   %  3Macintosh HD:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��  ��       �f:;�f  : �e
�e .aevtoappnull  �   � ****; �d<�c�b=>�a
�d .aevtoappnull  �   � ****< k    �??  @@  C�`�`  �c  �b  =  > 4  �_ $�^ + .�]�\�[ 5�Z�Y�X�W9�V�U c ^ Y T�T�S�R�Q�P�O�N�M ��L ��K ��J�I � � ��H�G�F�E�D�C�B�A�@�?�>A7
�_ 
dtxt
�^ 
btns
�] 
dflt
�\ 
cbtn
�[ 
appr�Z 

�Y .sysodlogaskr        TEXT
�X 
ttxt�W 0 matter_name  
�V 
sdsk
�U 
cfol�T 0 project_directory  
�S 
kocl
�R 
insh
�Q 
prdt
�P 
pnam�O 
�N .corecrel****      � null�M 0 project_folder  �L 0 correspondence_folder  �K 0 pleadings_folder  �J 0 discovery_folder  
�I 
file
�H .aevtodocnull  �    alis
�G 
brow
�F ecvwicnv
�E 
pvew
�D 
tbvi
�C 
stvi�B d
�A 
posn
�@ 
pzum
�? 
prcs
�> 
pvisA  �a�������lv�l�k��� �,E�O�v*�,a a /a a /a a /a a /E` O*a a a _ a a �la  E` O*a a a _ a a a la  E` O*a a a _ a a a la  E`  O*a a a _ a a a !la  E` "O*a a #a _ a a a $la  O*a a #a _  a a a %la  O*a a #a _ "a a a &la  O_ j 'O*a (�/ 2a )*a *,FOf*a +,FOf*a ,,FOa -a -lv*a .,FOe*a /,FUOf*a 0-a 1,a 2[[a 1,\Ze8\[a ,\Za 39A1FU ascr  ��ޭ