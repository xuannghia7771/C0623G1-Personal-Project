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
('Giày LS2 ACRUX với chất liệu bền bỉ được làm da tổng hợp, da thật chất lượng cao, có khả năng chống trượt và chống thấm, chất liệu này giúp bảo vệ chân khỏi các tác động của nước và các chất lỏng khác. Phần đế của giày LS2 ACRUX được làm từ cao su chất lượng cao, có độ bám và độ cách điện tốt, đế có thiết kế chống trượt, chống mài mòn, giúp người dùng có thể sử dụng di chuyển trên các loại bề mặt khác nhau. Bên cạnh đó, giày LS2 ACRUX còn có cách tính năng bảo vệ nhờ nhựa bảo hộ TPU bền bỉ, giúp chống trượt, chịu mài mòn và chịu lực tốt, đế thoáng khí và hút mồ hôi, mang lại cho người dùng trải nghiệm tốt nhất. Tóm lại, giày LS2 ACRUX là dòng sản phẩm chất lượng cao, được thiết kế chuyên dụng để đảm bảo an toàn và thoải mái cho người dùng trong khi điều khiển xe moto, xe gắn máy.', b'0', 'Giày Moto Ls2 ACRUX', '2790000', 7, 'Giày Moto Ls2 ACRUX form dáng gọn nhẹ tiện dụng cho anh em vừa có thể chạy xe vừa có thể đi bộ, giày bảo hộ LS2 Acrux Man có đầy đủ các tính năng bảo vệ cần thiết để đảm bảo sự an toàn cho chân của bạn trong mọi tình huống.', '3'),
('PackTalk NEO là sản phẩm mới nhất của Cardo trong dòng sản phẩm PackTalk. Thay thế Cardo Bold, NEO hiện là đối tác ổn định với Edge-- cả hai đều cung cấp công nghệ mới nhất với giá cả hợp lý. Sự khác biệt chính là trong việc gắn kết. Edge có "Air Mount" “ ngàm hít bằng nam châm”, trong khi NEO sẽ được trang bị ngàm có thể tháo rời đơn giản hơn. Tai nghe Cardo packtalk NEO có thể kết nối với tất cả các thiết bị Cardo bằng ghép nối Bluetooth thông thường. Thiết bị G và Q cần ở chế độ ghép nối điện thoại trước khi bắt đầu ghép nối. Tai nghe Cardo PackTalk NEO cung cấp loa JBL 40mm mới, sử dụng bộ xử lý nhạc cải tiến và ba cấu hình âm thanh được thiết kế lại. Công cụ vận hành giọng nói tự nhiên được cải tiến của Cardo giúp bạn không cần phải nhấn lại một nút. Chỉ cần nói “hey Cardo”, nói với nó những gì bạn muốn và PACKTALK NEO của bạn sẽ làm phần còn lại. Hơn nữa, Tai nghe Cardo NEO sử dụng giao tiếp lưới động thế hệ thứ hai của Cardo. Nhóm cùng với các tay đua khác nhanh hơn và dễ dàng hơn bao giờ hết. Hệ thống liên lạc nội bộ DMC thích ứng với chuyến đi của bạn, thêm hoặc bớt người đi một cách nhanh chóng. Tính năng trò chuyện cá nhân thậm chí còn cho phép bạn buôn chuyện với các cá nhân trong nhóm của mình. ', b'0', 'Tai nghe CARDO PACKTALK NEO', '6650000', 8, 'Tai nghe CARDO PACKTALK NEO có hệ thống loa JBL 40mm, công nghệ Dynamic Mesh Communication thế hệ mới, tính năng nhận diện giọng nói, cổng kết nối USB-C giúp cải thiện tốc độ sạc nhanh.', 8),
('Tai Nghe Bluetooth cho nón Fullface SCS-S6 là một thiết bị lý tưởng cho người lái xe máy chỉ cần chức năng phát nhạc, trả lời cuộc gọi rãnh tay hoặc nghe định vị GPS từ thiết bị di động thông minh, quay số bằng giọng nó.... Rất phù hợp sử dụng cho nhu cầu đi lại hằng ngày. Micro dạng cây có thể dễ dàng luồn theo ý muốn và được nối với tai nghe gắn trong nón. Tất cả thao tác tăng chỉnh âm lượng ,nhận cuộc gọi...đều nằm ngay phần đầu Micro. Thiết bị thiết kế micro đặt bên trong nón giúp tai nghe không bị vô nước. BLUETOOTH 5.0 + EDR. S-6 sử dụng chip CSR8635 được nâng cấp bluetooth 5.0 cho kết nối xa mạnh mẽ hơn lên đến 30m với các thiết bị di động. Công nghệ EDR được bổ sung giúp tiết kiệm năng lượng giúp tai nghe có thể hoạt động đến 8 tiếng, truyền tải âm thanh nghe gọi và nhạc chuẩn nhanh. Chế độ tự động tắt khi điện thoại ngưng kết nối với tai nghe từ 5-10 phút. Thiết kế đơn giản của tai nghe bluetooth SCS S-6 cố định cùng micro rất dễ dàng cho việc tháo lắp trên hầu hết các mũ bảo hiểm fullface hoặc 3/4. Tai nghe có đường kính 40m dày 8mm, cho âm thanh có chiều sâu bass treble cực tốt trong tầm giá. Tính năng khử ồn lọc tạp âm của micro giúp cho âm thanh trò chuyện ổn định hơn trong trong khi lái. Tai nghe SCS S-6 dùng Pin lion đạt chứng nhận an toàn chất lượng với chứng chỉ cấp quốc tế mang đến 1 tuổi thọ pin lâu dài bền bỉ. Thời gian sạc 1 tiếng cho nghe nhạc/đàm thoại liên tục 8 tiếng và 160 giờ cho thời gian chờ quả thực khá ấn tượng với dòng tai nghe bluetooth cho nón bảo hiểm giá rẻ. ', b'0', 'Tai Nghe Bluetooth cho nón Fullface SCS-S6', '690000', 15, 'Tai Nghe Bluetooth cho nón Fullface SCS-S6 có thể kết nối từ 1-2 điện thoại hoạt động liên tục 8 giờ thời gian chờ lên đến 160 giờ với khoảng cách là 30m, nghe gọi ổn định lọc tạp âm tốt, âm thanh chất lượng.', '8'),
('Tai Nghe Bluetooth cho nón Fullface Intercom SCS-S9 giúp bạn thực hiện các cuộc gọi rãnh tay thoải mái một cách linh hoạt trên mọi hành trình. Chức năng kết nối các cuộc trò chuyện trong đoàn di chuyển từ 4 đến 6 người kéo dài đến 500m. Kết nối S-9 với thiết bị GPS cùng nhiều tính năng vượt trội khác. Cảm giác ấn tượng đầu tiên là thiết kế cứng cáp sang trọng bên ngoài của S-9. Được tạo ra từ các đường cắt tinh tế và góc cạnh cùng với các cụm nút nhấn sắc xảo. Cụm nút của S9 giúp cho các thao tác chạm nghe cuộc gọi chuẩn xác chuẩn xác hơn. Nút âm lượng được thiết kế cùng dãy với các thao tác Nex/Back Tăng/Giảm âm thanh. Nút Intercom hình chiếc mũ bảo hiểm cho thao tác Nhận/Ngưng cuộc gọi trong đoàn giúp việc liên hệ nhóm dễ dàng hơn. Cổng Micro USB sạc và update hệ thống qua cáp USB. Cổng jack tai nghe 3.5mm trên đế S-9 kết nối micro và cổng AUX cho các kết nối âm thanh với các thiết bị khác qua cáp 2 đầu 3.5mm. Được trang bị chipset CSR8670 mạnh mẽ cho khoảng cách kết nối thiết bị xa hơn 30m mà chất lượng không hề thay đổi. Cho thực hiện nhiều kết nối bluetooth cùng một lúc như 2 smartphone, GPS, ... Thiết bị chính được lắp đặt bên ngoài nón với khả năng chống mưa cấp độ IPX6 an toàn tuyệt đối. Tai nghe cùng micro được lắp đặt gọn gàng trong chiếc mũ bảo hiểm. Máy có thể tháo rời để bảo quản đơn giản dễ dàng tránh bị hư hại hoặc mất khi không sử dụng.', b'0', 'Tai Nghe Bluetooth cho nón Fullface Intercom SCS-S9', '2190000', 15, 'Tai Nghe Bluetooth cho nón Fullface Intercom SCS-S9 có khả năng kết hợp từ 4-6 người khoảng cách kết nối thiết bị hơn 30m, âm thanh chất lượng cao khử được tiếng ồn và có khả năng chống nước', '8'),
('Sena luôn đi đầu những tiến bộ về công nghệ và thiết kế. Sena 50S đã hot nay cải tiến càng ấn tượng cùng tai nghe "Sound By Harman Kardon" cho 50S thêm trải nghiệm âm thanh hoàn hảo hơn đang được các fan Sena săn đón. Là mẫu tai nghe bluetooth cao cấp cho mũ bảo hiểm có thiết kế đáng chú ý và các nâng cấp lớn về cả phần cứng và phần mềm. Đã đến lúc trải nghiệm các chuyến đi với kết nối hoàn toàn mới. Tai nghe Bluetooth Intercom Sena 50C Harman Kardon là một sản phẩm cao cấp được thiết kế đặc biệt cho người dùng xe máy, mô tô. Sản phẩm được nâng cấp Mesh Intercom phiên bản 2.0 với tính năng kết nối nhanh chỉ với một chạm. Bluetooth 5.0 được nâng cấp để đảm bảo kết nối ổn định và tốc độ truyền dữ liệu nhanh hơn. Tai nghe Sena 50C được trang bị loa & Micro "Harman Kardon" chất lượng cao, mang đến trải nghiệm âm thanh tuyệt vời. Người dùng có thể sử dụng ra lệnh bằng giọng nói đa ngôn ngữ và truy cập trợ lý thông minh bằng giọng nói "Hey Siri / Hey Google". Sản phẩm cũng được trang bị tính năng kiểm soát tiếng ồn nâng cao và Voice Control, giúp người dùng có thể dễ dàng điều khiển sản phẩm một cách thuận tiện. Đồng thời, sản phẩm còn có tính năng đài FM để bạn có thể nghe nhạc hoặc các chương trình phát thanh trong quá trình di chuyển. Tóm lại, Tai nghe Bluetooth Intercom Sena 50C Harman Kardon là một sản phẩm cao cấp và đa tính năng, được nâng cấp với Mesh Intercom 2.0 và Bluetooth 5.0, âm thanh chất lượng cao Harman Kardon, tính năng kiểm soát tiếng ồn nâng cao và liên lạc nội bộ đa chiều với phạm vi lên đến 2KM. Sản phẩm còn được trang bị đài FM và có thể cập nhật phiên bản mới thường xuyên qua Wi-Fi của Adapter.', b'0', 'TAI NGHE BLUETOOTH SENA 50S HARMAN KARDON', '14550000', 5, 'Sena 50S là mẫu tai nghe bluetooth cao cấp cho mũ bảo hiểm có thiết kế đáng chú ý và các nâng cấp lớn về cả phần cứng và phần mềm. Sạc nhanh hơn 30% và hỗ trợ lệnh thoại đa ngôn ngữ.', '8'),
('Giày moto chống nước Taichi RSS010 với thiết kế giày độc đáo có độ bám tuyệt vời trên những con đường gồ ghề để hỗ trợ việc phiêu lưu, giày sử dụng đế đúc nguyên bản của hãng TAICHI. Sử dụng chất liệu ‘ Dry Master ‘ chống thấm nước và thoáng khí, bạn có thể thoải mái mang ngay cả trong thời tiết xấu, phần gót chân được trang bị phản quang để đảm bảo tầm nhìn vào ban đêm. Ngoài ra, mặt khóa BOA, thuận tiện cho việc mang và tháo, mới sử dụng loại M4 lớn, giúp bạn dễ dàng khóa và mở khi đeo găng tay. Phần mũi giày Taichi RSS010 có trang bị tấm bảo vệ mũi giày giúp cho bạn được bảo vệ và giảm đau ngón chân sau khi chuyển số nhiều lần, những miếng bảo vệ được đặt ở nhiều nơi giúp giảm thiểu chấn thương và hư hại cho giày khi thân xe đè xuống. Giày Taichi RSS010 được trang bị đế VIBRAM được thiết kế nguyên bản của TAICHI giúp bám đường tốt hơn trên đường đèo, sử dụng vật liệu EVA nhẹ ở đế giữa. ', b'0', 'Giày moto chống nước Taichi RSS010', '5000000', 20, 'Giày moto chống nước TAICHI RSS010 mang đến sự kết hợp hoàn hảo giữa thiết kế dựa trên khái niệm phiêu lưu và tính năng ưu việt. Đế giày có khả năng bám tốt trên đường gồ ghề, giúp bạn chinh phục mọi địa hình.', '4'),
('Giày moto TCX 9508W Rush 2 chuyên dụng đi moto dành cho chị em Biker, với tính năng chống nước, đảm bảo an toàn nhưng vẫn thoải mái khi trời mưa. Giày moto TCX 9508W đạt chuẩn an toàn CE của Châu Âu với thiết kế hiện đại, liền lạc bằng chất liệu chống mài mòn cao. Phần đế lót của giày moto TCX 9508W được trang bị đế lốt OrthoLite êm ái, kháng khuẩn, chống mồ hôi, có đệm dày gia cố bảo vệ ngón, gót và mắt cá chân, phần gài chặt cổ chân dạng Velcro, lớp lót giày thoáng khí công nghệ Ari-Tech. Phần upper của giày TCX 9508W được làm bằng vải chống mài mòn, có phần lỗ thonog thoáng, thiết kế phần mắt cá chân thoải mái và linh hoạt, có phần phản quang sau gót giày giúp người dùng có thể di chuyển ban đêm một cách an toàn hơn. ' , b'0', 'Giày moto TCX 9508W Rush 2', '2800000', 10, 'Giày moto nữ TCX-9508W RUSH 2 chuyên dụng đi moto dành cho chị em biker với tính năng chống nước, đảm bảo an toàn nhưng vẫn thoải mái khi trời mưa, giày đạt chuẩn an toàn CE của châu Âu với thiết kế hiện đại, liền lạc bằng chất liệu chống mài mòn cao.', '4'),
('Giày moto Alpinestars SMX-1R được gia công từ những  sợi da siêu mỏng  cao cấp giúp cho người dùng cảm thấy thoải mái khi sử dụng. Làm tăng thêm độ bền bỉ và tăng khả năng chống mài mòn tránh được những va đập mạnh bất ngờ xảy ra. Nhiều lỗ thông gió được tích hợp ở vùng ngón chân, hai bên hông giày giúp cho sự lưu thông không khí một cách linh hoạt nhất. Giày Alpinestars SMX-1R được chứng nhận đạt chuẩn CE và EEC do châu âu ban hành. Phần gót chân có gù cứng bảo hộ, làm tặng phần bảo vệ ở gót chân của người mang, bên cạnh đó kết hợp dây khóa kéo giúp khách hàng dễ dàng và thuận tiện khi sử dụng. Giày mô tô Alpinestars Smx-1r Vented đã trang bị thêm  miếng đệm TPR mềm ở vùng cổ chân kết nối hoạt động với các miếng thun co giãn ở gót chân giúp người sử dụng cảm thấy êm ái khi sử dụng. Phần bảo hộ với công nghệ Ergonomic được thiết kế độc quyền của giày Alpinestars  giúp vị trí những ngón chân được cử động linh hoạt, mở rộng phạm vi hoạt động của các ngón chân và hỗ trợ sang số cung như đạp thắng tốt nhất. Với phần gù bảo hộ bên hông bàn chân là thiết kế mới của hãng có tên TPR bảo vệ phía bên hông bàn chân và tặng khả năng bảo vệ chống mài mòn tối ưu. Chất liệu chính của giày bảo hộ mô tô Alpinestars SMX-1R VENTED là vật liệu cao su cao cấp được hãng Alpinestars nghiên cứu và phát triển có khả năng chống thấm nước, độ bám đường tốt làm tăng thêm cảm giác lái xe và có độ bền tối đa. Vị trí mu bàn chân được làm từ những sợi thun co giãn nhỏ và nhẹ, giúp cho độ bền được nâng cấp và linh động trong việc sử dụng. Với công nghệ Velcro được tích hợp với phần dây cài có thể điều chỉnh theo kích cỡ bàn chân của ngươi mang một cách nhanh chóng và an toàn. Miếng khóa dán của giày Alpinestars được gia cống với công nghệ Velcro để bảo vệ, tránh bị trầy xước khi tiếp xúc giữa giày và xe trong lúc cầm lái. Lớp gù cứng được trang bị ở phần mắt cá chân giúp bảo vệ mắt cá chân khi gặp sự cố bất ngờ. Các miếng lót đệm bên trong giày với thiết kế mới, vật liệu TPU làm tặng sự mềm mại của giày. Phần đế giày Alpinestars SMX-1R  được làm từ miếng lót EVA và Lycra. Miếng lưới làm mát và chóng ẩm giúp bạn có thể sử dụng được trong mọi thời tiết.', b'0', 'Giày moto Alpinestars SMX-1R', '3890000', 7, 'Giày moto Alpinestars SMX-1 R Vented được thiết kế chuyên dụng cho những tay nài thực thụ, với những tính năng vượt trội nhằm vận hành xe tốt hơn khi sang số và vào cua và quan trọng là bảo về đôi chân của bạn tuyệt đối khi xảy ra sự cố', '4'),
('Áo mưa givi CRS02 được làm bằng chất liệu vải Nylon 210T và Nylon 190T là loại vải có độ bền cực cao nhưng rất mỏng và nhẹ có thể nói loại vải này có được tất cả các ưu điểm của sợi vải Polyester và Nylon 190T.  Khả năng kháng nước là 8000mm có thể cân được những cơn mưa nặng hạt tốt, cũng như chạy xe với vận tốc cao. Chất vải Nylon của áo mưa mỏng, mềm mại, không bị nhăn nhúm, khó bị kéo giãn khi sử dụng. Có khả năng chống cháy tốt, áo mưa givi rất dễ dàng vệ sinh. Form dáng của áo mưa givi CRS02 gọn nhẹ, đơn giản dễ gấp bỏ túi và đỡ chiếm diện tích khi đi tour xa. Logo givi và nhiều dải phản quang được trang bị phía trước ngực,  sau lưng và phía bên hông quần có thể phát sáng khi đi đêm, hỗ trợ người đi đường thấy mình một cách tốt nhất. Phần cánh tay, cổ, hông, eo và cổ chân của áo mưa bộ givi đều được trang nịt dán anh em có thể điều chỉnh sao cho phù hợp với body của mình. Phía sau áo mưa givi CRS02 còn được trang bị thêm 2 khe xả gió hỗ trợ tản nhiệt một cách tốt nhất khi sử dụng áo mưa cả ngày. Để mở được phần bên trong của áo mưa givi CRS02 thì phải qua một lớp nịt dán dài kèm rảnh thoát nước phía trước mới tới được dây khóa kéo. Bên trong áo mưa givi đa phần đều là lưới thoáng khí và tản nhiệt giúp đỡ hầm nóng khi di chuyển cả ngày. Ngoài ra áo còn được trang bị thêm 1 túi bên hông giúp đựng thêm được những vật dụng quan trọng như là bóp, điện thoại ...vv Phần quan trọng không kém để giúp áo mưa không bị thấm đó là phần ghép nối, đường may của Áo Mưa Givi luôn được gia công ép sim nhiệt phủ lên bề mặt đường may 1 lớp nilon tăng độ gắn kết, gia tăng độ bền cho áo cũng như ngăn nước mưa thấm vào bên trong qua đường chỉ may. Tất cả các dòng áo mưa của givi đều được sản xuất ở nhà máy VN, Khu Công Nghiệp Tân Đức Hòa Đức Long An. Tất cả đều được sản xuất  theo công nghệ của Italy và xuất khẩu đi nhiều nước khác nhau nên luôn đảm bảo date cao, uy tín, chính hãng,  chất lượng tránh những lỗi nhỏ không đáng có và Bikercare shop là một trong những đại lý chính thống của givi tại quận 12. Tất cả các dòng áo mưa của givi đang bán tại Bikercare shop đều được bảo hành chính hãng 1 năm, áo mưa givi CRS02 sẽ được đổi mới nếu như bị lỗi của nhà sản xuất, còn nếu như sản phẩm bị hư hại do tác động của bạn thì shop vẫn hỗ trợ tốt nhất có thể cho bạn.', b'0', 'Áo Mưa Givi CRS02', '1283000', 9, 'Áo Mưa Givi CRS02 với chất lượng vượt trội so với những sản phẩm thông thường, với những thiết kế chuyên dụng có thể chống lại những cơn mưa lớn, chỉ số chống nước của áo mưa bộ givi CRS02 là 8000mm có thể đi mưa cả ngày.', '6'),
('Túi đeo chéo givi được làm bằng chất liệu 100% sợi vải Polyester bền bỉ, chắc chắn và có thể đi được mưa nhẹ.
From dáng của túi đeo chéo givi QB04 gọn gàng, tiện dụng mang đi nhiều nơi.
Phía trước túi còn được trang bị logo của givi rất thẩm mỹ. Có thể nói dòng túi đi phố givi QB04 này có rất nhiều ngăn đựng đồ anh em tha hồ bỏ nhiều vật dụng. Hai bên hông túi givi còn được trang bị 2 khuyên bằng nhựa cứng để anh em móc phần dây để đeo. Phần phía sau túi givi QB04 được trang bị bằng nhựa trong suốt giúp bạn để điện thoại vào bên trong để xem đường, cảm ứng cực kỳ mượt. Để mở được ngắn chính của túi givi QB04 phải qua một lớp dây khóa kéo chắc chắn và bền bỉ, bên trong túi còn được chia ra làm 2 ngăn có ngăn riêng đựng bút và điện thoại chống sốc. Túi đeo givi QB04 là phân khúc tầm trung, giá tốt phù hợp cho anh em đi công việc trong thành phố hoặc những tour ngắn. Việc đi lại trong thành phố phải di chuyển nhiều nơi có thể sẽ dẫn đến việc quên đồ thì túi đeo chéo givi QB04 sẽ là một trợ thủ đắc lực. Túi givi QB04 có form dáng gọn, kích thước là 22*16cm bạn sẽ đựng được sổ ghi chép, bút, điện thoại, bóp, ipad mini thôi nhé. Túi đeo chéo givi QB04 chỉ đi được mưa nhẹ, anh em lưu ý để tránh bị ướt đồ đạc. Các dòng túi, balo của givi đang bán tại Bikercare shop đều được bảo hành chính hãng 1 năm, túi givi QB04 sẽ được đổi mới nếu như bị lỗi của nhà sản xuất, còn nếu như sản phẩm bị hư hại do tác động của bạn thì shop vẫn hỗ trợ tốt nhất có thể cho bạn. ',b'0','Túi đeo chéo Givi QB04','360000',12,'Túi đeo chéo givi QB04 được làm bằng 100% vải Polyester cực kỳ bền bỉ, được trang bị nhiều ngăn chứa đồ, phía sau túi còn được trang bị phần nhựa trong suốt có thể cảm ứng tốt hỗ trợ xem bản đồ.','5');

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

insert into biker_care.cart_detail (quantity_per_product, app_user_id, id_product) values (2, 3, 3);
insert into biker_care.cart_detail (quantity_per_product, app_user_id, id_product) values (5, 1, 2);
insert into biker_care.cart_detail (quantity_per_product, app_user_id, id_product) values (1, 1, 4);
insert into biker_care.cart_detail (quantity_per_product, app_user_id, id_product) values (7, 1, 6);
insert into biker_care.cart_detail (quantity_per_product, app_user_id, id_product) values (6, 1, 7);
insert into biker_care.cart_detail (quantity_per_product, app_user_id, id_product) values (3, 1, 3);
insert into biker_care.cart_detail (quantity_per_product, app_user_id, id_product) values (6, 1, 3);




insert into orders(date_time, order_code, app_user_id)
values
('2023-12-07 14:30:00', "CODE-00021", "1"),
('2023-12-07 15:45:00', "CODE-00301", "1"),
('2023-12-07 12:15:00', "CODE-00401", "1"),
('2023-12-07 11:45:00', "CODE-00501", "1"),
('2023-12-07 07:40:00', "CODE-00201", "2"),
('2023-12-07 15:45:00', "CODE-002101", "2"),
('2023-12-07 15:25:00', "CODE-00012", "2"),
('2023-12-07 15:45:00', "CODE-00015", "2");






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

-- tìm mã order trùng lặp
select order_code 
from orders 
where order_code = "CODE-00401";

-- Xóa giỏ hàng
delete cart_detail.* 
from cart_detail 
left join app_user 
on cart_detail.app_user_id = app_user.id 
where app_user.username = "nghiaphan";

-- Lấy ra tất cả hóa đơn theo ten username
select o.id, o.date_time, o.order_code, o.app_user_id 
from orders o 
join app_user u 
on u.id = o.app_user_id 
where u.username = 'nghiaphan';

-- Lấy ra chi tiết hóa đơn
SELECT od.id as id, 
od.quantity as quantity, 
od.total_price as totalPrice, 
od.id_order as idOrder, 
od.id_product as idProduct, 
MIN(i.image_path) as image, 
p.name_product as productName, 
p.price as productPrice, 
o.order_code as orderCode 
from orders_detail od 
join orders o on od.id_order = o.id 
join product p on od.id_product = p.id_product 
join image i on p.id_product = i.id_product 
where od.id_order = "9"
group by od.id;


