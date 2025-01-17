PGDMP                      {            New_dB    16.0    16.0 S    :           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ;           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            <           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            =           1262    25305    New_dB    DATABASE     |   CREATE DATABASE "New_dB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "New_dB";
                postgres    false                        2615    25307    database    SCHEMA        CREATE SCHEMA database;
    DROP SCHEMA database;
                postgres    false            �            1259    26321    Educational_program    TABLE     &  CREATE TABLE database."Educational_program" (
    code_ep integer NOT NULL,
    name character varying(20) NOT NULL,
    code_vector integer NOT NULL,
    start_year date NOT NULL,
    end_year date NOT NULL,
    form_education integer NOT NULL,
    name_unit character varying(20) NOT NULL
);
 +   DROP TABLE database."Educational_program";
       database         heap    postgres    false    5            �            1259    26328 	   classroom    TABLE     �   CREATE TABLE database.classroom (
    code_classroom integer NOT NULL,
    code_place integer NOT NULL,
    placefull integer NOT NULL,
    type_classroom character varying(18) NOT NULL
);
    DROP TABLE database.classroom;
       database         heap    postgres    false    5            �            1259    26333    educational_plan    TABLE     �   CREATE TABLE database.educational_plan (
    code_plan integer NOT NULL,
    code_ep integer NOT NULL,
    set_year date NOT NULL
);
 &   DROP TABLE database.educational_plan;
       database         heap    postgres    false    5            �            1259    26340    exam    TABLE     �   CREATE TABLE database.exam (
    code_subject integer NOT NULL,
    code_teacher integer NOT NULL,
    number_try integer NOT NULL,
    date_exam date,
    code_exam integer NOT NULL,
    code_student integer NOT NULL,
    grade_exam integer NOT NULL
);
    DROP TABLE database.exam;
       database         heap    postgres    false    5            �            1259    26349    getting_grant    TABLE     �   CREATE TABLE database.getting_grant (
    code_grant_get integer NOT NULL,
    code_student integer NOT NULL,
    status_student integer NOT NULL,
    start_date_grant date NOT NULL,
    end_date_grant date NOT NULL,
    code_grant integer
);
 #   DROP TABLE database.getting_grant;
       database         heap    postgres    false    5            �            1259    26354    grant    TABLE     �   CREATE TABLE database."grant" (
    code_grant integer NOT NULL,
    form_grant character varying(20) NOT NULL,
    condition_grant character varying(20) NOT NULL,
    sum integer NOT NULL
);
    DROP TABLE database."grant";
       database         heap    postgres    false    5            �            1259    26359    group    TABLE     �   CREATE TABLE database."group" (
    code_group integer NOT NULL,
    code_plan integer NOT NULL,
    date_start date NOT NULL,
    date_end date NOT NULL
);
    DROP TABLE database."group";
       database         heap    postgres    false    5            �            1259    26364    place    TABLE     m   CREATE TABLE database.place (
    code_place integer NOT NULL,
    address character varying(20) NOT NULL
);
    DROP TABLE database.place;
       database         heap    postgres    false    5            �            1259    26369    schedule_exam    TABLE     �   CREATE TABLE database.schedule_exam (
    code_group integer NOT NULL,
    code_classroom integer NOT NULL,
    date_exam date NOT NULL,
    code_schedule integer NOT NULL,
    code_subject integer NOT NULL,
    code_teacher integer NOT NULL
);
 #   DROP TABLE database.schedule_exam;
       database         heap    postgres    false    5            �            1259    26374    student    TABLE     9  CREATE TABLE database.student (
    code_student integer NOT NULL,
    code_group integer NOT NULL,
    status_sudent character varying(20) NOT NULL,
    course integer NOT NULL,
    surname character varying(20) NOT NULL,
    name character varying(20) NOT NULL,
    middlename character varying(20) NOT NULL
);
    DROP TABLE database.student;
       database         heap    postgres    false    5            �            1259    26379    student_in_group    TABLE     �   CREATE TABLE database.student_in_group (
    code_student integer NOT NULL,
    code_student_group integer NOT NULL,
    code_group integer NOT NULL,
    date_start date NOT NULL,
    date_end date NOT NULL
);
 &   DROP TABLE database.student_in_group;
       database         heap    postgres    false    5            �            1259    26386    subject    TABLE     E  CREATE TABLE database.subject (
    code_subject integer NOT NULL,
    name_subject character varying(20) NOT NULL,
    form_educ integer NOT NULL,
    all_hours integer NOT NULL,
    lab_hours integer NOT NULL,
    lec_hours integer NOT NULL,
    prac_hours integer NOT NULL,
    type_exam character varying(20) NOT NULL
);
    DROP TABLE database.subject;
       database         heap    postgres    false    5            �            1259    26391    subject_in_plan    TABLE     �   CREATE TABLE database.subject_in_plan (
    code_subject integer NOT NULL,
    code_plan integer NOT NULL,
    code_in_educ_plan integer NOT NULL,
    semester smallint NOT NULL,
    code_teacher integer NOT NULL
);
 %   DROP TABLE database.subject_in_plan;
       database         heap    postgres    false    5            �            1259    26398    teacher    TABLE        CREATE TABLE database.teacher (
    code_teacher integer NOT NULL,
    name_unit character varying(20) NOT NULL,
    surname character varying(20) NOT NULL,
    name character varying(20) NOT NULL,
    middlename character varying(20) NOT NULL,
    rank character varying(20) NOT NULL
);
    DROP TABLE database.teacher;
       database         heap    postgres    false    5            �            1259    26403    unit    TABLE     n   CREATE TABLE database.unit (
    name_unit character varying(20) NOT NULL,
    code_place integer NOT NULL
);
    DROP TABLE database.unit;
       database         heap    postgres    false    5            �            1259    26410    vector_study    TABLE     Q   CREATE TABLE database.vector_study (
    "Code_vector_study" integer NOT NULL
);
 "   DROP TABLE database.vector_study;
       database         heap    postgres    false    5            (          0    26321    Educational_program 
   TABLE DATA           ~   COPY database."Educational_program" (code_ep, name, code_vector, start_year, end_year, form_education, name_unit) FROM stdin;
    database          postgres    false    215   ^o       )          0    26328 	   classroom 
   TABLE DATA           \   COPY database.classroom (code_classroom, code_place, placefull, type_classroom) FROM stdin;
    database          postgres    false    216   �o       *          0    26333    educational_plan 
   TABLE DATA           J   COPY database.educational_plan (code_plan, code_ep, set_year) FROM stdin;
    database          postgres    false    217   �o       +          0    26340    exam 
   TABLE DATA           x   COPY database.exam (code_subject, code_teacher, number_try, date_exam, code_exam, code_student, grade_exam) FROM stdin;
    database          postgres    false    218   #p       ,          0    26349    getting_grant 
   TABLE DATA           �   COPY database.getting_grant (code_grant_get, code_student, status_student, start_date_grant, end_date_grant, code_grant) FROM stdin;
    database          postgres    false    219   rp       -          0    26354    grant 
   TABLE DATA           Q   COPY database."grant" (code_grant, form_grant, condition_grant, sum) FROM stdin;
    database          postgres    false    220   �p       .          0    26359    group 
   TABLE DATA           P   COPY database."group" (code_group, code_plan, date_start, date_end) FROM stdin;
    database          postgres    false    221   q       /          0    26364    place 
   TABLE DATA           6   COPY database.place (code_place, address) FROM stdin;
    database          postgres    false    222   =q       0          0    26369    schedule_exam 
   TABLE DATA           {   COPY database.schedule_exam (code_group, code_classroom, date_exam, code_schedule, code_subject, code_teacher) FROM stdin;
    database          postgres    false    223   qq       1          0    26374    student 
   TABLE DATA           o   COPY database.student (code_student, code_group, status_sudent, course, surname, name, middlename) FROM stdin;
    database          postgres    false    224   �q       2          0    26379    student_in_group 
   TABLE DATA           p   COPY database.student_in_group (code_student, code_student_group, code_group, date_start, date_end) FROM stdin;
    database          postgres    false    225    r       3          0    26386    subject 
   TABLE DATA           �   COPY database.subject (code_subject, name_subject, form_educ, all_hours, lab_hours, lec_hours, prac_hours, type_exam) FROM stdin;
    database          postgres    false    226   br       4          0    26391    subject_in_plan 
   TABLE DATA           o   COPY database.subject_in_plan (code_subject, code_plan, code_in_educ_plan, semester, code_teacher) FROM stdin;
    database          postgres    false    227   �r       5          0    26398    teacher 
   TABLE DATA           ]   COPY database.teacher (code_teacher, name_unit, surname, name, middlename, rank) FROM stdin;
    database          postgres    false    228   s       6          0    26403    unit 
   TABLE DATA           7   COPY database.unit (name_unit, code_place) FROM stdin;
    database          postgres    false    229   xs       7          0    26410    vector_study 
   TABLE DATA           =   COPY database.vector_study ("Code_vector_study") FROM stdin;
    database          postgres    false    230   �s       �           2606    26414 "   vector_study Code_vector_study_key 
   CONSTRAINT     u   ALTER TABLE ONLY database.vector_study
    ADD CONSTRAINT "Code_vector_study_key" PRIMARY KEY ("Code_vector_study");
 P   ALTER TABLE ONLY database.vector_study DROP CONSTRAINT "Code_vector_study_key";
       database            postgres    false    230            [           2606    26332    classroom classroom_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY database.classroom
    ADD CONSTRAINT classroom_pkey PRIMARY KEY (code_classroom);
 D   ALTER TABLE ONLY database.classroom DROP CONSTRAINT classroom_pkey;
       database            postgres    false    216            a           2606    26556    exam code_exam_uniq_key 
   CONSTRAINT     Y   ALTER TABLE ONLY database.exam
    ADD CONSTRAINT code_exam_uniq_key UNIQUE (code_exam);
 C   ALTER TABLE ONLY database.exam DROP CONSTRAINT code_exam_uniq_key;
       database            postgres    false    218            h           2606    26358    grant code_grant_key 
   CONSTRAINT     ^   ALTER TABLE ONLY database."grant"
    ADD CONSTRAINT code_grant_key PRIMARY KEY (code_grant);
 B   ALTER TABLE ONLY database."grant" DROP CONSTRAINT code_grant_key;
       database            postgres    false    220            j           2606    26538    grant code_grant_uniq_key 
   CONSTRAINT     ^   ALTER TABLE ONLY database."grant"
    ADD CONSTRAINT code_grant_uniq_key UNIQUE (code_grant);
 G   ALTER TABLE ONLY database."grant" DROP CONSTRAINT code_grant_uniq_key;
       database            postgres    false    220            z           2606    26395 *   subject_in_plan code_in_educ_plan_uniq_key 
   CONSTRAINT     y   ALTER TABLE ONLY database.subject_in_plan
    ADD CONSTRAINT code_in_educ_plan_uniq_key PRIMARY KEY (code_in_educ_plan);
 V   ALTER TABLE ONLY database.subject_in_plan DROP CONSTRAINT code_in_educ_plan_uniq_key;
       database            postgres    false    227            W           2606    26325    Educational_program code_op_key 
   CONSTRAINT     f   ALTER TABLE ONLY database."Educational_program"
    ADD CONSTRAINT code_op_key PRIMARY KEY (code_ep);
 M   ALTER TABLE ONLY database."Educational_program" DROP CONSTRAINT code_op_key;
       database            postgres    false    215            n           2606    26368    place code_place_key 
   CONSTRAINT     \   ALTER TABLE ONLY database.place
    ADD CONSTRAINT code_place_key PRIMARY KEY (code_place);
 @   ALTER TABLE ONLY database.place DROP CONSTRAINT code_place_key;
       database            postgres    false    222            ]           2606    26536 #   educational_plan code_plan_uniq_key 
   CONSTRAINT     e   ALTER TABLE ONLY database.educational_plan
    ADD CONSTRAINT code_plan_uniq_key UNIQUE (code_plan);
 O   ALTER TABLE ONLY database.educational_plan DROP CONSTRAINT code_plan_uniq_key;
       database            postgres    false    217            p           2606    26373    schedule_exam code_schedule 
   CONSTRAINT     f   ALTER TABLE ONLY database.schedule_exam
    ADD CONSTRAINT code_schedule PRIMARY KEY (code_schedule);
 G   ALTER TABLE ONLY database.schedule_exam DROP CONSTRAINT code_schedule;
       database            postgres    false    223            t           2606    26385 '   student_in_group code_student_uniq1_key 
   CONSTRAINT     l   ALTER TABLE ONLY database.student_in_group
    ADD CONSTRAINT code_student_uniq1_key UNIQUE (code_student);
 S   ALTER TABLE ONLY database.student_in_group DROP CONSTRAINT code_student_uniq1_key;
       database            postgres    false    225            r           2606    26378    student code_student_uniq_key 
   CONSTRAINT     g   ALTER TABLE ONLY database.student
    ADD CONSTRAINT code_student_uniq_key PRIMARY KEY (code_student);
 I   ALTER TABLE ONLY database.student DROP CONSTRAINT code_student_uniq_key;
       database            postgres    false    224            x           2606    26390    subject code_subject_key 
   CONSTRAINT     b   ALTER TABLE ONLY database.subject
    ADD CONSTRAINT code_subject_key PRIMARY KEY (code_subject);
 D   ALTER TABLE ONLY database.subject DROP CONSTRAINT code_subject_key;
       database            postgres    false    226            |           2606    26397 %   subject_in_plan code_subject_uniq_key 
   CONSTRAINT     j   ALTER TABLE ONLY database.subject_in_plan
    ADD CONSTRAINT code_subject_uniq_key UNIQUE (code_subject);
 Q   ALTER TABLE ONLY database.subject_in_plan DROP CONSTRAINT code_subject_uniq_key;
       database            postgres    false    227            _           2606    26337 &   educational_plan educational_plan_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY database.educational_plan
    ADD CONSTRAINT educational_plan_pkey PRIMARY KEY (code_plan);
 R   ALTER TABLE ONLY database.educational_plan DROP CONSTRAINT educational_plan_pkey;
       database            postgres    false    217            c           2606    26344    exam exam_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY database.exam
    ADD CONSTRAINT exam_pkey PRIMARY KEY (code_exam);
 :   ALTER TABLE ONLY database.exam DROP CONSTRAINT exam_pkey;
       database            postgres    false    218            e           2606    26353     getting_grant getting_grant_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY database.getting_grant
    ADD CONSTRAINT getting_grant_pkey PRIMARY KEY (code_grant_get);
 L   ALTER TABLE ONLY database.getting_grant DROP CONSTRAINT getting_grant_pkey;
       database            postgres    false    219            l           2606    26363    group group_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY database."group"
    ADD CONSTRAINT group_pkey PRIMARY KEY (code_group);
 >   ALTER TABLE ONLY database."group" DROP CONSTRAINT group_pkey;
       database            postgres    false    221            Y           2606    26327    Educational_program name_unit 
   CONSTRAINT     a   ALTER TABLE ONLY database."Educational_program"
    ADD CONSTRAINT name_unit UNIQUE (name_unit);
 K   ALTER TABLE ONLY database."Educational_program" DROP CONSTRAINT name_unit;
       database            postgres    false    215            �           2606    26407    unit name_unit_key 
   CONSTRAINT     Y   ALTER TABLE ONLY database.unit
    ADD CONSTRAINT name_unit_key PRIMARY KEY (name_unit);
 >   ALTER TABLE ONLY database.unit DROP CONSTRAINT name_unit_key;
       database            postgres    false    229            U           2606    26549    exam number_try_check    CHECK CONSTRAINT     c   ALTER TABLE database.exam
    ADD CONSTRAINT number_try_check CHECK ((number_try <= 3)) NOT VALID;
 <   ALTER TABLE database.exam DROP CONSTRAINT number_try_check;
       database          postgres    false    218    218            v           2606    26383 &   student_in_group student_in_group_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY database.student_in_group
    ADD CONSTRAINT student_in_group_pkey PRIMARY KEY (code_student_group);
 R   ALTER TABLE ONLY database.student_in_group DROP CONSTRAINT student_in_group_pkey;
       database            postgres    false    225            ~           2606    26402    teacher teacher_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY database.teacher
    ADD CONSTRAINT teacher_pkey PRIMARY KEY (code_teacher);
 @   ALTER TABLE ONLY database.teacher DROP CONSTRAINT teacher_pkey;
       database            postgres    false    228            f           1259    26460 
   code_grant    INDEX     F   CREATE INDEX code_grant ON database."grant" USING btree (code_grant);
     DROP INDEX database.code_grant;
       database            postgres    false    220            �           2606    26471 (   schedule_exam code_classroom_foreign_key    FK CONSTRAINT     �   ALTER TABLE ONLY database.schedule_exam
    ADD CONSTRAINT code_classroom_foreign_key FOREIGN KEY (code_classroom) REFERENCES database.classroom(code_classroom) NOT VALID;
 T   ALTER TABLE ONLY database.schedule_exam DROP CONSTRAINT code_classroom_foreign_key;
       database          postgres    false    216    4699    223            �           2606    26430 $   educational_plan code_ep_foreign_key    FK CONSTRAINT     �   ALTER TABLE ONLY database.educational_plan
    ADD CONSTRAINT code_ep_foreign_key FOREIGN KEY (code_ep) REFERENCES database."Educational_program"(code_ep) NOT VALID;
 P   ALTER TABLE ONLY database.educational_plan DROP CONSTRAINT code_ep_foreign_key;
       database          postgres    false    217    4695    215            �           2606    26544 $   getting_grant code_grant_foreign_key    FK CONSTRAINT     �   ALTER TABLE ONLY database.getting_grant
    ADD CONSTRAINT code_grant_foreign_key FOREIGN KEY (code_grant) REFERENCES database."grant"(code_grant) NOT VALID;
 P   ALTER TABLE ONLY database.getting_grant DROP CONSTRAINT code_grant_foreign_key;
       database          postgres    false    220    4712    219            �           2606    26466 $   schedule_exam code_group_foreign_key    FK CONSTRAINT     �   ALTER TABLE ONLY database.schedule_exam
    ADD CONSTRAINT code_group_foreign_key FOREIGN KEY (code_group) REFERENCES database."group"(code_group) NOT VALID;
 P   ALTER TABLE ONLY database.schedule_exam DROP CONSTRAINT code_group_foreign_key;
       database          postgres    false    223    221    4716            �           2606    26496 '   student_in_group code_group_foreign_key    FK CONSTRAINT     �   ALTER TABLE ONLY database.student_in_group
    ADD CONSTRAINT code_group_foreign_key FOREIGN KEY (code_group) REFERENCES database."group"(code_group) NOT VALID;
 S   ALTER TABLE ONLY database.student_in_group DROP CONSTRAINT code_group_foreign_key;
       database          postgres    false    225    221    4716            �           2606    26486    student code_group_out_key    FK CONSTRAINT     �   ALTER TABLE ONLY database.student
    ADD CONSTRAINT code_group_out_key FOREIGN KEY (code_group) REFERENCES database."group"(code_group) NOT VALID;
 F   ALTER TABLE ONLY database.student DROP CONSTRAINT code_group_out_key;
       database          postgres    false    221    4716    224            �           2606    26425    classroom code_place    FK CONSTRAINT     �   ALTER TABLE ONLY database.classroom
    ADD CONSTRAINT code_place FOREIGN KEY (code_place) REFERENCES database.place(code_place);
 @   ALTER TABLE ONLY database.classroom DROP CONSTRAINT code_place;
       database          postgres    false    216    222    4718            �           2606    26516    unit code_place_foreign_key    FK CONSTRAINT     �   ALTER TABLE ONLY database.unit
    ADD CONSTRAINT code_place_foreign_key FOREIGN KEY (code_place) REFERENCES database.place(code_place) NOT VALID;
 G   ALTER TABLE ONLY database.unit DROP CONSTRAINT code_place_foreign_key;
       database          postgres    false    229    222    4718            �           2606    26461    group code_plan_foreign_key    FK CONSTRAINT     �   ALTER TABLE ONLY database."group"
    ADD CONSTRAINT code_plan_foreign_key FOREIGN KEY (code_plan) REFERENCES database.educational_plan(code_plan) NOT VALID;
 I   ALTER TABLE ONLY database."group" DROP CONSTRAINT code_plan_foreign_key;
       database          postgres    false    217    4703    221            �           2606    26506 %   subject_in_plan code_plan_foreign_key    FK CONSTRAINT     �   ALTER TABLE ONLY database.subject_in_plan
    ADD CONSTRAINT code_plan_foreign_key FOREIGN KEY (code_plan) REFERENCES database.educational_plan(code_plan) NOT VALID;
 Q   ALTER TABLE ONLY database.subject_in_plan DROP CONSTRAINT code_plan_foreign_key;
       database          postgres    false    217    227    4703            �           2606    26491 )   student_in_group code_student_foreign_key    FK CONSTRAINT     �   ALTER TABLE ONLY database.student_in_group
    ADD CONSTRAINT code_student_foreign_key FOREIGN KEY (code_student) REFERENCES database.student(code_student) NOT VALID;
 U   ALTER TABLE ONLY database.student_in_group DROP CONSTRAINT code_student_foreign_key;
       database          postgres    false    4722    224    225            �           2606    26530    exam code_student_foreign_key    FK CONSTRAINT     �   ALTER TABLE ONLY database.exam
    ADD CONSTRAINT code_student_foreign_key FOREIGN KEY (code_student) REFERENCES database.student_in_group(code_student) NOT VALID;
 I   ALTER TABLE ONLY database.exam DROP CONSTRAINT code_student_foreign_key;
       database          postgres    false    218    225    4724            �           2606    26450 "   getting_grant code_student_out_key    FK CONSTRAINT     �   ALTER TABLE ONLY database.getting_grant
    ADD CONSTRAINT code_student_out_key FOREIGN KEY (code_student) REFERENCES database.student(code_student) NOT VALID;
 N   ALTER TABLE ONLY database.getting_grant DROP CONSTRAINT code_student_out_key;
       database          postgres    false    219    224    4722            �           2606    26440    exam code_subject_foreign_key    FK CONSTRAINT     �   ALTER TABLE ONLY database.exam
    ADD CONSTRAINT code_subject_foreign_key FOREIGN KEY (code_subject) REFERENCES database.subject_in_plan(code_subject) NOT VALID;
 I   ALTER TABLE ONLY database.exam DROP CONSTRAINT code_subject_foreign_key;
       database          postgres    false    218    227    4732            �           2606    26476 &   schedule_exam code_subject_foreign_key    FK CONSTRAINT     �   ALTER TABLE ONLY database.schedule_exam
    ADD CONSTRAINT code_subject_foreign_key FOREIGN KEY (code_subject) REFERENCES database.subject_in_plan(code_subject) NOT VALID;
 R   ALTER TABLE ONLY database.schedule_exam DROP CONSTRAINT code_subject_foreign_key;
       database          postgres    false    227    4732    223            �           2606    26501 (   subject_in_plan code_subject_foreign_key    FK CONSTRAINT     �   ALTER TABLE ONLY database.subject_in_plan
    ADD CONSTRAINT code_subject_foreign_key FOREIGN KEY (code_subject) REFERENCES database.subject(code_subject) NOT VALID;
 T   ALTER TABLE ONLY database.subject_in_plan DROP CONSTRAINT code_subject_foreign_key;
       database          postgres    false    227    4728    226            �           2606    26435    exam code_teacher_foreign_key    FK CONSTRAINT     �   ALTER TABLE ONLY database.exam
    ADD CONSTRAINT code_teacher_foreign_key FOREIGN KEY (code_subject) REFERENCES database.teacher(code_teacher) NOT VALID;
 I   ALTER TABLE ONLY database.exam DROP CONSTRAINT code_teacher_foreign_key;
       database          postgres    false    4734    218    228            �           2606    26481 &   schedule_exam code_teacher_foreign_key    FK CONSTRAINT     �   ALTER TABLE ONLY database.schedule_exam
    ADD CONSTRAINT code_teacher_foreign_key FOREIGN KEY (code_teacher) REFERENCES database.teacher(code_teacher) NOT VALID;
 R   ALTER TABLE ONLY database.schedule_exam DROP CONSTRAINT code_teacher_foreign_key;
       database          postgres    false    228    4734    223            �           2606    26550 (   subject_in_plan code_teacher_foreign_key    FK CONSTRAINT     �   ALTER TABLE ONLY database.subject_in_plan
    ADD CONSTRAINT code_teacher_foreign_key FOREIGN KEY (code_teacher) REFERENCES database.teacher(code_teacher) NOT VALID;
 T   ALTER TABLE ONLY database.subject_in_plan DROP CONSTRAINT code_teacher_foreign_key;
       database          postgres    false    4734    227    228            �           2606    26415 +   Educational_program code_vector_foreign_key    FK CONSTRAINT     �   ALTER TABLE ONLY database."Educational_program"
    ADD CONSTRAINT code_vector_foreign_key FOREIGN KEY (code_vector) REFERENCES database.vector_study("Code_vector_study") NOT VALID;
 Y   ALTER TABLE ONLY database."Educational_program" DROP CONSTRAINT code_vector_foreign_key;
       database          postgres    false    215    4738    230            �           2606    26420 )   Educational_program name_unit_foreign_key    FK CONSTRAINT     �   ALTER TABLE ONLY database."Educational_program"
    ADD CONSTRAINT name_unit_foreign_key FOREIGN KEY (name_unit) REFERENCES database.unit(name_unit) NOT VALID;
 W   ALTER TABLE ONLY database."Educational_program" DROP CONSTRAINT name_unit_foreign_key;
       database          postgres    false    215    4736    229            �           2606    26511    teacher name_unit_foreign_key    FK CONSTRAINT     �   ALTER TABLE ONLY database.teacher
    ADD CONSTRAINT name_unit_foreign_key FOREIGN KEY (name_unit) REFERENCES database.unit(name_unit) NOT VALID;
 I   ALTER TABLE ONLY database.teacher DROP CONSTRAINT name_unit_foreign_key;
       database          postgres    false    4736    228    229            (   E   x�3����4�4202�50�5�1M�LN'w.#N�_ON#45&P�!g��!�s��K�gW� >j       )   -   x�3�4�440��qu�2�4�42�����F����\1z\\\ �bj      *   #   x�3�4�4202�50�5��2�4D��rc���� �k�      +   ?   x�E̻  C�:������ S�RX�gl7)|L-��ϥ0��?�<PX����      ,   2   x�3�4�4�4202�50�5�Dfsqq�ɚ��\���8e�b���� �*      -   ?   x�3����t��Q0�44 .#�`gN7G_O�H��XА��?�38935/9��,���� ��A      .   *   x�3�4�4202�50�5�1!L.CNC2Ɯ�8db���� DA�      /   $   x�3�t�,���2������2��.��+����� nJ      0   3   x�Eȱ  ���%(6���AҀ��7���n��g��1��*T<��^W	�      1   \   x�3�4�r�ru2\r3K�2Sˠ�J(�_����e�i��������i�阓�]�
T	ad�h�JC�Q�!�.�@��e�y�e`
������� ��$�      2   2   x�uɱ  �9��(I'~��;b�fɁ� �J.�GҰ�C6xȳH^�R�      3   `   x�3�t�K��,��4�46�4�P!��%\F��řɜ��f��`	#N׊�\.CN�Ĝ�Ҝ�b��)H�X,i�错���^	�3K�t��qqq Wy|      4   .   x�3�4�41�\F�F��f���F\�@�� Lr��$M��1z\\\ �N      5   X   x�3���JL�/�L�,��,IML�H-�2���t�L-�q���qs:�se�e&r�s�DM@�މ9�y%�@�T�1z\\\ ��      6      x���4�rr�4�
� 1z\\\ %�4      7      x�3�2�2����� 	]     