use biker_care;
insert into biker_care.app_role(flag_deleted, name_role) values (b'0', 'ROLE_ADMIN');
insert into biker_care.app_role(flag_deleted, name_role) values (b'0', 'ROLE_CUSTOMER');

insert into biker_care.app_user(address, email, flag_deleted, flag_online, full_name, `password`, phone, username)
values
("123 Điện Biên Phủ", "nghiaphan33dn@gmail.com", b'0', b'1', "Nguyễn Phan Xuân Nghĩa", "$2a$12$kMJIhnWIZ28cfOh1yRaY.uutKY1SwlcknfoQVLv7W53T2OvtDi.aS", "0969980926", "nghiaphan"),
("456 Ngô Thì Nhậm", "hiepnguyen1968dn@gmail.com", b'0', b'1', "Nguyễn Hiệp", "$2a$12$kMJIhnWIZ28cfOh1yRaY.uutKY1SwlcknfoQVLv7W53T2OvtDi.aS", "03692213311", "hiepnguyen"),
("159 Nguyễn Huệ", "tranvandu41dn@gmail.com", b'0', b'1', "Trần Văn Dự", "$2a$12$kMJIhnWIZ28cfOh1yRaY.uutKY1SwlcknfoQVLv7W53T2OvtDi.aS", "0147521486", "duvan"),
("68 Nguyễn Hoàng", "vanan@gmail.com", b'0', b'1', "Nguyễn Văn An", "$2a$12$kMJIhnWIZ28cfOh1yRaY.uutKY1SwlcknfoQVLv7W53T2OvtDi.aS", "0452136888", "vanan"),
("68 Bùi Thị Xuân", "huunam@gmail.com", b'0', b'1', "Lê Hữu Nam", "$2a$12$kMJIhnWIZ28cfOh1yRaY.uutKY1SwlcknfoQVLv7W53T2OvtDi.aS", "0854752514", "huunam"),
("99 Quang Trung", "huynhtan@gmail.com", b'0', b'1', "Phạm Huỳnh Tân", "$2a$12$kMJIhnWIZ28cfOh1yRaY.uutKY1SwlcknfoQVLv7W53T2OvtDi.aS", "06545587712", "huynhtan");

insert into biker_care.user_role(app_role_id, app_user_id) values (1, 1);

insert into biker_care.type_product(name_type) values ("Mũ Bảo Hiểm");
insert into biker_care.type_product(name_type) values ("Áo Giáp - Quần Giáp");
insert into biker_care.type_product(name_type) values ("Găng Tay");
insert into biker_care.type_product(name_type) values ("Giày Moto");
insert into biker_care.type_product(name_type) values ("Balo - Túi Givi");
insert into biker_care.type_product(name_type) values ("Áo Mưa Givi");
insert into biker_care.type_product(name_type) values ("Thùng Givi");
insert into biker_care.type_product(name_type) values ("Tai Nghe Bluetooth");



insert into biker_care.product(`description`, flag_deleted, name_product, price, quantity, short_description, id_type) 
values ('Mũ Fullface LS2 Carbon FF805 Thunder được mọi người đánh giá cao về khả năng bảo hộ và giảm khả năng chấn thương cực cao khi xảy ra tai nạn. Được thiết kế từ các kỹ sư và những tay đua moto GP người Tây Ban Nha, nhờ đó mà ra đời những dòng mũ fullface chất lượng uy tín, tân tiến và hiện đại. Mũ Fullface LS2 Carbon FF805 Thunder  được cấu tạp từ 90% sợi carbon, được biết sợi carbon rất bền và chắc càng nhiều carbon thì sản phẩm càng chắc chắn và bền bỉ. Xốp mũ EPS nguyên sinh có độ bền của hạt nhựa EPS rất cao, không những thế nó còn có thể chịu được tác động của ẩm mốc, nhiệt độ và bụi bẩn. Vì thế EPS còn đóng vai trò là “ người bảo vệ” cực kỳ hiệu quả cho các sản phẩm đang trong quá trình lưu thông, vận chuyển. Cách nhiệt cách âm cực kì tốt, trọng lượng lại cực kì nhẹ và có sự kết hợp thêm các rãnh lưu thông khí dọc từ phía trước ra sau và các rãnh ngang hai bên giúp không khí lưu thông liên tục, làm cho người đội không có cảm giác bí khí hay hầm nóng khi đội. Kính FF805 Thunder được làm từ chất liệu Polycarbonate “A class” chịu được va đập tốt  và không làm biến dạng hình ảnh khi chạy vận tốc cao, tầm nhìn rõ, rộng và đặc biệt tránh được tia UV, có thể lắp Pinlock chống hơi thở và động sương khi đội. Phần mút lót của mũ  Fullface LS2 Carbon FF805 Thunder có khả năng kháng khuẩn, hút mồ hôi và dễ dàng cho việc vệ sinh, phần ốp hai bên may thêm viền lụa cao cấp tạo cảm giác êm ái thoái mái. Dây quai được thiết kế chắc chắn khi đội, khóa được làm từ kim loại đảm bảo sự an toàn, đầu thanh còn lại làm bằng nhựa dẻo dễ dàng khi mở, đóng.', b'0', 'Mũ Fullface LS2 Carbon FF805 Thunder', '10900000', 10, 'Mũ Fullface LS2 Carbon FF805 Thunder được cấu tạo bằng sợi Carbon siêu nhẹ và có nhiều công nghệ tân tiến do được làm từ các kỹ sư và tay đua chuyện nghiệp người Tây Ban Nha.', '1');
insert into biker_care.product(`description`, flag_deleted, name_product, price, quantity, short_description, id_type) 
values ('Mũ fullface EGO được nhập chính ngạch và đã qua kiểm định về chất lượng khi về Viêt Nam . Sản phẩm được 1 hành 1 năm tại Bikercare shop và có đầy đủ phụ kiện thay thế. From dáng mũ fullface EGO được thiết kế rất cá tính và cực kì thể thao .
Mũ được làm từ chất liệu ABS nguyên sinh mang lại hiệu xuất mài mòn hiệu quả .
Mút xốp bên trong có thể tháo rời một cách dễ dàng để vệ sinh . ( có mút thay thế M,L, XL, XXL ). Phần thiết kế fullface nguyên khối chắc chắn cứng cáp, đi rất êm không bị gió bật , hấp thụ lực EPS rất tốt đảm bảo độ an toàn cao .
Kính chắn gió được thiết kế cứng cáp , thao tác bật lên xuống dễ dang từng nấc,ngàm kính thiết kế thông mình giúp đóng mở kính một cách dễ dàng. Có thể mua thêm kính màu , trong, khói , vàng với giá 200k kính được làm từ nhựa dẻo khả năng chịu nhiệt cao, tầm nhìn rộng và không làm biến dạng hình ảnh khi đi với vận tốc cao. From dáng của mũ bảo hiểm fullface Ego rất mạnh mẻ, tinh tế, phần kính có rãnh thoáng nước rất tốt , hỗ trợ rất tốt khi đi trong thời tiết mưa gió , hạn chế động nước trên kính .
Khuyến cáo nên đi với tốc 60 đến 80km/h .
Mũ đạt chuẩn DOT là chuẩn Mỹ đã qua kiểm định bài bản , rất an toàn và mang lại nhiều tiện ích cho người dùng .', b'0', 'Mũ Fullface EGO', '1500000', 10, 'Mũ Fullface EGO là dòng mũ fullface với mẫu mã đẹp với from mũ nhỏ gọn rất tiện sử dụng, với mút bên trong được làm từ chất liệu EPS rất dày hỗ trợ an toàn tối đa khi gặp sự cố bất ngờ.', '1');
insert into biker_care.product(`description`, flag_deleted, name_product, price, quantity, short_description, id_type) 
values ('Mũ 3/4 Bulldog Perro  V3 chắc đã không còn xa lạ với các bạn trẻ cá tính, ở bài viết này BIKERCARE SHOP sẽ giải thích vì sao Bulldog lại được ưa chuộng như vậy. Có lẽ đầu tiên Bulldog Helmet là thương hiệu mũ bảo hiểm nổi tiếng của Anh, được sản xuất trên dây chuyền hiện đại đáp ứng tiêu chuẩn an toàn để xuất khẩu thị trường châu Âu. Bulldog 3/4 đậm chất cổ điển và được trau chuốt tỉ mỉ đến từng chi tiết. Phần logo tên thương hiệu được làm bằng đồng không rỉ tạo cảm giác cổ điển và sang trọng. Phần vải lót được làm bằng chất liệu cao cấp kháng khuẩn tự nhiên hạn chế gây mùi. Phần ốp tai, đệm cằm và mút có thể tháo rời để vệ sinh dễ dàng. Mũ bảo hiểm Bulldog được sơn theo công nghệ mới với loại sơn cao cấp đảm bảo độ phủ đều và bề mặt cứng hạn chế trầy xước. Dây mũ và khóa cự kỳ chắc chắn giúp ôm gọn đầu trong mọi trường hợp. Bulldog Perro vượt ra ngoài phạm vị bảo vệ đơn thuần của một chiếc mũ, nó còn đại diện cho phong cách thời trang biker. Với form mũ cổ điển và sự phối màu đa dạng phù hợp với nhiều đối tượng khác nhau. Từng chi tiết được trau chuốt là tiêu chí mà Bulldog muốn khách hàng cảm nhận được trong các sản phẩm mình tung ra.', b'0', 'Mũ bảo hiểm Bulldog PERO V3', '800000', 10, 'Mũ bảo hiểm Bulldog PERO V3 với thiết kể cổ điển , kiểu dáng nhỏ gọn, màu sắc bắt mắt , kết hợp lớp mút cứng bảo vệ bên trọng giúp bạn tự tin và an toàn trong những chuyến phượt xa.', '1');
insert into biker_care.product(`description`, flag_deleted, name_product, price, quantity, short_description, id_type) 
values ('Mũ fullface cào cào LS2 MX701 sợi thủy tinh là một trong những dòng mũ touring được làm từ chất liệu sợi thuỷ tinh (HPFC) cao cấp với đặc tính siêu bền siêu nhẹ, vỏ có trọng lượng 1380±50g không bao gồm phụ kiện. Lớp mút lót của mũ được thiết kế ôm trọn phần đầu, có thể tháo rời và vệ sinh. Ngoài ra, dòng mũ fullface cào cào LS2 MX701 Explorer HPFC còn được trang bị hệ thống tháo mũ khẩn cấp (Emergency System). Hệ thống thông gió có cấu trúc đa kênh giúp việc lưu thông gió dễ dàng không gây nóng bức khi đội mũ fullface, các lỗ thông gió được thiết kế đặc biệt từ dưới cằm đến phía sau mũ. Phần cằm được gia công cố định bởi các đường cắt laser, tại đây có một khe thông gió giúp người đội đẩy hơi thở xuống tránh làm mờ kính chắn gió. Mũ fullface cào cào LS2 MX701 sợi thủy tinh được bao quanh bởi những góc cạnh mạnh mẽ. Từ phần cằm đến chóp mũ đều là những cạnh cong vút như được mài dũa. Phần cằm cong xuống như mỏ của con chim đại bàng, kiêu hãnh và hoang dại. Phần chóp cào cào được thiết kế với ra phía trước cong vút che chắn phần đầu khi chạy đường địa hình. Phần kính chắn gió của mũ fullface cào cào LS2 MX701 có khả năng chịu lực tốt, có thể gắn được Pinlock Max Vision (Bản lớn). LS2 tinh tế khi thiết kế phần kính râm che nắng gần sát với phần che mũi để tăng tầm nhìn tối đa. Phần kính chắn gió khi kéo lên hài hòa với phần đầu cào cào không gây cảm giác vướng víu hay khó kéo lên.', b'0', 'Mũ Ls2 Dual Sport MX701', '7600000', 7, 'Mũ Ls2 Dual Sport MX701 được cấu tạo bằng sợi thủy tinh, thiết kế chuyên dụng và sử dụng cho những tay đua lái xe địa hình, với kiểu dáng nhỏ gọn tiện dụng cho tất cả dáng người.', '1');
insert into biker_care.product(`description`, flag_deleted, name_product, price, quantity, short_description, id_type) 
values ('MŨ FULLFACE YOHE 978 Plus  được làm từ nhựa ABS nguyên sinh  (Nhựa ABS nguyên sinh  là chất liệu mới được gia công cho nhiều đồ có khả năng chịu va đập tốt)  chống va đập và mài mòn cao, có khả năng phân tán và hấp thụ lực một cách tốt nhất bảo vệ an toàn tối ưu cho người vận hành. From mũ được thiết kế thể thao, nhỏ gọn tiện dụng kết hợp đuôi gió zin mang vẻ đẹp cá tính mà không cần chế hay độ. Khe hút gió của mũ yohe 978 Plus được trang bị ở cằm và đỉnh đầu được sử dụng rất dễ dàng và khe hút gió được thiết kế bảng to phía sau giúp hút xả gió một cách tối ưu và tránh bị hầm đầu khi sử dụng. Phần kính trắng mũ fullface yohe 978 Plus có công dụng giảm tốc , tránh côn trùng và bụi bẩn  khi các bạn đi cả ngày dài mà không làm biến dạng về hình ảnh khi đi với vấn tốc cao. Kính chắn ngoài đạt chuẩn Châu Âu E1, bên cạnh đó phần kính này còn được trang bị phần rìa trái và rìa phải nhô ra ngay mũi kính giúp tiện cho việc đống hay lật mũ một cách dễ dàng, tiện dụng cho người thuận tay trái lẫn tay phải. Khóa và dây quai của Fullface yohe 978 Plus được gia công chắc chắn và cứng cáp với khóa khóa được gia công bằng hợp kim hạn chế rỉ sét , bền bỉ giúp đống mở khóa một cách dễ dàng và toàn diện nhất, hỗ trợ các bạn tự tin đi với vận tốc cao.', b'0', 'Mũ FULLFACE YOHE 978 Plus', '1400000', 7, 'Mũ FULLFACE YOHE 978 Plus với kiểu dáng thể thao, gọn nhẹ hỗ trợ bạn một cách tốt nhất khi vận hành, được làm từ nhựa ABS nguyên sinh chống va đập và chống mài mòn cao, hỗ trợ an toàn trong những chuyến đi dài.', '1');
insert into biker_care.product(`description`, flag_deleted, name_product, price, quantity, short_description, id_type) 
values ('Áo giáp Taichi RSJ 721 được thiết kế theo kiểu dáng đơn giản thích hợp cho mọi dòng xe, đặt biệt là các dòng xe Touring, ADV. Chất liệu DRYMASTER có trên áo giáp Taichi RSJ 721 có khả năng chống nước từ 4-6h liên tục, áo còn được trang bị khóa kéo chống nước, kết hợp với ngăn đóng mở thoáng khí ở phần ngực và phía sau lưng mang lại sự thoải mái và thoáng khi cao khi di chuyển đến những vùng có khí hậu nóng. Logo TAICHI được in ở các vị trí như phần ngực, lưng và ở 2 bên tay áo, kết hợp với chi tiết phản quang giúp việc di chuyển vào ban đêm một cách an toàn hơn. Phía trước áo còn được trang bị thêm 2 ngăn túi và 1 ngăn túi to ở phía sau lưng, túi được thiết kế rộng rải, thoải mái giúp để các đồ vật dụng một cách thoải mái hơn. Phần eo áo được thiết kế thêm phần dây đai nới rộng hoặc thắt gọn lại theo dáng người mặc, giúp người mặc cảm giác thoải mái và dễ chịu hơn. Cấu tạo giáp vai và khuỷu tay theo chứng chỉ an toàn chất lượng CE Level 2 được trang bị trên áo giáp Taichi RSJ 721. Áo giáp TAICHI RSJ 721 còn được trang bị thêm lớp áo lót để giữ ấm cho anh em khi đi vào buổi sáng hoặc đến những nơi có khí hậu lạnh, có thể tháo rời phần áo lót trong để mặc như một chiếc áo giữ ấm bình thường.', b'0', 'ÁO GIÁP TOURING TAICHI RSJ721 DRYMASTER', '6460000', 7, 'ÁO GIÁP TOURING TAICHI RSJ721 DRYMASTER là dòng áo giáp có thể đi được nhiều điều kiện thời tiết, có khả năng chống nước là 10000mm chống nước tuyệt đối, khả năng thoát mồ hôi 8000g/24h.', '2');
insert into biker_care.product(`description`, flag_deleted, name_product, price, quantity, short_description, id_type) 
values ('Quần bảo hộ Taichi RSY 258 với chất liệu vải co giản, nhằm tạo cảm giác thoải mái cho người sử dụng, kết hợp tính năng Quick Dry mau khô tiện lợi khi đi phượt. Form quần bảo hộ Taichi RSY 258 được thiết kết theo dáng người Châu á, được trang bị thêm 4 túi dọc theo phần ống quần hỗ trợ người dùng có thể mang những vật dụng cần thiết. Phù hợp cho tất cả các dòng xe máy, moto, có thể sử dụng đi trong nội thành hoặc những tour dài, phía sau ống quần bảo hộ Taichi RSY 258 có thêm phần phản quang để tăng độ an toàn khi đi đêm. Phần giáp bảo hộ của Taichi RSY 258 đạt chuẩn an toàn CE Level 2 được trang bị ở vị trí đầu gối và hông.', b'0', 'Quần giáp khô nhanh Taichi RSY-258', '2720000', 7, 'Quần giáp khô nhanh Taichi RSY-258 có thể chống được mưa nhẹ, và khô nhanh, chất liệu vải có thể co giản, tạo cảm giác thoải mái cho người mặc, giáp bảo vệ phần hông và đầu gối, đạt chuẩn CE LV2, có phản quang, giúp đi đêm an toàn hơn.', '2');
insert into biker_care.product(`description`, flag_deleted, name_product, price, quantity, short_description, id_type) 
values ('Áo giáp Komine JK-1143 là chiếc áo hoodie – áo khoác có mũ trùm đầu chuyên dụng đi moto, xe máy an toàn, với chất liệu vải Textile và dạng lưới Mesh thông thoáng thích hợp với khí hậu nóng ẩm Việt Nam. Form áo giáp Komine JK-1143 chuẩn form cho người Châu Á đảm bảo an toàn, thoải mái, kết hợp phần mũ trùm đầu thời trang, có thể tháo rời để giúp áo gọn hơn khi di chuyển bằng xe moto, xe máy. Áo giáp Komine JK-1143 được trang bị các chi tiết phản quang hỗ trợ người mặc có thể di chuyển vào ban đêm một cách an toàn nhất, các chi tiết hoa văn 3D độc đáo được in trên ngực thêm phần nổi bật cho áo. Trên áo giáp Komine JK-1143 có đầy đủ các bộ phận bảo vệ thiết yếu như: giáp lưng, giáp tay, giáp khuỷa tay và giáp ngực có thể tháo rời để vệ sinh hoặc thay mới khi cần thiết. Giáp đều đạt chuẩn an toàn CE Standard, mút lưng bằng đệm EVA thoáng khí. Ngoài ra, áo giáp Komine JK-1143 còn được trang bị tem chống hàng giả 4D Hologram đặt biệt.', b'0', 'Áo giáp komine JK 1143', '2800000', 7, 'Áo giáp komine JK 1143 được thiết kế hơi hướng thời trang nhằm tăng tính thẩm mỹ nhưng vẫn được trang bị đày đủ giáp ở vai, lưng, ngực và khuỷu tay nhằm đảm bảo an toàn khi đi tour.', '2');
insert into biker_care.product(`description`, flag_deleted, name_product, price, quantity, short_description, id_type) 
values ('Găng tay moto Alpinestars  SMX- 2 AIR CARBON V2 được gia công bằng da cao cấp kết hợp lưới 3D tạo độ thông khả năng thoáng, Gù Carbon có khả năng chống mài mòn, độ bền tối ưu giúp bạn tránh được những va đập cũng như sự cố bất ngờ. Bề mặt lưới 3D trêm các ngón tay giúp thông thoáng khí khi sử dụng cả ngày. Lớp da lộn tổng hợp được trang bị dưới lòng bàn tay, ngón tay tăng khả năng bám lái và chống mài mòn cao. Găng tay moto Alpinestars Smx-2 Air Carbon V2 còn thiết kế lớp gù carbon kèm logo Apinestars ôm trọn xương tay tránh được những tác động mạnh và tăng tính thẩm mỹ. Nhiều mảng lưới trên ngón tay giúp hấp thụ không khí tốt cảm giác thoải mái hơn khi cầm lái. Phần cổ tay được thiết kế nổi lên kết hợp dây đai nịt chắc chắn có thể điều chỉnh theo kính cỡ tay giúp thoải mái và tự tin khi vận hành. Được thiết kế thông minh có thể sử dụng với điện thoại cảm ứng và GPS. Bên hông các ngón tay được gia công bằng lớp vải co giản tốt giúp linh hoạt khi lái xe.', b'0', 'Găng Tay Alpinestars SMX-2 AIR CARBON V2', '2249000', 7, 'Găng Tay Alpinestars SMX-2 AIR CARBON V2 được cấu tạo bằng da cao cấp kết hợp dù lưới thoáng khí, gù Carbon bảo hộ an toàn tối ưu, phù hợp cho anh em đi tour dài ngày.', '3');
insert into biker_care.product(`description`, flag_deleted, name_product, price, quantity, short_description, id_type) 
values ('Găng tay Taichi RST 448 có phần gù carbon bảo vệ đôi tay bạn tối đa nhất có thể với thiết kế dày dặn, chắc chắn, thừa hưởng những tính năng trên găng tay đua. Khả năng thoáng khí tốt hơn với lưới được trang bị giữa các ngón tay, đặt biệt gù trên mu bàn tay được làm tinh xảo kết hợp với đường dây da mang logo Taichi tinh tế. Phần mép ngoài của găng tay Taichi RST448 được gia cố thêm màng da dày giúp tăng khả năng chịu mài mòn ma sát, giảm lực va đập. Lớp da dưới lòng găng tay Taichi RST 448 được thiết kế liền lạc, những vị trí chịu va đập và ma sát cao được làm dày hơn, các đường chỉ được may kĩ và bố trí cẩn thận nhằm giảm rủi ro bị mài đứt chỉ khi trượt trên mặt đường. Cổ tay cũng được kéo dài và có gù carbon bảo vệ xương cổ tay, ở vị trí các ngón tay sử dụng chất liệu vải co giãn giúp người mang có thể cầm nắm tay lái thoải mái hơn.', b'0', 'Găng tay TAICHI RST-448', '1350000', 7, 'Găng tay TAICHI RST-448 là sự kết hợp giữa chất liệu vải và da, đồng thời găng vẫn được hãng Taichi duy trì khả năng bảo hộ tiêu chuẩn Nhật Bản với hệ thống gù chất lượng cao từ vật liệu Carbon cực kỳ cao cấp.', '3');
insert into biker_care.product(`description`, flag_deleted, name_product, price, quantity, short_description, id_type) 
values ('Găng tay mô tô LS2 Dart Man được làm từ chất liệu chính là 80% sợi   Polyamide với đặc tính chống ma sát cao, trọng lượng nhẹ, thoáng khí cùng với 15% Polyurthane có đặc tính chịu mài mòn tốt, chống bám dầu mỡ, không bị kéo xé, chịu được tác động của thời tiết tốt và 5% Spandex được thiết kế ở những điểm thường xuyên của động khi lái xe mang lại sự co giãn tốt cho găng. Găng tay LS2 Dart Man đạt tiêu chuẩn EN420:2003+A1:2009 và EN13594:2015 của European. Là tiêu chuẩn phù hợp cho việc vận hành xe hàng ngày. LS2 Dart được trang bị phần gù bảo vệ ở mu và lòng bàn tay là những điểm trọng yếu dễ xảy ra chấn thương khi sự cố xảy ra ở vùng bàn tay. Phần ngón trỏ và ngón cái của LS2 Dart được trang bị một lớp vải cảm ứng giúp dễ dàng dùng điện thoại tìm kiếm đường hoặc những tiện ích khác. Dây quai bao tay LS2 được thiết kế chắc chắn có thể điều chỉnh mang lại sự thoải mái, vừa vặn và ngăn việc tuột găng tay khi gặp sự cố. Phần vải quanh ngón và cổ tay được may từ chất liệu Spandex co giãn nên khá dễ dàng khi mang và tháo găng. Được làm từ các vật liệu thoáng khí nên găng tay mô tô LS2 Dart mang lại sự thoải mái, thoải mái rất phù hợp với điều kiện thời tiết tại Việt Nam. Logo thương hiệu LS2 ở đầu ngón trỏ, gù bảo vệ ở lòng bàn tay, mu bàn tay và nịt dán rất đẹp mắt.', b'0', 'Găng tay mô tô LS2 DART', '650000', 7, 'Găng tay mô tô LS2 DART với thiết kế gọn nhẹ hiện đại đến từ LS2 Tây Ban Nha. Găng tay LS2 với gù bảo hộ đầy đủ ở những phần trọng yếu và làm từ chất liệu thoáng khí rất phù hợp với thời tiết tại Việt Nam.', '3');
insert into biker_care.product(`description`, flag_deleted, name_product, price, quantity, short_description, id_type) 
values ('Găng tay mô tô EGO dài ngón được làm từ chất liệu vải dù kết hợp lưới tạo cảm giác thông thoáng và thoải mái khi sử dụng. Với thiết kế full ngón hỗ trợ người dùng một cách linh hoạt nhất có thể , phần xương tay được trang bị thêm gù bảo hộ giúp bạn bảo vệ bạn an toàn trong những chuyến đi. Bên hông ngón tay còn được trang bị phần thun co giãn tạo sự linh hoạt và thoải mái khi vận hành. Trên cổ tay và miếng dán  được in logo EGO rất đẹp mắt và sắc xảo. Lòng bàn tay được gia công một lớp da lộn giúp bám lái một cách tối ưu nhất, ngoài ra găng tay EGO còn trang bị  cho tất cả đầu ngón tay đều có thể cảm ứng điện thoại một cách dễ dàng nhất, thuận tiện cho anh em trong  việc xem bản đồ để đi phượt xa nhé. Rất mong những chuyến đi xa để có thể tận hưởng được cái nắng gió bụi đường , giải tỏa được căng thẳng sau những ngày làm việc mệt mỏi, hãy để những kỳ nghĩ của bạn thật thú vị, vậy nên hay trang bị đầy đủ đồ bảo hộ chất lượng nhất cho bản thân để có thể tận hưởng những gì tốt nhất nhé.', b'0', 'Găng tay mô tô EGO dài ngón', '180000', 7, 'Găng tay mô tô EGO dài ngón được thiết kế gọn nhẹ có gù bảo vệ giupsp bảo vệ tối ưu khi đi phượt cũng như đô thị, ngoài ra bao tay EGO còn có thể sử dụng điện thoại cảm ứng rất mượt mà thuận tiện cho dò đường và định vị GPS', '3');
insert into biker_care.product(`description`, flag_deleted, name_product, price, quantity, short_description, id_type) 
values ('Giày moto Alpinestars Ran chống nước được nâng cấp từ giày Alpinetsars SMX-1r nhằm tăng khả năng bảo hộ và nhiều tính năng khác để thích hợp cho form chân của anh em biker Việt Nam. Giày alpinestars Ran được cấu tạo bằng da tổng hợp mềm, bền bỉ, gọn nhẹ và rất dễ dàng vệ sinh. Form dáng được thiết kế phù hợp dành cho người châu á. Logo alpinestars được in, làm ẩn rất bắt mắt. Phần gù bảo hộ bên mũi chân đã được làm mỏng hơn nhưng vẫn đảm bảo khả năng chống mài mòn khi gặp sự cố. Mũi giày mô tô alpinestars Ran được làm rất gọn, bên trong là composite cứng cáp. Giày alpinetsars Ran gia công phần đá số nằm đúng chỗ anh em hay đá số luôn nếu như những mẫu trước thì phần đá số sẽ lệch lên phía trên. Giày bảo hộ mô tô Alpinetsars Ran có khả năng chống nước. Drystars là công nghệ độc quyền của Alpinestars có khả năng chống nước nhưng vẫn mang lại sự thông thoáng khí nhờ có hệ thống hút gió ở phía trước và xả gió ra ở bên hông giày. Ngoài phần nịt dán bên ngoài thì giày moto alpinestars ran còn có trang bị thêm dây cột giày ở bên trong rất dễ dàng thao tác kéo lên hoặc xuống kể cả anh em biker có mang găng tay, giày còn có trang bị thêm Lace Gara để bỏ phần dây giày còn dư nhằm không bị rớt ra khi mình đi vận tốc cao. Phần đế của giày mô tô Alpinestars Ran là đế cao su rất nhám, khi anh em đè của thì phần đế sẽ giúp bám vào cần gác chân hơn, dưới đế giày được trang bị thêm logo của alpinestars rất đẹp mắt.', b'0', 'Giày moto Alpinestars Ran', '4890000', 7, 'Giày moto Alpinestars Ran chống nước được thiết kế vừa vặn với người châu Á với Màng chống thấm nước DRYSTAR® độc quyền từ Alpinestars giúp giày thoáng khí và chống thấm tốt. với giáp được trang bị đầy đủ giúp bảo vệ những phần trọng yếu ở chân.', '3'),
('Giày LS2 ACRUX với chất liệu bền bỉ được làm da tổng hợp, da thật chất lượng cao, có khả năng chống trượt và chống thấm, chất liệu này giúp bảo vệ chân khỏi các tác động của nước và các chất lỏng khác. Phần đế của giày LS2 ACRUX được làm từ cao su chất lượng cao, có độ bám và độ cách điện tốt, đế có thiết kế chống trượt, chống mài mòn, giúp người dùng có thể sử dụng di chuyển trên các loại bề mặt khác nhau. Bên cạnh đó, giày LS2 ACRUX còn có cách tính năng bảo vệ nhờ nhựa bảo hộ TPU bền bỉ, giúp chống trượt, chịu mài mòn và chịu lực tốt, đế thoáng khí và hút mồ hôi, mang lại cho người dùng trải nghiệm tốt nhất. Tóm lại, giày LS2 ACRUX là dòng sản phẩm chất lượng cao, được thiết kế chuyên dụng để đảm bảo an toàn và thoải mái cho người dùng trong khi điều khiển xe moto, xe gắn máy.', b'0', 'Giày Moto Ls2 ACRUX', '2790000', 7, 'Giày Moto Ls2 ACRUX form dáng gọn nhẹ tiện dụng cho anh em vừa có thể chạy xe vừa có thể đi bộ, giày bảo hộ LS2 Acrux Man có đầy đủ các tính năng bảo vệ cần thiết để đảm bảo sự an toàn cho chân của bạn trong mọi tình huống.', '3');

insert into biker_care.image(image_path, id_product) 
values ("https://firebasestorage.googleapis.com/v0/b/my-app-83bf7.appspot.com/o/biker-care%2Fproduct%2Fmu-bao-ho%2Fmu-ls2-carbon-thunder%2Fmu-ls2-ff327-carobn-chinh-hang-gia-re-q11.webp?alt=media&token=bb8b8b28-0c15-4eef-b4a4-e7df599893ea", "1"),
("https://firebasestorage.googleapis.com/v0/b/my-app-83bf7.appspot.com/o/biker-care%2Fproduct%2Fmu-bao-ho%2Fmu-ls2-carbon-thunder%2Fmu-ls2-lat-ham-ff901-carbon.webp?alt=media&token=6cd4adc4-e69e-45cd-ad37-759a9ebcfa38", "1"),
("https://firebasestorage.googleapis.com/v0/b/my-app-83bf7.appspot.com/o/biker-care%2Fproduct%2Fmu-bao-ho%2Fmu-ls2-carbon-thunder%2Fmu-fullface-ls2-thunder-ff805.webp?alt=media&token=e997043e-b18f-44ba-8f79-af554d48a62f", "1"),
("https://firebasestorage.googleapis.com/v0/b/my-app-83bf7.appspot.com/o/biker-care%2Fproduct%2Fmu-bao-ho%2Fmu-fullface-ego%2Fmu-fullface-ego-xanh-hcm-chinh-hang.webp?alt=media&token=94e6b643-e01f-40a3-824e-4040ca58b17f", "2"),
("https://firebasestorage.googleapis.com/v0/b/my-app-83bf7.appspot.com/o/biker-care%2Fproduct%2Fmu-bao-ho%2Fmu-fullface-ego%2Fmu-fullface-ego-chinh-hang-gia-re.webp?alt=media&token=0b064f86-e7af-4f14-8d06-fc62d3b9c7ff", "2"),
("https://firebasestorage.googleapis.com/v0/b/my-app-83bf7.appspot.com/o/biker-care%2Fproduct%2Fmu-bao-ho%2Fmu-fullface-ego%2Ffullface-ego-quan-12.webp?alt=media&token=4e5609a3-8204-4a4c-9fbd-52583f7914ed", "2"),
("https://firebasestorage.googleapis.com/v0/b/my-app-83bf7.appspot.com/o/biker-care%2Fproduct%2Fmu-bao-ho%2Fmu-fullface-ego%2Ffullface-ego-e7-gia-re-quan-12.webp?alt=media&token=ac24cab2-d135-4857-b815-7da3ec31cead", "2"),
("https://firebasestorage.googleapis.com/v0/b/my-app-83bf7.appspot.com/o/biker-care%2Fproduct%2Fmu-bao-ho%2Fmu-bulldog%2Fmu-bulldog-pom.webp?alt=media&token=37f52421-6be6-474b-a508-c72893e3bdde", "3"),
("https://firebasestorage.googleapis.com/v0/b/my-app-83bf7.appspot.com/o/biker-care%2Fproduct%2Fmu-bao-ho%2Fmu-bulldog%2Fmu-bulldog-perro-v3-hcm.webp?alt=media&token=75e7aab4-b8fc-4e2d-9657-d9d72c6d29a7", "3"),
("https://firebasestorage.googleapis.com/v0/b/my-app-83bf7.appspot.com/o/biker-care%2Fproduct%2Fmu-bao-ho%2Fmu-bulldog%2Fmu-bulldog-heli-fiberglass-hcm.webp?alt=media&token=8ac55e8e-7934-4bf0-85c3-d43b754cce7b", "3"),
("https://firebasestorage.googleapis.com/v0/b/my-app-83bf7.appspot.com/o/biker-care%2Fproduct%2Fmu-bao-ho%2Fmu-bulldog%2Fbulldog-perro-4u.webp?alt=media&token=37a173da-fd90-4d99-8dbb-15b0321f7e02", "3"),
("https://firebasestorage.googleapis.com/v0/b/my-app-83bf7.appspot.com/o/biker-care%2Fproduct%2Fmu-bao-ho%2Fmu-ls2-carbon-thunder%2Fmu-ls2-cao-cao-mx703x-froce-carbon-chinh-hang-gia-re-q11.webp?alt=media&token=e41fccd0-c994-4f49-ab24-703dbdb6c6f4", "4"),
("https://firebasestorage.googleapis.com/v0/b/my-app-83bf7.appspot.com/o/biker-care%2Fproduct%2Fmu-bao-ho%2Fmu-ls2-carbon-thunder%2Fmu-ls2-cao-cao-mx703x-froce-carbon-chinh-hang-gia-re-hcm.webp?alt=media&token=cea49575-de67-4b00-ad88-ff49ee468aa5", "4"),
("https://firebasestorage.googleapis.com/v0/b/my-app-83bf7.appspot.com/o/biker-care%2Fproduct%2Fmu-bao-ho%2Fmu-fullface-yohe%2Ffullface-yohe-981-gia-re-quan-12.webp?alt=media&token=ee4bc97c-b07a-43cb-86ed-b8283642b5ec", "5"),
("https://firebasestorage.googleapis.com/v0/b/my-app-83bf7.appspot.com/o/biker-care%2Fproduct%2Fmu-bao-ho%2Fmu-fullface-yohe%2Ffullface-yohe-978-plus-gia-re-quan-12.webp?alt=media&token=9c23950d-d731-4f61-96f5-8e7044c48849", "5"),
("https://firebasestorage.googleapis.com/v0/b/my-app-83bf7.appspot.com/o/biker-care%2Fproduct%2Fmu-bao-ho%2Fmu-fullface-yohe%2Ffullface-yohe-978-gia-re-quan-12.webp?alt=media&token=c3dfd07a-7511-4aa7-a2bb-f2d8fd6c6792", "5"),
("https://firebasestorage.googleapis.com/v0/b/my-app-83bf7.appspot.com/o/biker-care%2Fproduct%2Fmu-bao-ho%2Fmu-fullface-yohe%2Ffullface-yohe-977-gia-re-quan-12.webp?alt=media&token=9fd8aff0-cd63-4378-a14d-3e481e76942c", "5"),
("https://firebasestorage.googleapis.com/v0/b/my-app-83bf7.appspot.com/o/biker-care%2Fproduct%2Fao-giap-quan-giap%2Fao-taichi%2Fao-giap-taichi-rsj-729-chinh-hang-gia-re.webp?alt=media&token=46082103-7cee-416f-a806-51920b50f10f", "6"),
("https://firebasestorage.googleapis.com/v0/b/my-app-83bf7.appspot.com/o/biker-care%2Fproduct%2Fao-giap-quan-giap%2Fao-taichi%2Fao-giap-taichi-rsj-341-chinh-hang-q11.webp?alt=media&token=6cab461f-0a66-4073-858a-918c2b495e35", "6"),
("https://firebasestorage.googleapis.com/v0/b/my-app-83bf7.appspot.com/o/biker-care%2Fproduct%2Fao-giap-quan-giap%2Fao-taichi%2Fao-giap-taichi-racer-mesh-rsj325-chinh-hang.webp?alt=media&token=6125c599-aee7-41f2-8ac5-6571384c6c2d", "6"),
("https://firebasestorage.googleapis.com/v0/b/my-app-83bf7.appspot.com/o/biker-care%2Fproduct%2Fao-giap-quan-giap%2Fao-taichi%2Fao-giap-taichi-ignition-rsj322-chinh-hang.webp?alt=media&token=ab430b1f-98bb-4953-8ed6-264c3de9ea8f", "6"),
("https://firebasestorage.googleapis.com/v0/b/my-app-83bf7.appspot.com/o/biker-care%2Fproduct%2Fao-giap-quan-giap%2Fao-taichi%2Fao-giap-taichi-crossover-rsj320.webp?alt=media&token=f4b9da1f-7dc0-4215-a7c6-a0692aedc688", "6"),
("https://firebasestorage.googleapis.com/v0/b/my-app-83bf7.appspot.com/o/biker-care%2Fproduct%2Fgang-tay-alpinestar%2Fgang-tay-alpinestars-smx-1-v2.webp?alt=media&token=b3bb80df-2f38-47f5-9537-b6231e0c0afb", "9"),
("https://firebasestorage.googleapis.com/v0/b/my-app-83bf7.appspot.com/o/biker-care%2Fproduct%2Fgang-tay-alpinestar%2Fgang-tay-alpinestars-reef-chinh-hang.webp?alt=media&token=463d848b-2d4f-4e0f-83ba-9e5f9e2bffe9", "9"),
("https://firebasestorage.googleapis.com/v0/b/my-app-83bf7.appspot.com/o/biker-care%2Fproduct%2Fgang-tay-alpinestar%2Fgang-tay-alpinestars-intertial-quan-go-vap.webp?alt=media&token=9cfc969b-1352-4c43-8ea0-792fd76c84e5", "9"),
("https://firebasestorage.googleapis.com/v0/b/my-app-83bf7.appspot.com/o/biker-care%2Fproduct%2Fgang-tay-alpinestar%2Fgang-tay-alpinestars-crossland-hcm.webp?alt=media&token=17750929-b83c-49de-9a70-87220c5eeb41", "9"),
("https://firebasestorage.googleapis.com/v0/b/my-app-83bf7.appspot.com/o/biker-care%2Fproduct%2Fgang-tay-taichi%2Fgang-tay-taichi-srt-437-chinh-hang-hcm.webp?alt=media&token=bb16c346-88e4-4997-9000-706909061b16", "10"),
("https://firebasestorage.googleapis.com/v0/b/my-app-83bf7.appspot.com/o/biker-care%2Fproduct%2Fgang-tay-taichi%2Fgang-tay-taichi-rst-463-chinh-hang-quan-11.webp?alt=media&token=dff8c309-a2a9-4132-a2ec-8ffc187d25ed", "10"),
("https://firebasestorage.googleapis.com/v0/b/my-app-83bf7.appspot.com/o/biker-care%2Fproduct%2Fgang-tay-taichi%2Fgang-tay-taichi-rst-462-chinh-hang-q11.webp?alt=media&token=356108e9-babf-490f-a774-059b5cc64124", "10"),
("https://firebasestorage.googleapis.com/v0/b/my-app-83bf7.appspot.com/o/biker-care%2Fproduct%2Fgang-tay-taichi%2Fgang-tay-taichi-rst-461-chinh-hang-quan-12.webp?alt=media&token=185a91b7-099e-4b37-afb7-79797a73bf73", "10"),
("https://firebasestorage.googleapis.com/v0/b/my-app-83bf7.appspot.com/o/biker-care%2Fproduct%2Fgang-tay-taichi%2Fgang-tay-taichi-rst-455-chinh-hang-quan-12.webp?alt=media&token=ee2ed409-62d3-4097-86b0-a5e5b6313a5a", "10"),
("https://firebasestorage.googleapis.com/v0/b/my-app-83bf7.appspot.com/o/biker-care%2Fproduct%2Fgang-tay-ls2-dart%2Fgang-tay-mo-to-ls2.webp?alt=media&token=aa3b8554-fb41-4bdc-b15b-62f2e4c0dbf6", "11"),
("https://firebasestorage.googleapis.com/v0/b/my-app-83bf7.appspot.com/o/biker-care%2Fproduct%2Fgang-tay-ls2-dart%2Fgang-tay-mo-to-ls2-ray.webp?alt=media&token=e8b047a2-e3b5-4181-97aa-531316e8cce1", "11"),
("https://firebasestorage.googleapis.com/v0/b/my-app-83bf7.appspot.com/o/biker-care%2Fproduct%2Fgang-tay-ls2-dart%2Fgang-tay-ls2-spark-man-chinh-hang.webp?alt=media&token=5ec09a4b-bcaf-4cba-9788-2e4e26e989a1", "11"),
("https://firebasestorage.googleapis.com/v0/b/my-app-83bf7.appspot.com/o/biker-care%2Fproduct%2Fgang-tay-ls2-dart%2Fgang-tay-ls2-jet-II-man-chinh-hang-quan-12.webp?alt=media&token=c780d424-27bc-4485-961e-541c01b2456e", "11"),
("https://firebasestorage.googleapis.com/v0/b/my-app-83bf7.appspot.com/o/biker-care%2Fproduct%2Fgang-tay-ls2-dart%2Fgang-tay-ls2-dart-2-man-chinh-hang.webp?alt=media&token=b49b33ca-371e-4d2d-a6aa-9ed60cf154b9", "11"),
("https://firebasestorage.googleapis.com/v0/b/my-app-83bf7.appspot.com/o/biker-care%2Fproduct%2Fgang-tay-ls2-dart%2Fgang-tay-ls2-all-terrain-chinh-hang-quan-12.webp?alt=media&token=37ff047d-c521-40f1-a42d-c236778a3fd8", "11"),
("https://firebasestorage.googleapis.com/v0/b/my-app-83bf7.appspot.com/o/biker-care%2Fproduct%2Fgang-tay-ego%2Fgang-tay-moto-ego-emg-8-chinh-hang.webp?alt=media&token=b51c0752-5758-4b5e-9ee1-362f447811ca", "12"),
("https://firebasestorage.googleapis.com/v0/b/my-app-83bf7.appspot.com/o/biker-care%2Fproduct%2Fgang-tay-ego%2Fgang-tay-ego-emg-9-chinh-hang-quan-12.webp?alt=media&token=07736600-f6aa-4821-a4b2-c725b85ad53e", "12"),
("https://firebasestorage.googleapis.com/v0/b/my-app-83bf7.appspot.com/o/biker-care%2Fproduct%2Fgang-tay-ego%2Fgang-tay-ego-emg-5-chinh-hang-quan-12.webp?alt=media&token=abda9c1f-3142-4f42-ae0f-c02ffc8adeb3", "12"),
("https://firebasestorage.googleapis.com/v0/b/my-app-83bf7.appspot.com/o/biker-care%2Fproduct%2Fgang-tay-ego%2Fgang-tay-ego-emg-4-chinh-hang-hoc-mon.webp?alt=media&token=bed43935-44b8-4b87-824d-f6883b9c214a", "12"),
("https://firebasestorage.googleapis.com/v0/b/my-app-83bf7.appspot.com/o/biker-care%2Fproduct%2Fgang-tay-ego%2Fbao-tay-ego-dai-ngon.webp?alt=media&token=f6a1c1e2-27a2-4816-8312-f467ba6f39e8", "12"),
("https://firebasestorage.googleapis.com/v0/b/my-app-83bf7.appspot.com/o/biker-care%2Fproduct%2Fgiay-alpines%2Fgiay-alpinestars-fastback-2-drystar-hcm.webp?alt=media&token=10220955-fc4c-49f7-b2c6-2d6e2621749b", "13"),
("https://firebasestorage.googleapis.com/v0/b/my-app-83bf7.appspot.com/o/biker-care%2Fproduct%2Fgiay-alpines%2Fgiay-bao-ho-alpinestars-chinh-hang-quan-12.webp?alt=media&token=8f6eb755-a3c2-4003-8ce1-3515e1d6ae76", "13"),
("https://firebasestorage.googleapis.com/v0/b/my-app-83bf7.appspot.com/o/biker-care%2Fproduct%2Fgiay-alpines%2Fgiay-bao-ho-alpinestars-sp-1-v2.webp?alt=media&token=eed7991b-eb0e-4793-b8fd-e243d3ea1a68", "13"),
("https://firebasestorage.googleapis.com/v0/b/my-app-83bf7.appspot.com/o/biker-care%2Fproduct%2Fgiay-alpines%2Fgiay-mo-to-alpinestar-hcm.webp?alt=media&token=6f128e2b-b685-4bf2-893f-ef7959be2519", "13"),
("https://firebasestorage.googleapis.com/v0/b/my-app-83bf7.appspot.com/o/biker-care%2Fproduct%2Fgiay-alpines%2Fgiay-mo-to-alpinestar.webp?alt=media&token=2544a3c5-10e7-4bc1-ab96-b77f4fc64d42", "13"),
("https://firebasestorage.googleapis.com/v0/b/my-app-83bf7.appspot.com/o/biker-care%2Fproduct%2Fgiay-ls2-acrux%2Fgiay-moto-ls2-acrux-chinh-hang.webp?alt=media&token=08f5205c-41f3-4163-80b7-d1cb13a5a3aa", "14");

insert into biker_care.cart_detail (quantity_per_product, app_user_id, id_product) 
values 
(3, 1, 1),
(4, 1, 2),
(5, 1, 3),
(7, 1, 5);
insert into biker_care.cart_detail (quantity_per_product, app_user_id, id_product) values (8, 1, 9);

insert into orders(date_time, order_code, app_user_id)
values
('2023-12-07 14:30:00', "DSOD-00021", "1"),
('2023-12-07 15:45:00', "DSOD-00301", "1"),
('2023-12-07 12:15:00', "DSOD-00401", "1"),
('2023-12-07 11:45:00', "DSOD-00501", "1"),
('2023-12-07 07:40:00', "DSOD-00201", "2"),
('2023-12-07 15:45:00', "DSOD-002101", "2"),
('2023-12-07 15:25:00', "DSOD-00012", "2"),
('2023-12-07 15:45:00', "DSOD-00015", "2");





SELECT DISTINCT p.id_product AS idProduct, p.name_product AS productName, 
p.price AS productPrice, p.description as productDescription,
MIN(i.image_path) AS productImage
FROM product p
JOIN image i ON p.id_product = i.id_product
WHERE p.id_type like 3
GROUP BY p.id_product
ORDER BY p.id_product desc
LIMIT 8;

-- Lấy ra toàn bộ sản phẩm với hình đầu tiên của mỗi sản phẩm
SELECT DISTINCT p.id_product AS idProduct, p.name_product AS productName, 
p.price AS productPrice, p.description as productDescription,
MIN(i.image_path) AS productImage
FROM product p
JOIN image i ON p.id_product = i.id_product
GROUP BY p.id_product;

-- Lấy ra sản phẩm theo id, toàn bộ ảnh và loại tương ứng của sản phẩm đó
SELECT DISTINCT p.id_product AS idProduct, p.name_product AS productName, 
p.price AS productPrice, p.description as productDescription, p.short_description as shortDescription, p.id_type as idType 
FROM product p
where p.id_product = 1;

select id_image, image_path
from image
where id_product = 1;


SELECT
p.id_product AS idProduct, 
p.name_product AS nameProduct, 
p.price AS price, 
t.name_type AS nameType, 
MIN(im.image_path) AS imageProduct, 
SUM(od.quantity) AS productSaleQuantity 
FROM product p 
JOIN 
orders_detail od ON p.id_product = od.id_product 
LEFT JOIN image im ON p.id_product = im.id_product 
JOIN 
type_product t ON p.id_type = t.id_type 
GROUP BY 
p.id_product, p.name_product, p.price, t.name_type 
ORDER BY SUM(od.quantity) DESC LIMIT 20;

-- Lấy ra danh sách sản phẩm để tìm kiếm theo tên sản phẩm
SELECT DISTINCT p.id_product AS idProduct, p.name_product AS productName,
p.price AS productPrice, p.description as productDescription,
MIN(i.image_path) AS productImage
FROM product p
JOIN image i ON p.id_product = i.id_product
WHERE p.name_product like CONCAT('%','mô tô','%')
GROUP BY p.id_product ORDER BY p.id_product desc LIMIT 10;

-- Liệt kê cart với user và product tương ứng
select c.id as idCart, 
u.full_name as fullName, 
u.address as address, 
u.phone as phoneNumber, 
p.name_product as productName, 
p.price as productPrice, 
c.quantity_per_product as productQuantity, 
p.id_product as productId, 
MIN(i.image_path) as productImage 
from cart_detail c 
join app_user u on c.app_user_id = u.id 
join product p on p.id_product = c.id_product 
left join image i on i.id_product = p.id_product 
where u.username = "nghiaphan" 
group by c.id;

-- Lấy ra cart với thông tin đầu vào là username và idProduct
select c.id, c.quantity_per_product, c.app_user_id, c.id_product 
from cart_detail c 
left join app_user u 
on c.app_user_id = u.id 
where u.username = "nghiaphan" and c.id_product = "1";

-- Xóa bản ghi cart với thông tin đầu vào là username và idProduct
delete c.* 
from cart_detail c 
left join app_user u 
on c.app_user_id = u.id 
where u.username = "nghiaphan" 
and c.id_product = "2";



