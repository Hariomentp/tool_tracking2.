PGDMP  *    ,                |            backup_tool_tracking "   14.11 (Ubuntu 14.11-1.pgdg22.04+1)     16.2 (Ubuntu 16.2-1.pgdg22.04+1)     t           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            u           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            v           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            w           1262    59205    backup_tool_tracking    DATABASE     z   CREATE DATABASE backup_tool_tracking WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_IN';
 $   DROP DATABASE backup_tool_tracking;
                postgres    false            �            1259    59241    inlet_master    TABLE     �  CREATE TABLE public.inlet_master (
    uuid character varying(8) NOT NULL,
    batch_id character varying(255) NOT NULL,
    status character varying(20) NOT NULL,
    added_date timestamp with time zone NOT NULL,
    data_json jsonb,
    received_by_id bigint,
    product_id character varying NOT NULL,
    unit_status character varying(20),
    machine character varying(20),
    unit_id character varying(100),
    requisition character varying(50),
    machine_added_date timestamp with time zone,
    resharp_count integer NOT NULL,
    resharped boolean NOT NULL,
    is_insert boolean NOT NULL,
    quantity_per_box integer,
    machine_remove_date timestamp with time zone,
    balancing_report character varying(100),
    drawing character varying(100),
    inspection_report character varying(100),
    box_capacity integer,
    static_quantity integer,
    CONSTRAINT inlet_master_box_capacity_check CHECK ((box_capacity >= 0)),
    CONSTRAINT inlet_master_quantity_per_box_check CHECK ((quantity_per_box >= 0)),
    CONSTRAINT inlet_master_resharp_count_check CHECK ((resharp_count >= 0)),
    CONSTRAINT inlet_master_static_quantity_check CHECK ((static_quantity >= 0))
);
     DROP TABLE public.inlet_master;
       public         heap    postgres    false            q          0    59241    inlet_master 
   TABLE DATA           J  COPY public.inlet_master (uuid, batch_id, status, added_date, data_json, received_by_id, product_id, unit_status, machine, unit_id, requisition, machine_added_date, resharp_count, resharped, is_insert, quantity_per_box, machine_remove_date, balancing_report, drawing, inspection_report, box_capacity, static_quantity) FROM stdin;
    public          postgres    false    222   �       �           2606    59375    inlet_master inlet_master_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.inlet_master
    ADD CONSTRAINT inlet_master_pkey PRIMARY KEY (uuid);
 H   ALTER TABLE ONLY public.inlet_master DROP CONSTRAINT inlet_master_pkey;
       public            postgres    false    222            �           1259    59430     inlet_master_product_id_9558c939    INDEX     _   CREATE INDEX inlet_master_product_id_9558c939 ON public.inlet_master USING btree (product_id);
 4   DROP INDEX public.inlet_master_product_id_9558c939;
       public            postgres    false    222            �           1259    59431 %   inlet_master_product_id_9558c939_like    INDEX     x   CREATE INDEX inlet_master_product_id_9558c939_like ON public.inlet_master USING btree (product_id varchar_pattern_ops);
 9   DROP INDEX public.inlet_master_product_id_9558c939_like;
       public            postgres    false    222            �           1259    59432 $   inlet_master_received_by_id_74e745f6    INDEX     g   CREATE INDEX inlet_master_received_by_id_74e745f6 ON public.inlet_master USING btree (received_by_id);
 8   DROP INDEX public.inlet_master_received_by_id_74e745f6;
       public            postgres    false    222            �           1259    59433    inlet_master_unit_id_af49085b    INDEX     Y   CREATE INDEX inlet_master_unit_id_af49085b ON public.inlet_master USING btree (unit_id);
 1   DROP INDEX public.inlet_master_unit_id_af49085b;
       public            postgres    false    222            �           1259    59434 "   inlet_master_unit_id_af49085b_like    INDEX     r   CREATE INDEX inlet_master_unit_id_af49085b_like ON public.inlet_master USING btree (unit_id varchar_pattern_ops);
 6   DROP INDEX public.inlet_master_unit_id_af49085b_like;
       public            postgres    false    222            �           2606    59500 I   inlet_master inlet_master_product_id_9558c939_fk_inlet_product_product_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.inlet_master
    ADD CONSTRAINT inlet_master_product_id_9558c939_fk_inlet_product_product_id FOREIGN KEY (product_id) REFERENCES public.inlet_product(product_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.inlet_master DROP CONSTRAINT inlet_master_product_id_9558c939_fk_inlet_product_product_id;
       public          postgres    false    222            �           2606    59505 L   inlet_master inlet_master_received_by_id_74e745f6_fk_managment_customuser_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.inlet_master
    ADD CONSTRAINT inlet_master_received_by_id_74e745f6_fk_managment_customuser_id FOREIGN KEY (received_by_id) REFERENCES public.managment_customuser(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.inlet_master DROP CONSTRAINT inlet_master_received_by_id_74e745f6_fk_managment_customuser_id;
       public          postgres    false    222            �           2606    59510 =   inlet_master inlet_master_unit_id_af49085b_fk_units_unit_name    FK CONSTRAINT     �   ALTER TABLE ONLY public.inlet_master
    ADD CONSTRAINT inlet_master_unit_id_af49085b_fk_units_unit_name FOREIGN KEY (unit_id) REFERENCES public.units_unit(name) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY public.inlet_master DROP CONSTRAINT inlet_master_unit_id_af49085b_fk_units_unit_name;
       public          postgres    false    222            q      x������ � �     