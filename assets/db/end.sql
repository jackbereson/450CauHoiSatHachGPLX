BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Question" (
	"id"	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	"content"	TEXT,
	"category"	TEXT,
	"type"	TEXT,
    "exams" TEXT,
	"answers"	TEXT,
    "pic" TEXT,
    "description" TEXT
);

INSERT INTO "Question" ("id","content","category","type","answers") VALUES 
 (1,'Hành vi giao xe cơ giới, xe máy chuyên dùng cho người không đủ điều kiện để điểu khiển xe tham gia giao thông có bị nghiêm cấm hay không?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Không bị nghiêm cấm.","isTrue":false},{"id":"2","answer":"Bị nghiêm cấm.","isTrue":true},{"id":"3","answer":"Nghiêm cấm tuỳ từng trường hợp.","isTrue":false}]}'),
 
 (2,'Người điểu khiển phương tiện giao thông đường bộ mà trong cơ thể có chất ma tuý có bị nghiêm cấm hay không?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Bị nghiêm cấm.","isTrue":true},{"id":"2","answer":"Không bị nghiêm cấm.","isTrue":false}]}'),
 
 (3,'Hành vi điều khiển xe cơ giới chạy quá tốc độ quy định, giành đường, vượt ẩu có bị nghiêm cấm hay không?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Bị nghiêm cấm.","isTrue":true},{"id":"2","answer":"Bị nghiêm cấm tuỳ từng trường hợp.","isTrue":false},{"id":"3","answer":"Không bị nghiêm cấm.","isTrue":false}]}'),
 
 (4,'Hành vi bỏ trốn sau khi gây tai nạn để trốn tránh trách nhiệm hoặc khi có điểu kiện mà cố ý không cứu giúp người bị tai nạn giao thông có bị nghiêm cấm hay không?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Không bị nghiêm cấm.","isTrue":false},{"id":"2","answer":"Nghiêm cấm tuỳ từng trường hợp cụ thể.","isTrue":false},{"id":"3","answer":"Bị nghiêm cấm.","isTrue":true}]}'),
  
 (5,'Hành vi đưa xe cơ giới, xe máy chuyên dùng không bảo đảm tiêu chuẩn an toàn kỹ thuật và bảo vệ môi trường tham gia giao thông đường bộ có bị nghiêm cấm hay không?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Không nghiêm cấm.","isTrue":false},{"id":"2","answer":"Bị nghiêm cấm.","isTrue":true},{"id":"3","answer":"Bị nghiêm cấm tuỳ theo các tuyến đường.","isTrue":false},{"id":"4","answer":"Bị nghiêm cấm tuỳ theo loại xe.","isTrue":false}]}'),
 
 (6,'Xe ôtô tham gia giao thông trên đường bộ có bắt buộc phải đủ bộ phận giảm thanh, giảm khói không?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Không bắt buộc","isTrue":false},{"id":"2","answer":"Bắt buộc.","isTrue":true}]}'),
 
 (7,'Xe quá tải trọng, quá khổ giới hạn tham gia giao thông cần tuân thủ quy định nào ghi ở dưới đây?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Phải được cơ quan quản lý đường bộ có thẩm quyền cấp phép và phải thực hiện các biện pháp bắt buộc để bảo vệ đường bộ, bảo đảm an toàn giao thông.","isTrue":true},{"id":"2","answer":"Chủ phương tiện và lái xe chỉ cần thực hiện biện pháp để hạn chế việc gảy hư hại đường bộ.","isTrue":false},{"id":"3","answer":"Được tham gia giao thông khi cần thiết.","isTrue":false}]}'),
  
 (8,'Khi lùi xe người lái xe phải làm gì để bảo đảm an toàn?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Quan sát phía trước và cho lùi xe.","isTrue":false},{"id":"2","answer":"Lợi dụng nơi đường giao nhau đủ chiều rộng để lùi.","isTrue":false},{"id":"3","answer":"Phải quan sát phía sau, có tín hiệu cần thiết và chỉ khi nào thấy không nguy hiểm mới được lùi.","isTrue":true}]}'),
   
 (9,'Khi dừng xe, đỗ xe tại nơi được phép trên đường phố, người điều khiển phương tiện phải tuân theo những quy định nào ghi dưới đây?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Phải cho xe dừng, đỗ sát theo lề đường, hè phố phía bên trái theo chiều đi của mình; bánh xe gàn nhất không được cách xa lề đường, hè phố quá 0,3 mét và không gây cản trở, nguy hiểm cho giao thông. Trường hợp đường phố hẹp, phải dừng xe, đỗ xe ở vị trí cách xe ôtô đang đỗ bên kia đường tối thiểu 15 mét.","isTrue":false},
 {"id":"2","answer":"Phải cho xe dừng, đỗ sát theo lề đường, hè phố phía bên phải theo chiều đi của mình; bánh xe gần nhất không được cách xa lề đường, hè phố quá 0,25 mét và không gây cản trở, nguy hiểm cho giao thông. Trường hợp đường phố hẹp, phải dừng xe, đỗ xe ở vị trí cách xe ôtô đang đỗ bên kia đường tối thiểu 20 mét.","isTrue":true},
 {"id":"3","answer":"Tất cả các ý nêu trên.","isTrue":false}]}'),
 
 (10,'Xe kéo rơ moóc khi tham gia giao thông phải tuân thủ điều kiện nào ghi ở dưới đây?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Phải có tổng trọng lượng lớn hơn tổng trọng lượng của rơ moóc hoặc phải có hệ thống hãm có hiệu lực cho rơ moóc.","isTrue":true},{"id":"2","answer":"Phải có tổng trọng lượng tương đương tổng trọng lượng của rơ moóc hoặc phải có hệ thống hãm của rơ moóc.","isTrue":false}]}'),
 
 (11,'Người tham gia giao thông phải chấp hành quy tắc nào dưới đây?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Phải đi bên trái của đường đi, đi đúng làn đường, phần đường quy định và phải chấp hành biển báo hiệu đường bộ; xe ôtô có trang bị dây an toàn thì người lái xe phải thắt dây an toàn.","isTrue":false},{"id":"2","answer":"Phải đi bên phải theo chiều đi của mình, đi đúng làn đường, phần đường quy định và phải chấp hành hệ thống báo hiệu đường bộ; xe ôtô có trang bị dây an toàn thì người lái xe và người ngồi hàng ghế phía trước trong xe ôtô phải thắt dây an toàn.","isTrue":true}]}'),
 
 (12,'Trên đường có nhiều làn đường cho xe đi cùng chiều được phân biệt bằng vạch kẻ phân làn đường, người điều khiển phương tiện phải cho xe đi như thế nào?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Cho xe đi trên bất kỳ làn đường nào; khi cần thiết phải chuyển làn đường, người lái xe phải có đèn tín hiệu báo trước và phải bảo đảm an toàn.","isTrue":false},{"id":"2","answer":"Phải cho xe đi trong một làn đường và chỉ được chuyển làn đường ở những nơi cho phép; khi chuyển làn phải có tín hiệu báo trước và phải bảo đảm an toàn.","isTrue":true},{"id":"3","answer":"Phải cho xe đi trong một làn đường, khi chuyển làn đường phải có tín hiệu báo trước, chú ý quan sát để bảo đảm an toàn.","isTrue":false}]}'),
 
 (13,'Ban đêm xe cơ giới đi ngược chiều gặp nhau, đèn chiếu sáng phải được sử dụng như thế nào?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Phải chuyển từ đèn chiếu gần sang đèn chiếu xa.","isTrue":false},{"id":"2","answer":"Phải chuyển từ đèn chiếu xa sang đèn chiếu gần.","isTrue":true}]}'),
 
 (14,'Khi có tín hiệu của xe ưu tiên, người tham gia giao thông phải làm gì?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Phải nhanh chóng giảm tốc độ, tránh hoặc dừng lại sát lề đường bên trái để nhường đường.","isTrue":false},{"id":"2","answer":"Phải nhanh chóng tăng tốc độ, tránh sát lề đường để nhường đường cho xe ưu tiện; cấm các hành vi gây cản trở xe ưu tiện.","isTrue":false},{"id":"3","answer":"Phải nhanh chóng giảm tốc độ, tránh hoặc dừng lại sát lề đường bên phải để nhường đường; không được gây cản trở xe được quyền ưu tiên.","isTrue":true}]}'),
 
 (15,'Người điều khiển phương tiện giao thông trên đường phố có được dừng xe, đỗ xe trên đường xe điện, trên miệng cống thoát nước, miệng hầm của đường điện thoại, điện cao thế, chỗ dành riêng cho xe chữa cháy lấy nước hay không?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Được dừng xe, đỗ xe trong trường hợp cần thiết.","isTrue":false},{"id":"2","answer":"Không được dừng xe, đỗ xe.","isTrue":true},{"id":"3","answer":"Được dừng xe, đỗ xe.","isTrue":false},{"id":"4","answer":"Được dừng xe.","isTrue":false}]}'),
 
 (16,'Người điều khiển xe môtô hai bánh, ba bánh, xe gắn máy có được phép sử dụng xe để kéo, đẩy các xe khác, vật khác khi tham gia giao thông không?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Được phép.","isTrue":false},{"id":"2","answer":"Tuỳ trường hợp.","isTrue":false},{"id":"3","answer":"Không được phép.","isTrue":true}]}'),

 (17,'Người ngồi trên xe môtô hai bánh, xe môtô ba bánh, xe gắn máy khi tham gia giao thông có được mang, vác vật cồng kềnh hay không?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Được mang, vác tuỳ trường hợp cụ thể.","isTrue":false},{"id":"2","answer":"Không được mang, vác.","isTrue":true},{"id":"3","answer":"Được mang, vác nhưng phải đảm bảo an toàn.","isTrue":false}]}'),

 (18,'Việc họp chợ, tụ tập đông người trái phép, thả rông súc vật trên đường bộ có được phép hay không?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Không được phép.","isTrue":true},{"id":"2","answer":"Được phép.","isTrue":false},{"id":"3","answer":"Được phép trong một số trường hợp cụ thể.","isTrue":false}]}'),

 (19,'Khi điều khiển xe chạy trên đoạn đường vòng, đầu dốc và các vị trí có tầm nhìn hạn chế người lái xe muốn vượt xe khác thì phải xử lý như thế nào?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Nháy đèn pha kết hợp với tín hiệu còi cho xe trước biết để xe mình vượt.","isTrue":false},{"id":"2","answer":"Không được vượt.","isTrue":true},{"id":"3","answer":"Nếu thấy không có xe đi ngược chiều và đường đủ rộng thì có thể cho xe vượt nhưng phải bảo đảm an toàn.","isTrue":false}]}'),
 
(20,'Người lái xe phải làm gì khi quay đầu xe trên cầu, gầm cầu vượt, đường ngầm hay khu vực đường bộ giao nhau cùng mức với đường sắt?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Không được quay đầu xe.","isTrue":true},{"id":"2","answer":"Lợi dụng chỗ rộng và phải có người làm tín hiệu sau xe để bảo đảm an toàn.","isTrue":false},{"id":"3","answer":"Lợi dụng chỗ rộng có thể quay đầu được để quay đầu xe cho an toàn.","isTrue":false}]}'),
 
 
 (21,'Bên trái đường một chiều, người lái xe có được dừng, đỗ xe hay không?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Được dừng, đỗ xe tùy từng trường hợp cụ thể nhưng phải đảm bảo an toàn","isTrue":false},{"id":"2","answer":"Được dừng xe, không được đỗ xe","isTrue":false},{"id":"3","answer":"Không được dừng xe, đỗ xe","isTrue":true}]}'),
 
 
 (22,'Khi gặp một đoàn xe, một đoàn xe tang hay gặp một đoàn người có tổ chức theo đội ngũ, người lái xe phải xử lý như thế nào?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Bóp còi, rú ga để cắt qua đoàn người, đoàn xe.","isTrue":false},{"id":"2","answer":"Không được cắt ngang qua đoàn người, đoàn xe.","isTrue":true},{"id":"3","answer":"Báo hiệu từ từ cho xe đi qua để bảo đảm an toàn.","isTrue":false}]}'),
 
 
 (23,'Hàng nguy hiểm, hàng có mùi hôi thối hoặc động vật, hàng hóa khác có ảnh hưởng đến sức khỏe hành khách được nhận chở trên xe khách hay không?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Được chở.","isTrue":false},{"id":"2","answer":"Không được chở.","isTrue":true}]}'),
 
 
 (24,'Người có giấy phép lái xe hạng FE được điều khiển các loại xe nào?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Các loại xe được quy định tại giấy phép lái xe hạng E có kéo rơ moóc và được điều khiển các loại xe: ôtô chở khách nối toa và các loại xe quy định cho giấy phép lái xe hạng B1, B2, C, D, FB2, FD.","isTrue":true},{"id":"2","answer":"Các loại xe được quy định tại giấy phép lái xe hạng E có kéo rơ moóc, đầu kéo kéo sơ mi rơ moóc và được điều khiển các loại xe: ôtô chở khách nối toa và các loại xe quy định cho giấy phép lái xe hạng B1, B2, c, D, FB2, FD.","isTrue":false},{"id":"3","answer":"Tất cả các loại xe nêu trên.","isTrue":false}]}'),
 
 
 (25,'Người có giấy phép lái xe hạng FC được điều khiển các loại xe nào?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Các loại xe được quy định tại giấy phép lái xe hạng C có kéo rơ moóc, ôtô đầu kéo kéo sơ mi rơ moóc, ôtô chở khách nối toa và được điều khiển các loại xe quy định cho giấy phép lái xe hạng B1, B2 và FB2.","isTrue":false},{"id":"2","answer":"Các loại xe được quy định tại giấy phép lái xe hạng C có kéo rơ moóc, ôtô đầu kéo kéo sơ mi rơ moóc và được điều khiển các loại xe quy định cho giấy phép lái xe hạng B1, B2, C và FB2.","isTrue":true},{"id":"3","answer":"Môtô hai bánh, các loại xe được quy định tại giấy phép lái xe hạng C có kéo rơ moóc, ôtô đầu kéo kéo sơ mi rơ moóc và được điều khiển các loại xe quy định cho giấy phép lái xe hạng B1, B2, c và FB2.","isTrue":false},{"id":"4","answer":"Tất cả các loại xe nêu trên.","isTrue":false}]}'),
 
 
 (26,'Niên hạn sử dụng của ôtô chở người trên 9 chỗ ngồi (tính bắt đầu từ năm sản xuất) là bao nhiêu năm?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"5 năm","isTrue":false},{"id":"2","answer":"20 năm","isTrue":true},{"id":"3","answer":"25 năm","isTrue":false}]}'),
 
 
 (27,'Niên hạn sử dụng của ôtô tải (tính bắt đầu từ năm sản xuất) là bao nhiêu năm?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"15 năm","isTrue":false},{"id":"2","answer":"20 năm","isTrue":false},{"id":"3","answer":"25 năm","isTrue":true}]}'),
 
 
 (28,'Người đủ bao nhiêu tuổi trở lên thì được điều khiển xe môtô hai bánh, xe môtô ba bánh có dung tích xi lanh từ 50 cm3 trở lên và các loại xe có kết cấu tương tự; xe ôtô tải, máy kéo có trọng tải dưới 3,5 tấn; xe ôtô chở người đến 9 chỗ ngồi?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"16 tuổi.","isTrue":false},{"id":"2","answer":"18 tuổi.","isTrue":true},{"id":"3","answer":"17 tuổi.","isTrue":false}]}'),
 
 
 (29,'Người đủ bao nhiêu tuổi trở lên thì được điều khiển xe ôtô tải, máy kéo có trọng tải từ 3,5 tấn trở lên; xe hạng B2 kéo rơ moóc (FB2)?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"19 tuổi.","isTrue":false},{"id":"2","answer":"21 tuổi.","isTrue":true},{"id":"3","answer":"20 tuổi.","isTrue":false}]}'),
 
 
 (30,'Người lái xe chở người từ 10 dến 30 chỗ ngồi (hạng D), lái xe hạng C kéo rơ moóc (FC) phải đủ bao nhiêu tuổi trở lên?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"23 tuổi.","isTrue":false},{"id":"2","answer":"24 tuổi.","isTrue":true},{"id":"3","answer":"22 tuổi.","isTrue":false}]}'),
 
 
 (31,'Người lái xe ôtô chở người trên 30 chỗ ngồi (hạng E), lái xe hạng D kéo rơ moóc (FD) phải đủ bao nhiêu tuổi trở lên?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"23 tuổi.","isTrue":false},{"id":"2","answer":"24 tuổi.","isTrue":false},{"id":"3","answer":"27 tuổi.","isTrue":true}]}'),
 
 
 (32,'Tuổi tối đa của người lái xe ôtô chở người trên 30 chỗ ngồi (hạng E) là bao nhiêu tuổi?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"55 tuổi đối với nam và 50 tuổi đối với nữ.","isTrue":true},{"id":"2","answer":"55 tuổi đối với nam và nữ.","isTrue":false},{"id":"3","answer":"60 tuổi đối với nam và 55 tuổi đối với nữ.","isTrue":false}]}'),
 
 
 (33,'Người đủ 16 tuổi được điều khiển các loại xe nào dưới đây?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Xe môtô 2 bánh có dung tích từ 50 cm3 trở lên.","isTrue":false},{"id":"2","answer":"Xe gắn máy có dung tích từ 50 cm3 trở xuống.","isTrue":true},{"id":"3","answer":"Xe ôtô tải dưới 3,5 tấn; xe chở người đến 9 chỗ ngồi.","isTrue":false},{"id":"4","answer":"Tất cả các ý trên.","isTrue":false}]}'),
 
 
 (34,'Người có giấy phép lái xe hạng B2 được điều khiển loại xe nào?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Xe ôtô chở người trên 9 chỗ ngồi; xe ôtô tải; máy kéo có trọng tải trên 3,5 tấn.","isTrue":false},{"id":"2","answer":"Xe ôtô chở người đến 9 chỗ ngồi; xe ôtô tải; máy kéo có trọng tải dưới 3,5 tấn.","isTrue":true},{"id":"3","answer":"Xe ôtô chở người từ 10 đến 30 chỗ ngồi; xe ôtô tải; máy kéo có trọng tải trên 3,5 tấn.","isTrue":false}]}'),
 
 
 (35,'Người có giấy phép lái xe hạng C được điều khiển loại xe nào?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Xe ôtô chở người trên 9 chỗ ngồi; xe ôtô tải; máy kéo có trọng tải trên 3,5 tấn.","isTrue":false},{"id":"2","answer":"Xe ôtô chở người từ 10 đến 30 chỗ ngồi; xe ôtô tải; máy kéo có trọng tải trên 3,5 tấn.","isTrue":false},{"id":"3","answer":"Xe ôtô chở người đến 9 chỗ ngồi; xe ôtô tải; máy kéo có trọng tải trên 3,5 tấn.","isTrue":true}]}'),
 
 
 (36,'Người điều khiển xe ôtô, máy kéo, xe máy chuyên dùng trên đường mà trong máu hoặc hơi thở có nồng độ cồn vượt quá bao nhiêu thì bị cấm?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Người điều khiển xe ôtô, máy kéo, xe máy chuyên dùng trên đường mà trong máu có nồng độ cồn vượt quá 50 miligam/100 mililít máu hoặc 0,25 miligam/ 1 lít khí thở.","isTrue":false},{"id":"2","answer":"Người điều khiển xe ôtô, máy kéo, xe máy chuyên dùng trên đường mà trong máu hoặc hơi thở có nồng độ cồn.","isTrue":true},{"id":"3","answer":"Người điều khiển xe ôtô, máy kéo, xe máy chuyên dùng trên đường mà trong máu có nồng độ cồn vượt quá 80 miligam/100 mililít máu hoặc 40 miligam/ 1 lít khí thở.","isTrue":false}]}'),
 
 
 (37,'Người điều khiển xe môtô, xe gắn máy trên đường mà trong máu có nồng độ cồn vượt quá bao nhiêu thì bị cấm?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Nồng độ cồn vượt quá 50 miligam/100 mililít máu.","isTrue":true},{"id":"2","answer":"Nồng độ cồn vượt quá 40 miligam/100 mililít máu.","isTrue":false},{"id":"3","answer":"Nồng độ cồn vượt quá 30 mililigam/100 miỉilít máu.","isTrue":false}]}'),
 
 
 (38,'Người điều khiển xe môtô, xe gắn máy trên đường mà trong khí thở có nồng độ cồn vượt quá bao nhiêu thì bị cấm?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Nồng độ cồn vượt quá 0,25 miligam/ 1 lít khí thở.","isTrue":true},{"id":"2","answer":"Nồng độ cồn vượt quá 0,20 miligam/ 1 lít khí thở.","isTrue":false},{"id":"3","answer":"Nồng độ cồn vượt quá 0,15 miligam/ 1 lít khí thở.","isTrue":false}]}'),
 
 
 (39,'Tại nơi đường giao nhau, khi người điều khiển giao thông ra hiệu lệnh tay giơ thẳng đứng để báo hiệu thì người tham gia giao thông phải đi như thế nào?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Người tham gia giao thông ở phía trước và ở phía sau người điều khiển giao thông phải dừng lại; người tham gia giao thông ở phía bên phải và bên trái người điều khiển được đi.","isTrue":false},{"id":"2","answer":"Người tham gia giao thông ở các hướng phải dừng lại.","isTrue":true},{"id":"3","answer":"Tất cả các trường hợp trên.","isTrue":false}]}'),
 
 
 (40,'Tại nơi đường giao nhau, khi người điều khiển giao thông ra hiệu lệnh bằng tay phải giơ về phía trước để báo hiệu thì người tham gia giao thông phải đi như thế nào?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Người tham gia giao thông ở phía sau người điều khiển phải dừng lại; người ở phía trước người điều khiển được rẽ trái; người ở phía bên trái người điều khiển được rẽ trái; người đi bộ qua đường phải dừng lại sau lưng người điều khiển giao thông.","isTrue":false},{"id":"2","answer":"Người tham gia giao thông ở phía sau và bên phải người điều khiển phải dừng lại; người ở phía trước người điều khiển được rẽ phải; người ở phía bên trái người điều khiển giao thông được đi tất cả các hướng; người đi bộ qua đường phải đi sau lưng người điều khiển giao thông.","isTrue":true}]}'),
 
 
 (41,'Tại nơi đường giao nhau, khi người điều khiển giao thông ra hiệu lệnh bằng hai tay hoặc một tay giang ngang để báo hiệu thì người tham gia giao thông phải đi như thế nào là đúng quy tắc giao thông?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Người tham gia giao thông ở phía trước và ở phía sau người điều khiển giao thông phải dừng lại; người tham gia giao thông ở phía bên phải và bên trái người điều khiển được đi.","isTrue":true},{"id":"2","answer":"Người tham gia giao thông ở phía trước và ở phía sau người điều khiển giao thông được đi thẳng; người tham gia giao thông ở phía bên phải và bên trái người điều khiển được đi thẳng và rẽ phải.","isTrue":false}]}'),
 
 
 (42,'Trên đường giao thông, khi hiệu lệnh của người điều khiển giao thông trái với hiệu lệnh của đèn hoặc biển báo hiệu thì người tham gia giao thông phải chấp hành theo hiệu lệnh nào?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Hiệu lệnh của người điều khiển giao thông.","isTrue":true},{"id":"2","answer":"Hiệu lệnh của đèn điều khiển giao thông.","isTrue":false},{"id":"3","answer":"Hiệu lệnh của biển báo hiệu đường bộ.","isTrue":false}]}'),
 
 
 (43,'Khi phát hiện hành vi giả khai báo mất hoặc tẩy xóa, làm sai lệch các thông tin trên giấy phép lái xe; sử dụng giấy phép lái xe hoặc đổi hồ sơ lái xe giả; có hành vi cố tình gian dối để được đổi, cấp mới, cấp lại giấy phép lái xe, ngoài việc bị cơ quan quản lý giấy phép lái xe ra quyết định thu hồi giấy phép lái xe và hồ sơ gốc còn phải chịu trách nhiệm trước pháp luật, người lái xe không được cấp giấy phép lái xe trong thời gian bao nhiêu năm?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"05 năm.","isTrue":true},{"id":"2","answer":"03 năm.","isTrue":false},{"id":"3","answer":"02 năm.","isTrue":false}]}'),
 
 
 (44,'Người lái xe phải làm gì khi điều khiển xe ra khỏi đường cao tốc?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Phải thực hiện chuyển dần sang làn đường phía bên phải, nếu có làn đường giảm tốc thì cho xe chạy trên làn đường đó trước khi rời khỏi đường cao tốc.","isTrue":true},{"id":"2","answer":"Phải thực hiện chuyển ngay sang các làn đường phía bên phải, nếu có làn đường giảm tốc thì phải cho xe chạy trên làn đường đó trước khi rời khỏi đường cao tốc.","isTrue":false}]}'),
 
 
 (45,'Khái niệm “đường cao tốc” được hiểu như thế nào là đúng?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Là đường dành cho xe cơ giới, có dải phân cách chia đường cho xe chạy hai chiều riêng biệt; không giao nhau cùng mức với một hoặc các đường khác; được bố trí đầy đủ trang thiết bị phục vụ, bảo đảm giao thông liên tục, an toàn, rút ngắn thời gian hành trình và chỉ cho xe ra, vào ở những điểm nhất định.","isTrue":true},{"id":"2","answer":"Là đường chỉ dành cho xe cơ giới chạy với tốc độ cao, có dải phân cách chia đường cho xe chạy hai chiều ngược nhau riêng biệt; không giao cắt cùng mức với đường khác; bố trí đầy đủ trang thiết bị phục vụ bảo đảm giao thông, an toàn và rút ngắn thời gian hành trình.","isTrue":false}]}'),
 
 
 (46,'Khi điều khiển xe trên đường cao tốc, những việc nào không cho phép?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Cho xe chạy ở làn dừng xe khẩn cấp và phần lề đường; quay đầu xe, lùi xe; cho xe chạy quá tốc độ tối đa và dưới tốc độ tối thiểu ghi trên biển báo, sơn kẻ trên mặt đường.","isTrue":true},{"id":"2","answer":"Cho xe chạy quá tốc độ tối thiểu và dưới tốc độ tối đa ghi trên biển báo, sơn kẻ trên mặt đường.","isTrue":false},{"id":"3","answer":"Dừng xe, đỗ xe ở nơi quy định.","isTrue":false}]}'),
 
 
 (47,'Những trường hợp nào ghi ở dưới đây không được đi vào đường cao tốc trừ người, phương tiện, thiết bị phục vụ cho việc quản lý, bảo trì đường cao tốc?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Người đi bộ, xe thô sơ, xe gắn máy và xe ôtô.","isTrue":false},{"id":"2","answer":"Xe môtô và xe máy chuyên dùng có tốc độ thiết kế nhỏ hơn 70km/h.","isTrue":false},{"id":"3","answer":"Người đi bộ, xe thô sơ, xe gắn máy, xe môtô và xe máy chuyên dùng có tốc độ thiết kế nhỏ hơn 70km/h.","isTrue":true}]}'),
 
 
 (48,'Trên đường cao tốc, người lái xe phải dừng xe, đỗ xe như thế nào?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Không được dừng xe, đỗ xe hoặc chỉ được dừng xe, đỗ xe ở nơi đường rộng, nếu dừng, đỗ xe ở nơi đường hẹp phải có báo hiệu để người lái xe khác biết.","isTrue":false},{"id":"2","answer":"Chỉ được dừng xe, đỗ xe ở nơi quy định, trường hợp buộc phải dừng xe, đỗ xe không đúng nơi quy định thì người lái xe phải đưa xe ra khỏi phần đường xe chạy, nếu không thể được thì phải báo hiệu để người lái xe khác biết.","isTrue":true},{"id":"3","answer":"Chỉ được dừng xe, đỗ xe ở nơi đường rộng; trường hợp dừng xe, đỗ xe tại nơi đường hẹp phải có báo hiệu để người lái xe khác biết để bảo đảm an toàn.","isTrue":false}]}'),
 
 
 (49,'Trên đường cao tốc, người lái xe xử lý như thế nào khi vượt quá lối ra của đường định rẽ?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Quay xe, chạy trên lề đường bên phải và rẽ khỏi đường cao tốc.","isTrue":false},{"id":"2","answer":"Lùi xe sát lề đường bên phải và rẽ khỏi đường cao tốc.","isTrue":false},{"id":"3","answer":"Tiếp tục chạy đến lối ra tiếp theo.","isTrue":true}]}'),
 
 
 (50,'Người lái xe phải làm gì khi điều khiển xe vào đường cao tốc?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Phải có tín hiệu xin vào và phải nhường đường cho xe đang chạy trên đường; khi thấy an toàn mới cho xe nhập vào dòng xe ở làn đường sát mép ngoài.","isTrue":true},{"id":"2","answer":"Phải có tín hiệu và tăng tốc độ vào đường cao tốc.","isTrue":false},{"id":"3","answer":"Nếu có làn đường tăng tốc thì phải cho xe chạy trên làn đường đó trước khi vào làn đường của đường cao tốc.","isTrue":true}]}'),
 
 (51,'Ký hiệu chuyên dùng nào biểu hiện hàng chuyên chở phải tránh ánh nắng mặt trời?'
,'Hình báo','pic',
 '{"data":[{"id":"1","answer":"Hình 1","isTrue":true},{"id":"2","answer":"Hình 2","isTrue":false}]}'),
 

 (52,'Những ký hiệu hàng hóa dưới đây, ký hiệu nào chống mưa?'
  ,'Hình báo','pic',
 '{"data":[{"id":"1","answer":"Hình 1","isTrue":false},{"id":"2","answer":"Hình 2","isTrue":true},{"id":"3","answer":"Hình 3","isTrue":false}]}'),
 
 
 (53,'Hình nào dưới đây biểu hiện hàng chuyên chở dễ vỡ phải cẩn thận?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","answer":"Hình 1","isTrue":true},{"id":"2","answer":"Hình 2","isTrue":false}]}'),
 
 
 (54,'Hình  nào dưới đây biểu hiện hàng chuyên chở là chất lỏng?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","answer":"Hình 1","isTrue":false},{"id":"2","answer":"Hình 2","isTrue":true}]}'),
 
 
 (55,'Hình nào dưới đây đòi hỏi hàng phải xếp theo hướng thẳng đứng?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","answer":"Hình 1","isTrue":false},{"id":"2","answer":"Hình 2","isTrue":false},{"id":"3","answer":"Hình 3","isTrue":true}]}'),
 
 
 (56,'Khi động cơ ôtô đã khởi động, bảng đồng hồ xuất hiện ký hiệu như hình vẽ dưới đây, báo hiệu tình trạng như thế nào của xe ôtô?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","answer":"Báo hiệu thiếu dầu phanh","isTrue":false},{"id":"2","answer":"Áp suất lốp không đủ","isTrue":false},{"id":"3","answer":"Đang hãm phanh tay","isTrue":false},{"id":"4","answer":"Sắp hết nhiên liệu","isTrue":true}]}'),
 
 
 (57,'Khi động cơ ôtô đã khởi động, bảng đồng hồ xuất hiện ký hiệu như hình vẽ dưới đây, báo hiệu tình trạng như thế nào của xe ôtô?',
 'Hình báo','pic',
 '{"data":[{"id":"1","answer":"Phanh tay đang hãm","isTrue":true},{"id":"2","answer":"Thiếu dầu phanh","isTrue":true},{"id":"3","answer":"Nhiệt độ nước làm mát quá mức cho phép","isTrue":false},{"id":"4","answer":"Dầu bôi trơn bị thiếu","isTrue":false}]}'),
 
 
 (58,'Khi động cơ ôtô đã khởi động, bảng đồng hồ xuất hiện ký hiệu như hình vẽ dưới đây, báo hiệu tình trạng như thế nào của xe ôtô?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","answer":"Phanh tay đang hãm","isTrue":false},{"id":"2","answer":"Thiếu dầu phanh","isTrue":false},{"id":"3","answer":"Nhiệt độ nước làm mát quá mức cho phép","isTrue":false},{"id":"4","answer":"Dầu bôi trơn bị thiếu","isTrue":true}]}'),
 
 
 (59,'Khi động cơ ôtô đã khởi động, bảng đồng hồ xuất hiện ký hiệu như hình vẽ dưới đây, báo hiệu tình trạng như thế nào của xe ôtô?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","answer":"Cửa xe đóng chưa chặt","isTrue":true},{"id":"2","answer":"Có cửa xe chưa đóng","isTrue":true},{"id":"3","answer":"Bộ nạp ắc quy gặp sự cố kỹ thuật","isTrue":false},{"id":"4","answer":"Dầu bôi trơn bị thiếu","isTrue":false}]}'),
 
 
 (60,'Khi động cơ ôtô đã khởi động, bảng đồng hồ xuất hiện ký hiệu như hình vẽ dưới đây, báo hiệu tình trạng như thế nào của xe ôtô?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","answer":"Thiếu dầu phanh, phanh tay đang hãm","isTrue":false},{"id":"2","answer":"Hệ thống túi khí an toàn gặp sự cố","isTrue":false},{"id":"3","answer":"Lái xe và người ngồi ghế trước chưa cài dây an toàn.","isTrue":true},{"id":"4","answer":"Cửa đóng chưa chặt, có cửa chưa đóng","isTrue":false}]}'),
 
 
 (61,'Xe máy kéo, xe công nông, xe lam, xe lôi máy, xe xích lô máy, xe ba gác máy, xe máy chuyên dùng và các loại xe tương tự (loại đang được phép hoạt động) tham gia giao thông với tốc độ tối đa cho phép là bao nhiêu?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"60km/h","isTrue":false},{"id":"2","answer":"50km/h","isTrue":false},{"id":"3","answer":"40km/h","isTrue":false},{"id":"4","answer":"30km/h","isTrue":true}]}'),
 
 
 (62,'Trên đường bộ trong khu vực đông dân cư, xe môtô hai bánh, xe gắn máy tham gia giao thông với tốc độ tối đa cho phép là bao nhiêu?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"60km/h","isTrue":false},{"id":"2","answer":"50km/h","isTrue":false},{"id":"3","answer":"40km/h","isTrue":true},{"id":"4","answer":"30km/h","isTrue":false}]}'),
 
 
 (63,'Trên đường bộ trong khu vực đông dân cư, loại xe nào tham gia giao thông với tốc độ tối đa cho phép là 40km/h?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Ôtô chở người trên 30 chỗ ngồi, ôtô tải có trọng tải từ 3500 kg trở lên, ôtô sơ mi rơ moóc, ôtô kéo rơ moóc, ôtô kéo xe khác, ôtô chuyên dùng, xe môtô, xe gắn máy.","isTrue":true},{"id":"2","answer":"Ôtô chở người đến 30 chỗ ngồi, ôtô tải có trọng tải dưới 3500 kg","isTrue":false},{"id":"3","answer":"Xe máy kéo, xe công nông, xe lam, xe lôi máy, xe xích lô máy, xe ba gác máy, xe máy chuyên dùng và các loại xe tương tự (loại đang được phép hoạt động).","isTrue":false}]}'),
 
 
 (64,'Trên đường bộ trong khu vực đông dân cư, loại xe cơ giới nào tham gia giao thông với tốc độ tối đa cho phép là 50km/h?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Ôtô chở người trên 30 chỗ ngồi, ôtô tải có trọng tải từ 3500 kg trở lên, ôtô sơ mi rơ moóc, ôtô kéo rơ moóc, ôtô kéo xe khác, ôtô chuyên dùng, xe môtô, xe gắn máy.","isTrue":false},{"id":"2","answer":"Xe máy kéo, xe công nông, xe lam, xe lôi máy, xe xích lô máy, xe ba gác máy, xe máy chuyên dùng và các loại xe tương tự (loại đang được phép hoạt động).","isTrue":false},{"id":"3","answer":"Ôtô chở người đến 30 chỗ ngồi, ôtô tải có trọng tải dưới 3500 kg.","isTrue":true},{"id":"4","answer":"Tất cả các ý nêu trên.","isTrue":false}]}'),
 
 
 (65,'Trên đường bộ ngoài khu vực đông dân cư, loại xe nào tham gia giao thông với tốc độ tối đa cho phép là 50km/h?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Ôtô chở người đến 30 chỗ ngồi (trừ ôtô buýt), ôtô tải có trọng tải dưới 3500 kg.","isTrue":false},{"id":"2","answer":"Ôtô chở người trên 30 chỗ ngồi (trừ ôtô buýt), ôtô tải có trọng tải từ 3500 kg trỏ’ lên.","isTrue":false},{"id":"3","answer":"Ôtô kéo rơ moóc, ôtô kéo xe khác, xe gắn máy.","isTrue":true},{"id":"4","answer":"Ôtô buýt, ôtô sơ mi rơ moóc, ôtô chuyên dùng, xe môtô.","isTrue":false}]}'),
 
 
 (66,' Trên đường bộ ngoài khu vực đông dân cư, loại xe nào tham gia giao thông với tốc độ tối đa cho phép là 60km/h?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Ôtô chở người đến 30 chỗ ngồi (trừ ôtô buýt), ôtô tải có trọng tải dưới 3500 kg.","isTrue":false},{"id":"2","answer":"Ôtô chở người trên 30 chỗ ngồi (trừ ôtô buýt), ôtô tải có trọng tải từ 3500 kg trở lên.","isTrue":false},{"id":"3","answer":"Ôtô kéo rơ moóc, ôtô kéo xe khác, xe gắn máy.","isTrue":false},{"id":"4","answer":"Ôtô buýt, ôtô sơ mi rơ moóc, ôtô chuyên dùng.","isTrue":true}]}'),
 
 
 (67,'Trên đường bộ ngoài khu vực đông dân cư, loại xe nào tham gia giao thông với tốc độ tối đa cho phép là 70km/h?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Ôtô chở người đến 30 chỗ ngồi (trừ ôtô buýt), ôtô tải có trọng tải dưới 3500 kg.","isTrue":false},{"id":"2","answer":"Ôtô chở người trên 30 chỗ ngồi (trừ ôtô buýt), ôtô tải có trọng tải từ 3500kg trở lên.","isTrue":true},{"id":"3","answer":"Ôtô buýt, ôtô sơ mi rơ moóc, ôtô chuyên dùng, xe môtô.","isTrue":false}]}'),
 
 
 (68,'Trên đường bộ ngoài khu vực đông dân cư, loại xe nào tham gia giao thông với tốc độ tối đa cho phép là 80km/h?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Ôtô chở người đến 30 chỗ ngồi (trừ ôtô buýt), ôtô tải có trọng tải dưới 3500 kg.","isTrue":true},{"id":"2","answer":"Ôtô buýt, ôtô sơ mi rơ moóc, ôtô chuyên dùng, xe môtô.","isTrue":false},{"id":"3","answer":"Ôtô chở người trên 30 chỗ ngồi (trừ ôtô buýt), ôtô tải có trọng tải từ 3500 kg trở lên.","isTrue":false},{"id":"4","answer":"Ôtô kéo rơ moóc, ôtô kéo xe khác, xe gắn máy.","isTrue":false}]}'),
 
 
 (69,'Trên đường cao tốc, trừ khi nhập làn và tách làn, với điều kiện mặt đường khô ráo, xe cơ giới đang chạy với tốc độ đến 60 km/h, người lái xe phải duy trì khoảng cách an toàn với xe đang chạy phía trước tối thiểu là bao nhiêu?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"30m.","isTrue":true},{"id":"2","answer":"40m.","isTrue":false},{"id":"3","answer":"50m.","isTrue":false},{"id":"4","answer":"60m.","isTrue":false}]}'),
 
 
 (70,'Trên đường cao tốc, trừ khi nhập làn và tách làn, với điều kiện mặt đường khô ráo, xe cơ giới đang chạy với tốc độ trên 60 km/h đến 80 km/h, người lái xe phải duy trì khoảng cách an toàn với xe đang chạy phía trước tối thiểu là bao nhiêu?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"40m.","isTrue":false},{"id":"2","answer":"50m.","isTrue":true},{"id":"3","answer":"60m.","isTrue":false},{"id":"4","answer":"70m.","isTrue":false}]}'),
 
 
 (71,'Trên đường cao tốc, trừ khi nhập làn và tách làn, với điều kiện mặt đường khô ráo, xe cơ giới đang chạy với tốc độ trên 80 km/h đến 100 km/h, người lái xe phải duy trì khoảng cách an toàn với xe đang chạy phía trước tối thiểu là bao nhiêu?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"50m.","isTrue":false},{"id":"2","answer":"60m.","isTrue":false},{"id":"3","answer":"70m.","isTrue":true},{"id":"4","answer":"80m.","isTrue":false}]}'),
 
 
 (72,'Trên đường cao tốc, trừ khi nhập làn và tách làn, với điều kiện mặt đường khô ráo, xe cơ giới đang chạy với tốc độ trên 100 km/h đến 120 km/h, người lái xe phải duy trì khoảng cách an toàn với xe đang chạy phía trước tối thiểu là bao nhiêu?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"60m.","isTrue":false},{"id":"2","answer":"70m.","isTrue":false},{"id":"3","answer":"80m.","isTrue":false},{"id":"4","answer":"90m.","isTrue":true}]}'),
 
 (73,'Dải phân cách trên đường bộ có những loại nào?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Loại cố định.","isTrue":true},{"id":"2","answer":"Loại di động.","isTrue":true}]}'),
 
 (74,'“Phương tiện tham gia giao thông đường bộ” gồm những loại nào?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Phương tiện giao thông cơ giới đường bộ.","isTrue":true},{"id":"2","answer":"Phương tiện giao thông thô sơ đường bộ và xe máy chuyên dùng.","isTrue":true}]}'),
 
 (75,'“Người tham gia giao thông đường bộ” gồm những đối tượng nào?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Người điều khiển, người sử dụng phương tiện tham gia giao thông đường bộ.","isTrue":true},{"id":"2","answer":"Người điều khiển, dẫn dắt súc vật; người đi bộ trên đường bộ.","isTrue":true}]}'),
 
 (76,'“Người điều khiển phương tiện tham gia giao thông” gồm những đối tượng nào?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Người điều khiển xe cơ giới, người điều khiển xe thô sơ.","isTrue":true},{"id":"2","answer":"Người điều khiển xe máy chuyên dùng tham gia giao thông đường bộ.","isTrue":true}]}'),
 
 (77,'Các hành vi nào ghi ở dưới đây bị nghiêm cấm?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Phá hoại đường, cầu, hâm, bên phà đường bộ, phá hoại đèn tín hiệu, cọc tiêu, biển báo hiệu, gương cầu, dải phân cách.","isTrue":true},{"id":"2","answer":"Phá hoại hệ thống thoát nước và các công trình, thiết bị khác thuộc kết cấu hạ tầng giao thông đường bộ.","isTrue":true}]}'),
 
 (78,'Những hành vi nào ghi ở dưới đây bị nghiêm cấm?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Đua xe, cổ vũ đua xe, tổ chức đua xe trái phép.","isTrue":true},{"id":"2","answer":"Lạng lách, đánh võng.","isTrue":true}]}'),
 
 (79,'Những hành vi nào sau đây bị cấm?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Bấm còi, rú ga liên tục, bấm còi trong thời gian từ 22 giờ đến 5 giờ.","isTrue":true},{"id":"2","answer":"Bấm còi hơi, sử dụng đèn chiếu xa trong khu đô thị và khu dân cư, trừ các xe ưu tiên khi đang làm nhiệm vụ.","isTrue":true}]}'),
 
 (80,'Các hành vi nào sau đây bị nghiêm cấm?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Lắp đặt, sử dụng còi, đèn không đúng thiết kế của nhà sản xuất đối với từng loại xe cơ giới.","isTrue":true},{"id":"2","answer":"Sử dụng thiết bị âm thanh gây mất trật tự an toàn giao thông, trật tự công cộng.","isTrue":true}]}'),
 
 (81,'Trong hoạt động vận tải đường bộ, các hành vi nào sau đây bị nghiêm cấm?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Vận chuyển hàng cấm lưu thông.","isTrue":true},{"id":"2","answer":"Vận chuyển trái phép hoặc không thực hiện đầy đủ các quy định về vận chuyển hàng nguy hiểm, động vật hoang dã.","isTrue":true}]}'),
 
 (82,'Trong hoạt động vận tải khách, những hành vi nào ghi ở dưới đây bị cấm?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Đe dọa, xúc phạm, tranh giành, lôi kéo hành khách; bắt ép hành khách sử dụng dịch vụ ngoài ý muốn.","isTrue":true},{"id":"2","answer":"Chuyển tải, xuống khách hoặc các hành vị khác nhằm trốn tránh phát hiện xe chở quá tải, quá số người quy định.","isTrue":true}]}'),
 
 (83,'Khi xảy ra tai nạn giao thông, những hành vi nào ghi ở duới đây bị nghiêm cấm?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Xâm phạm tính mạng, sức khoẻ, tài sản của người bị tai nạn giao thông; xâm phạm tính mạng, sức khoẻ, tài sản của người gây tai nạn giao thông.","isTrue":true},{"id":"2","answer":"Lợi dụng việc xảy ra tai nạn giao thông để hành hung, đe doạ, xúi giục, gây sức ép, làm mất trật tự, cản trở việc xử lý tai nạn giao thông.","isTrue":true}]}'),
 
  (84,'Người lái xe không được vượt xe khác khi gặp trường hợp nào ghi ở dưới đây?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Trên cầu hẹp có một làn xe; nơi đường giao nhau, đường bộ giao nhau cùng mức với đường sắt.","isTrue":true},{"id":"2","answer":"Điều kiện thời tiết hoặc đường không bảo đảm an toàn cho việc vượt; xe ưu tiên đang phát tín hiệu ưu tiên làm nhiệm vụ.","isTrue":true}]}'),
 
  (85,'Biển báo hiệu đường bộ gồm những nhóm nào, ý nghĩa của từng nhóm?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Nhóm biển báo cấm để biểu thị các điều cấm; nhóm biển báo hiệu nguy hiểm để cảnh báo các tình huống nguy hiểm có thể xảy ra. Nhóm biển hiệu lệnh để báo hiệu các hiệu lệnh phải thi hành,","isTrue":true},{"id":"2","answer":"Nhóm biển chỉ dẫn để chỉ dẫn hướng đi hoặc các điều cần biết, nhóm biển phụ để thuyết minh bổ sung các loại biển báo cấm, biển báo nguy hiểm, biển hiệu lệnh và biển chỉ dẫn.","isTrue":true}]}'),
 
  (86,'Khi vượt xe khác người lái xe phải thực hiện như thế nào?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Phải báo hiệu bằng đèn hoặc còi; trong đô thị và nơi đông dân cư từ 22 giờ đến 05 giờ chỉ được báo hiệu xin vượt bằng đèn.","isTrue":true},{"id":"2","answer":"Xe xin vượt chỉ được vượt khi không có chướng ngại vật ở phía trước, không có xe chạy ngược chiều trong đoạn đường định vượt, xe chạy trước không có tín hiệu vượt xe khác và đã tránh về bên phải.","isTrue":true}]}'),
 
  (87,'Người điều khiển phương tiện khi muốn dừng hoặc đỗ xe trên đường bộ phải thực hiện như thế nào?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Có tín hiệu báo cho người điều khiển phương tiện khác biết.","isTrue":true},{"id":"2","answer":"Cho xe dừng, đỗ ở nơi đã xây dựng các điểm dừng, đỗ xe; nơi có lề đường rộng hoặc khu đất ở bên ngoài phần đường xe chạy; trường hợp lề đường hẹp hoặc không có lề đường thì phải cho xe dừng, đỗ sát mép đường phía bên phải theo chiều đi của mình.","isTrue":true}]}'),
 
  (88,'Người điều khiển xe môtô hai bánh, xe gắn máy được phép chở tối đa 2 người trong những trường hợp nào?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Chở người bệnh đi cấp cứu; trẻ em dưới 14 tuổi.","isTrue":true},{"id":"2","answer":"Áp giải người có hành vi vi phạm pháp luật.","isTrue":true}]}'),
 
  (89,'Những người có mặt tại nơi xảy ra vụ tai nạn giao thông có trách nhiệm gì?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Bảo vệ hiện trường, giúp đỡ, cứu chữa kịp thời người bị nạn, bảo vệ tài sản của người bị nạn.","isTrue":true},{"id":"2","answer":"Báo tin ngay cho cơ quan công an, y tế hoặc ủy ban nhân dân nơi gần nhất; cung cấp thông tin xác thực về vụ tai nạn theo yêu cầu của cơ quan có thẩm quyền.","isTrue":true}]}'),
 
 
  (90,'Người phát hiện công trình đường bộ bị hư hỏng hoặc bị xâm hại, hành lang an toàn đường bộ bị lấn chiếm phải có trách nhiệm gì?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Kịp thời báo cho ủy ban nhân dân, cơ quan quản lý đường bộ hoặc cơ quan công an nơi gần nhất để xử lý.","isTrue":true},{"id":"2","answer":"Trường hợp cần thiết phải có biện pháp báo hiệu ngay cho người tham gia giao thông biết.","isTrue":true}]}'),
 
  (91,'Khi tập lái xe ôtô, người và xe tập lái phải đảm bảo các điều kiện gì?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Người tập lái xe phải thực hành lái xe trên xe tập lái và có giáo viên bảo trợ tay lái.","isTrue":true},{"id":"2","answer":"Xe tập lái phải có giấy chứng nhận kiểm định an toàn kỹ thuật và bảo vệ môi trường còn hiệu lực, có đủ hệ thống phanh phụ còn hiệu lực, thùng xe phải có mui che mưa, nắng và có ghế chắc chắn cho học sinh ngồi, tên cơ sở đào tạo được kẻ trên xe theo quy định; có giấy phép xe tập lái do cơ quan có thẩm quyền cấp còn hiệu lực; nộp phí sử dụng đường bộ theo quy định.","isTrue":true}]}'),
 
  (92,'Kinh doanh vận tải hành khách bằng xe ôtô bao gồm những loại hình nào ghi ở dưới đây?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Theo tuyến cố định có xác định bến đi, bến đến với lịch trình, hành trình nhất định; theo hợp đồng không theo tuyến cố định được thực hiện theo hợp đồng vận tải; vận tải khách du lịch theo tuyến, chương trình và địa điểm du lịch.","isTrue":true},{"id":"2","answer":"Bằng xe buýt theo tuyến cố định có các điểm dừng đón, trả khách và xe chạy theo biểu đồ vận hành theo cự ly, phạm vi hoạt động nhất định; bằng xe taxi có lịch trình và hành trình theo yêu cầu của khách hàng, cước tính theo đồng hồ tính tiền.","isTrue":true}]}'),
 
  (93,'Người vận tải, người lái xe khách phải chấp hành những quy định nào ghi ở dưới đây?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Đón, trả khách đúng nơi quy định, không chở hành khách trên mui, trong khoang hành lý hoặc để hành khách đu bám bên ngoài xe; không chở hàng nguy hiểm, hàng có mùi hôi thối hoặc động vật, hàng hóa khác có ảnh hưởng đến sức khỏe của hành khách.","isTrue":true},{"id":"2","answer":"Không chở hành khách, hành lý, hàng hóa vượt quá trọng tải, số người theo quy định; không để hàng hóa trong khoang chở khách; có biện pháp giữ gìn vệ sinh trong xe.","isTrue":true}]}'),
 
  (94,'Người kinh doanh vận tải hàng hóa có các nghĩa vụ gì theo quy định được ghi ở dưới đây?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Cung cấp phương tiện đúng loại, thời gian, địa điểm và giao hàng hóa cho người nhận hàng theo thỏa thuận trong hợp đồng; hướng dẫn xếp dỡ hàng hóa trên phương tiện.","isTrue":true},{"id":"2","answer":"Bồi thường thiệt hại cho người thuê vận tải do mất mát, hư hỏng hàng hóa xảy ra trong quá trình vận tải từ lúc nhận hàng đến lúc giao hàng, trừ trường hợp miễn bồi thường thiệt hại theo quy định của pháp luật; bồi thường thiệt hại do người làm công, người đại diện gây ra trong khi thực hiện công việc được người kinh doanh vận tải giao; chịu trách nhiệm về hậu quả mà người làm công; người đại diện gây ra do thực hiện yêu cầu của người kinh doanh vận tải trái với quy định của pháp luật.","isTrue":true}]}'),
 
  (95,'Người thuê vận tải hàng hóa có các nghĩa vụ gì theo quy định được ghi ở dưới đây?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Chuẩn bị đầy đủ các giấy tờ hợp pháp về hàng hóa trước khi giao hàng hóa cho người kinh doanh vận tải; đóng gói hàng hóa đúng quy cách, ghi ký hiệu, mã hiệu hàng hóa đầy đủ, rõ ràng; giao hàng hóa cho người kinh doanh vận tải đúng thời gian, địa điểm và nội dung khác ghi trong giấy gửi hàng.","isTrue":true},{"id":"2","answer":"Thanh toán đủ cước, phí vận tải và chi phí phát sinh cho người kinh doanh vận tải; cử người áp tải hàng hóa trong quá trình vận tải đối với loại hàng hóa bắt buộc phải có người áp tải.","isTrue":true}]}'),
 
  (96,'Người nhận hàng có các nghĩa vụ gì được ghi ở dưới đây?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Nhận hàng hóa đúng thời gian, địa điểm đã thỏa thuận.","isTrue":true},{"id":"2","answer":"Xuất trình giấy vận chuyển và giấy tờ tùy thân cho người kinh doanh vận tải trước khi nhận hàng hóa; thanh toán chi phí phát sinh do nhận hàng chậm.","isTrue":true}]}'),
 
  (97,'Xe vệ sinh môi trường, xe ôtô chở phế thải, vật liệu rời khi hoạt động vận tải trong đô thị phải thực hiện những quy định gì ghi ở dưới đây?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Phải được che phủ kín để không để rơi, vãi trên đường phố; trường hợp để rơi, vãi thì người vận tải phải chịu trách nhiệm thu dọn ngay.","isTrue":true},{"id":"2","answer":"Chỉ được hoạt động vận tải trong thời gian phù hợp trong ngày.","isTrue":true}]}'),
 
  (98,'Đạo đức cơ bản của mỗi con người, của người lái xe thể hiện ở những điểm nào ghi dưới đây?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Tính trung thực và tính nguyên tắc; tính khiêm tốn và lòng dũng cảm.","isTrue":true},{"id":"2","answer":"Tình yêu lao động và tình thương yêu con người.","isTrue":true}]}'),
 
  (99,'Một số nét đẹp về truyền thống đạo đức của mỗi con người Việt Nam theo tư tưởng của Chủ tịch Hồ Chí Minh là?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Cần kiệm: Là lao động cần cù, siêng năng; làm việc có kế hoạch, sáng tạo có năng suất cao, với tinh thần tự lực cánh sinh, không lười biếng, không ỷ lại, không dựa dẫm; tiết kiệm sức lao động, tiết kiệm thì giờ, tiết kiệm tiền của dân, của nước, của bản thân mình, không hao phí, không bừa bãi, không phô trương hình thức.","isTrue":true},{"id":"2","answer":"Liêm chính: Là không tham ô và luôn luôn tôn trọng, giữ gìn của công, của nhân dân; ngay thẳng, không tà, đúng đắn, chính trực, việc phải dù nhỏ cũng làm, việc trái dù nhỏ cũng tránh.","isTrue":true}]}'),
 
  (100,'Khái niệm về đạo đức nghề nghiệp của người lái xe kinh doanh vận tải được hiểu như thế nào?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Luôn ghi nhớ và thực hiện lời dạy của Bác: “Yêu xe như con, quý xăng như máu”; nắm vững quy định của pháp luật, nghiêm chỉnh chấp hành luật giao thông đường bộ, lái xe an toàn; có ý thức tổ chức kỷ luật, chấp hành nội quy, quy chế xây dựng đơn vị nơi mình công tác; có tinh thần hợp tác, giúp đỡ đồng nghiệp; có ý thức bảo vệ môi trường; luôn tu dưỡng bản thân, có lối sống lành mạnh, tác phong công nghiệp.","isTrue":true},{"id":"2","answer":"Đối với hành khách phải kính trọng, thân ái, giúp đỡ; đối với khách hàng phải có trách nhiệm, hợp tác, thực hiện đầy đủ hợp đồng vận tải; đối với người tham gia giao thông phải tôn trọng, bảo vệ.","isTrue":true}]}'),
 
 (101,'Người lái xe kinh doanh vận tải khi thực hiện tốt việc rèn luyện, nâng cao trách nhiệm, đạo đức nghề nghiệp sẽ thu được kết quả như thế nào?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Được khách hàng xã hội tôn trọng; được đồng nghiệp quý mến giúp đở; được doanh nghiệp tín dụng và đóng góp nhiều cho xã hội","isTrue":true},{"id":"2","answer":"Thu hút được khách hàng, góp phần quan trọng trong xây dựng thương hiệu, kinh doanh có hiệu quả cao","isTrue":true}]}'),
 
 (102,'Hãy nêu trách nhiệm cơ bản của các tổ chức trong việc quản lý, giáo dục và nâng cao đạo đức nghề nghiệp của người lái xe?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Tuyên truyền phổ biến các quy định của pháp luật đặc biệt là các quy định của Luật Giao thông đường bộ, các văn bản quản lý về vận tải để người lái xe biết và thực hiện; thường xuyên kiểm tra giám sát người lái xe thực hiện các nội quy, quy chế của đơn vị.","isTrue":true},{"id":"2","answer":"Hiểu tâm lý, nguyện vọng của người lái xe, động viên họ trong lúc khó khăn, thực hiện đầy đủ các quy định của pháp luật về quyền lợi của người lao động, quan tâm đến đời sống vật chất, tinh thần của họ, có chế độ thưởng phạt nghiêm minh giúp họ hoàn thành nhiệm vụ.","isTrue":true}]}'),
 
 (103,'Người lái xe khách, xe buýt cần thực hiện những nhiệm vụ gì ghi ở dưới đây?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Luôn có ý thức về tính tổ chức, kỷ luật, thực hiện nghiêm biểu đồ chạy xe được phân công; thực hiện đúng hành trình, lịch trình, đón trả khách đúng nơi quy định, vận hành phương tiện theo đúng quy trình kỹ thuật đảm bảo an toàn cho người và phương tiện với tinh thần trách nhiệm cao.","isTrue":true},{"id":"2","answer":"Giúp đỡ hành khách khi đi xe, đặc biệt là nhưng người khuyết tật, người già, trẻ em và phụ nữ có thai, có con nhỏ; tôn trọng và có trách nhiệm cao với khách hàng.","isTrue":true}]}'),
 
 (104,'Người lái xe vận tải hàng hóa cần thực hiện những nhiệm vụ gì ghi ở dưới đây?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Thực hiện nghiêm chỉnh những nội dung hợp đồng giữa chủ phương tiện với chủ hàng trong việc vận chuyển và bảo quản hàng hóa trong quá trình vận chuyển; không chở hàng cấm, không xếp hàng quá trọng tải của xe, quá trọng tải cho phép của cầu, đường.","isTrue":true},{"id":"2","answer":"Khi vận chuyển hàng quá khổ, quá tải, hàng nguy hiểm, hàng siêu trường, siêu trọng phải có giấy phép, phải tôn trọng và thực hiện nghiêm ngặt những quy định về vận chuyển hàng quá khổ, quá tải, hàng siêu trường, siêu trọng, hàng nguy hiểm.","isTrue":true}]}'),
 
 (105,'Người lái xe kinh doanh vận tải cần thực hiện những công việc gì ghi ở dưới đây để thường xuyên rèn luyện nâng cao đạo đức nghề nghiệp?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Phải yêu quý xe, quản lý và sử dụng xe tốt; bảo dưỡng xe đúng định kỳ; thực hành tiết kiệm vật tư, nhiên liệu; luôn tu dưỡng bản thân, có lối sống lành mạnh, tác phong làm việc công nghiệp.","isTrue":true},{"id":"2","answer":"Nắm vững các quy định của pháp luật, tự giác chấp hành pháp luật, lái xe an toàn; coi hành khách như người thân, là đối tác tin cậy; có ý thức tổ chức kỷ luật và xây dựng doanh nghiệp vững mạnh; có tinh thần hợp tác, tương trợ, giúp đỡ đồng nghiệp.","isTrue":true}]}'),
 
 (106,'Ngoài các phẩm chất của con người mới xã hội chủ nghĩa, người lái xe cần phải có phẩm chất đạo đức nghề nghiệp gì ghi ở dưới đây?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Tính tổ chức, kỷ luật, tuân thử pháp luật; có tác phong làm việc công nghiệp, giúp đỡ mọi người.","isTrue":true},{"id":"2","answer":"Độc lập công tác và có tinh thần khắc phục khó khăn.","isTrue":true}]}'),
 
 (107,'Người lái xe và nhân viên phục vụ trên xe ôtô vận tải hành khách phải có những trách nhiệm gì theo quy định được ghi ở dưới đây?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Kiểm tra các điều kiện bảo đảm an toàn của xe trước khi khởi hành; có thái độ văn minh, lịch sự, hướng dẫn hành khách ngồi đúng nơi quy định; kiểm tra việc sắp xếp, chằng buộc hành lý, bảo đảm an toàn.","isTrue":true},{"id":"2","answer":"Có biện pháp bảo vệ tính mạng, sức khỏe, tài sản của hành khách đi xe, giữ gìn trật tự, vệ sinh trong xe; đóng cửa lên xuống của xe trước và trong khi xe chạy.","isTrue":true}]}'),
 
 (108,'Khái niệm về văn hóa giao thông được hiểu như thế nào là đúng?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Là sự hiểu biết và chấp hành nghiêm chỉnh pháp luật về giao thông; là ý thức trách nhiệm với cộng đồng khi tham gia giao thông.","isTrue":true},{"id":"2","answer":"Là ứng xử có văn hóa, có tình yêu thương con người trong các tình huống không may xảy ra khi tham gia giao thông.","isTrue":true}]}'),
 
 (109,'Trong các hành vi dưới đây, người lái xe có văn hóa giao thông phải đáp ứng các điều kiện nào?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Có thói quen chấp hành quy tắc giao thông đường bộ; nhường đường cho người đi bộ, người già, trẻ em, người khuyết tật.","isTrue":true},{"id":"2","answer":"Có thái độ ứng xử ôn hòa, văn minh, lịch sự khi xảy ra va chạm giao thông.","isTrue":true}]}'),
 
 (110,'Người có văn hóa giao thông khi điều khiển xe cơ giới tham gia giao thông đường bộ phải đảm bảo các điều kiện gì?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Có giấy phép lái xe phù hợp với loại xe được phép điều khiển; xe cơ giới đảm bảo các quy định về chất lượng, an toàn kỹ thuật và bảo vệ môi trường.","isTrue":true},{"id":"2","answer":"Có giấy chứng nhận bảo hiểm trách nhiệm dân sự của chủ xe cơ giới còn hiệu lực; nộp phí sử dụng đường bộ theo quy định.","isTrue":true}]}'),
 
 (111,'Khi xảy ra tai nạn giao thông, người lái xe và người có mặt tại hiện trường vụ tai nạn phải thực hiện các công việc gì dưới đây?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Đặt các biển cảnh báo hoặc vật báo hiệu ở phía trước và phía sau hiện trường xảy ra tai nạn để cảnh báo; kiểm tra khả năng xảy ra hỏa hoạn do nhiên liệu bị rò rỉ.","isTrue":true},{"id":"2","answer":"Bảo vệ hiện trường vụ tai nạn và cấp cứu người bị thương.","isTrue":true}]}'),
 
 (112,'Khi sơ cứu ban đầu cho người bị tai nạn giao thông đường bộ không còn hô hấp, người lái xe và người có mặt tại hiện trường vụ tai nạn phải thực hiện các công việc gì?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Đặt nạn nhân nằm ngửa, khai thông đường thở của nạn nhân.","isTrue":true},{"id":"2","answer":"Thực hiện các biện pháp hô hấp nhân tạo; thực hiện các biện pháp xoa bóp tim.","isTrue":true}]}'),
 
 (113,'Khi điều khiển xe qua đường sắt, người lái xe cần phải thực hiện các thao tác nào dưới đây?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Dừng xe tạm thời khi có chuông báo hoặc thanh chắn đã hạ xuống.","isTrue":true},{"id":"2","answer":"Kéo phanh tay nếu đường dốc hoặc phải chờ lâu; về số thấp, tăng ga nhẹ để tránh động cơ chết máy.","isTrue":true}]}'),
 
 (114,'Xe ôtô tham gia giao thông đường bộ phải đảm bảo các quy định về chất lượng, an toàn kỹ thuật và bảo vệ môi trường nào ghi dưới đây?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Kính chắn gió, kính cửa phải là loại kính an toàn, bảo đảm tầm nhìn cho người điều khiển, có đủ hệ thống hãm và hệ thống chuyển hướng có hiệu lực, tay lái của xe ôtô ở bên trái xe, có còi với âm lượng đúng quy chuẩn kỹ thuật.","isTrue":true},{"id":"2","answer":"Có đủ đèn chiếu sáng gần và xa, đèn soi biển số, đèn báo hãm, đèn tín hiệu, có đủ bộ phận giảm thanh, giảm khói, các kết cấu phải đủ độ bền và đảm bảo tính năng vận hành ổn định.","isTrue":true}]}'),
 
 (115,'Hãy nêu yêu cầu về an toàn kỹ thuật đối với bánh xe lắp cho ôtô?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Đủ số lượng, đủ áp suất, đúng cỡ lốp của nhà sản xuất hoặc tài liệu kỹ thuật quy định, lốp bánh dẫn hướng 2 bên cùng kiểu hoa lốp, chiều cao hoa lốp đồng đều, không sử dụng lốp đắp, lốp không mòn dẫn dến dấu chỉ báo độ mòn của nhà sản xuất, không nứt vỡ, phồng rộp làm hở sợi mành.","isTrue":true},{"id":"2","answer":"Vành, đĩa vành đúng kiểu loại, không rạn nứt, cong vênh, bánh xe quay trơn, không bó kẹt hoặc cọ sát vào phần khác, moay ơ không bị rơ, lắp đặt chắc chắn, đủ các chi tiết kẹp chặp và phòng lỏng.","isTrue":true}]}'),
 
 (116,'Mục đích của bảo dưỡng thường xuyên đối với xe ôtô có tác dụng gì?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Bảo dưỡng ôtô thường xuyên làm cho ôtô luôn luôn có tính năng kỹ thuật tốt, giảm cường độ hao mòn của các chi tiết.","isTrue":true},{"id":"2","answer":"Ngăn ngừa và phát hiện kịp thời các hư hỏng và sai lệch kỹ thuật để khắc phục, giữ gìn được hình thức bên ngoài.","isTrue":true}]}'),
 
 (117,'Hãy nêu yêu cầu kỹ thuật đối với gạt nước lắp trên ôtô?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Đầy đủ số lượng, lắp đặt chắc chắn, hoạt động bình thường.","isTrue":true},{"id":"2","answer":"Lưỡi gạt không quá mòn, diện tích quét đảm bảo tầm nhìn của người lái.","isTrue":true}]}'),
 
 (118,'Khái niệm “đường bộ” được hiểu như thế nào là đúng? Đường bộ gồm:'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Đường, cầu đường bộ.","isTrue":true},{"id":"2","answer":"Hầm đường bộ, bến phà đường bộ.","isTrue":true},{"id":"3","answer":"Đường, cầu đường bộ, hầm đường bộ, bến phà đường bộ và các công trình phụ trợ khác.","isTrue":false}]}'),
 
 (119,'Khái niệm “công trình đường bộ” được hiểu như thế nào là đúng?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Đường bộ, nơi dừng xe, đỗ xe trên đường bộ, đèn tín hiệu, biển báo hiệu, vạch kẻ đường, cọc tiêu.","isTrue":true},{"id":"2","answer":"Rào chắn, đảo giao thông, dải phân cách, cột cây số, tường, kè, hệ thống thoát nước, trạm kiểm tra trọng tải xe, trạm thu phí và các công trình, thiết bị phụ trợ khác.","isTrue":true},{"id":"3","answer":"Đường bộ, nơi dừng xe, đỗ xe trong khu vực nhà ga đường sắt, cảng hàng không.","isTrue":false}]}'),
 
 (120,'Khi xe kéo xe và xe kéo rơ moóc, những hành vi nào không được phép?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Xe kéo rơ moóc, xe kéo sơ mi rơ moóc kéo thêm rơ moóc hoặc xe khác.","isTrue":true},{"id":"2","answer":"Chở người trên xe được kéo; kéo theo xe thô sơ, xe gắn máy, xe môtô.","isTrue":true},{"id":"3","answer":"Chở hàng trên rơ moóc hoặc sơ mi rơ moóc.","isTrue":false}]}'),
 
 (121,'Khi điều khiển xe môtô hai bánh, xe môtô ba bánh, xe gắn máy, những hành vi nào không được phép?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Buông cả hai tay hoặc đi xe bằng một bánh đối với xe hai bánh, bằng hai bánh đối với xe ba bánh; chạy quá tốc độ quy định.","isTrue":true},{"id":"2","answer":"Sử dụng xe để kéo, đẩy xe khác, vật khác và chở vật cồng kềnh; để chân chống quẹt xuống đất và các hành vi khác gây mất trật tự an toàn giao thông.","isTrue":true},{"id":"3","answer":"Chạy đúng tốc độ quy định và chấp hành đúng quy tắc giao thông đường bộ.","isTrue":false}]}'),
 
 (122,'Xe sau có thể vượt lên bên phải xe khác đang chạy phía trước trong trường hợp nào?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Khi xe phía trước có tín hiệu rẽ trái hoặc đang rẽ trái; khi xe điện đang chạy giữa đường.","isTrue":true},{"id":"2","answer":"Khi xe chuyên dùng đang làm việc trên đường mà không thể vượt bên trái được.","isTrue":true},{"id":"3","answer":"Khi có đủ khoảng trống để vượt xe.","isTrue":false}]}'),
 
 (123,'Xe vận tải hàng có thùng cố định, bảo đảm an toàn giao thông được phép chở người trong những trường hợp nào?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Chở người đi làm nhiệm vụ phòng, chống thiên tai hoặc thực hiện nhiệm vụ khẩn cấp; chở cán bộ chiến sỹ của lực lượng vũ trang nhân dân đi làm nhiệm vụ; chở người bị nạn đi cấp cứu.","isTrue":true},{"id":"2","answer":"Chở công nhân duy tu, bảo dưỡng đường bộ; chở người đi học thực hành lái xe trên xe tập lái; chở người diễu hành theo đoàn; giải toả người ra khỏi khu vực nguy hiểm hoặc trong trường hợp khẩn cấp theo quy định của pháp luật.","isTrue":true},{"id":"3","answer":"Được phép chở người nhưng phải đảm bảo an toàn.","isTrue":false}]}'),
 
 (124,'Khi qua phà, qua cầu phao người lái xe phải làm gì để bảo đảm an toàn?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Đến bến phà, cầu phao các loại xe phải xếp hàng trật tự, đúng nơi quy định, không làm cản trở giao thông; xuống phà, đang ở trên phà và khi lên bến, mọi người phải xuống xe, trừ người điều khiển xe cơ giới, người bệnh, người già yếu và người khuyết tật.","isTrue":true},{"id":"2","answer":"Xe cơ giới phải xuống phà trước, xe thô sơ, người đi bộ xuống phà sau; khi lên bến, người đi bộ lên trước, các phương tiện giao thông lên sau theo hướng dẫn của người điều khiển giao thông.","isTrue":true},{"id":"3","answer":"Xe cơ giới phải xuống phà sau, xe thô sơ, người đi bộ xuống phà trước.","isTrue":false}]}'),
 
 (125,'Xe ôtô kéo xe khác thế nào là đúng quy tắc giao thông?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Được kéo theo một xe ôtô hoặc xe máy chuyên dùng khác khi xe này không tự chạy được và phải đảm bảo an toàn; xe được kéo phải có người điều khiển và hệ thống lái của xe đó phải còn hiệu lực.","isTrue":true},{"id":"2","answer":"Việc nối xe kéo với xe được kéo phải bảo đảm chắc chắn, an toàn; trường hợp hệ thống hãm của xe được kéo không còn hiệu lực thì xe kéo nhau phải nối bằng thanh nối cứng.","isTrue":true},{"id":"3","answer":"Được kéo thêm nhiều xe khác nhưng phải bảo đảm chắc chắn, an toàn; trường hợp hệ thống hãm của xe được kéo không còn hiệu lực thì xe kéo nhau phải nối bằng dây cáp có độ dài phù hợp.","isTrue":false}]}'),
 
 (126,'Người điều khỉển xe môtô hai bánh, xe môtô ba bánh, xe gắn máy không được thực hiện những hành vi nào dưới đây?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Đi xe dàn hàng ngang.","isTrue":true},{"id":"2","answer":"Đi xe vào phần đường dành cho người đi bộ và phương tiện khác; sử dụng ô, điện thoại di động, thiết bị âm thanh (trừ thiết bị trợ thính).","isTrue":true},{"id":"3","answer":"Chở người bệnh đi cấp cứu; trẻ em dưới 14 tuổi, áp giải người có hành vi vi phạm pháp luật.","isTrue":false}]}'),
 
 (127,'Người điều khiển phương tiện và những người liên quan trực tiếp đến vụ tai nạn có trách nhiệm gì?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Dừng ngay phương tiện; giữ nguyên hiện trường; cấp cứu người bị nạn và phải có mặt khi cơ quan có thẩm quyền yêu cầu; cung cấp thông tin xác thực về vụ tai nạn cho cơ quan có thẩm quyền.","isTrue":true},{"id":"2","answer":"Ở lại nơi xảy ra tai nạn cho đến khi người của cơ quan công an đến, trừ trường hợp người điều khiển phương tiện cũng bị thương phải đưa đi cấp cứu hoặc phải đưa người bị nạn đi cấp cứu hoặc vì lý do bị đe dọa đến tính mạng, nhưng phải đến trình báo ngay với cơ quan công an nơi gần nhất.","isTrue":true},{"id":"3","answer":"Rời khỏi hiện trường nơi xảy ra tai nạn giao thông.","isTrue":false}]}'),
 
 (128,'Người lái xe phải giảm tốc độ đến mức không gây nguy hiểm (có thể dừng lại một cách an toàn) trong trường hợp nào?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Khi có biển báo hiệu hạn chế tốc độ hoặc có chướng ngại vật trên đường; khi tầm nhìn bị hạn chế; khi qua nơi đường giao nhau, nơi đường bộ giao nhau với đường sắt, đường vòng, đoạn đường gồ ghề, trơn trượt, cát bụi.","isTrue":true},{"id":"2","answer":"Khi qua cầu, cống hẹp; khi lên gần đỉnh dốc, khi xuống dốc, khi qua trường học, nơi tập trung đông người, nơi đông dân, có nhà cửa gần đường.","isTrue":true},{"id":"3","answer":"Khi điều khiển xe vượt xe khác trên đường quốc lộ.","isTrue":false}]}'),
 
 (129,'Trong các trường hợp dưới đây, để đảm bảo an toàn khi tham gia giao thông, người lái xe môtô cần thực hiện như thế nào?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Phải đội mũ bảo hiểm có cài quai đúng quy cách, mặc quần áo gọn gàng.","isTrue":true},{"id":"2","answer":"Không sử dụng ô, điện thoại di động, thiết bị âm thanh (trừ thiết bị trợ thính).","isTrue":true},{"id":"3","answer":"Buông cả hai tay hoặc đi xe bằng một bánh.","isTrue":false},{"id":"4","answer":"Tất cả các ý nêu trên.","isTrue":false}]}'),
 
 (130,'Người nhận hàng có các quyền gì được ghi ở dưới đây?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Nhận và kiểm tra hàng hóa nhận được theo giấy vận chuyển hoặc chứng từ tương đương khác; yêu cầu người kinh doanh vận tải thanh toán chi phí phát sinh do giao hàng hóa chậm.","isTrue":true},{"id":"2","answer":"Yêu cầu hoặc thông báo cho người thuê vận tải để yêu cầu người kinh doanh vận tải bồi thường thiệt hại do mất mát, hư hỏng hàng hóa, yêu cầu giám định hàng hóa khi cần thiết.","isTrue":true},{"id":"3","answer":"Nhận hàng hóa không theo giấy vận chuyển hoặc chứng từ tương đương khác.","isTrue":false}]}'),
 
 (131,'Trong đô thị, người lái xe buýt, xe taxi khách, xe taxi tải, xe chở hàng phải thực hiện những quy định gì ghi ở dưới đây?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Người lái xe buýt phải chạy đúng tuyến, đúng lịch trình và dừng đỗ đúng nơi quy định; người lái xe chở hàng phải hoạt động đúng tuyến, phạm vi và thời gian quy định đối với từng loại xe.","isTrue":true},{"id":"2","answer":"Người lái xe taxi khách, xe taxi tải đón, trả khách, hàng hóa theo thỏa thuận giữa hành khách, chủ hàng và người lái xe nhưng phải chấp hành các quy định về đảm bảo an toàn giao thông.","isTrue":true},{"id":"3","answer":"Người lái xe taxi khách, xe taxi tải chỉ được đón, trả khách và hàng hóa tại điểm dừng, đỗ của xe buýt.","isTrue":false}]}'),
 
 (132,'Trong các hành vi dưới đây, người lái xe có văn hóa khi tham gia giao thông phải đáp ứng các điều kiện nào?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Có trách nhiệm với bản thân và với cộng đồng; tôn trọng, nhường nhịn người khác.","isTrue":true},{"id":"2","answer":"Tận tình giúp đỡ người tham gia giao thông gặp hoạn nạn; giúp đỡ người khuyết tật, trẻ em và người cao tuổi.","isTrue":true},{"id":"3","answer":"Không cần hai điều kiện nêu trên.","isTrue":false}]}'),
 
 (133,'Khi tránh nhau trên đường hẹp, người lái xe cẩn phải chú ý những điểm nào?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Không nên đi cố vào đường hẹp; xe đi ở phía sườn núi nên dừng lại trước để nhường đường; khi dừng xe nhường đường phải đỗ ngay ngắn.","isTrue":true},{"id":"2","answer":"Trong khi tránh nhau không nên đổi số; khi tránh nhau ban đêm, phải tắt đèn pha bật đèn cốt.","isTrue":true},{"id":"3","answer":"Khi tránh nhau ban đêm, phải bật đèn pha tắt đèn cốt.","isTrue":false}]}'),
 
 (134,'Khi điều khiển ôtô gặp mưa to hoặc sương mù, người lái xe phải làm gì?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Bật đèn chiếu gần và đèn vàng, điều khiển gạt nước,điều khiển ôtô đi với tốc độ chậm để có thể quan sát được.","isTrue":true},{"id":"2","answer":"Tìm chỗ an toàn dừng xe, bật đèn khẩn cấp báo hiệu cho các xe khác biết.","isTrue":true},{"id":"3","answer":"Bật đèn chiếu xa và đèn vàng, điều khiển gạt nước, tăng tốc độ điều khiển ôtô qua khỏi khu vực mưa hoặc sương mù.","isTrue":false}]}'),
 
 (135,'Xe ôtô tham gia giao thông trên đường bộ có phải có đủ các loại đèn gì?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Đèn chiếu sáng gần và xa.","isTrue":true},{"id":"2","answer":"Đèn soi biển số, đèn báo hãm và đèn tín hiệu.","isTrue":true},{"id":"3","answer":"Dàn đèn pha trên nóc xe.","isTrue":false}]}'),
 
 (136,'Khi tránh xe đi ngược chiều, các xe phải nhường đường như thế nào là đúng?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Nơi đường hẹp chỉ đủ cho một xe chạy và có chỗ tránh xe thì xe nào ở gần chỗ tránh hơn phải vào vị trí tránh, nhường đường cho xe kia đi.","isTrue":true},{"id":"2","answer":"Xe xuống dốc phải nhường đường cho xe đang lên dốc; xe nào có chướng ngại vật phía trước phải nhường đường cho xe không có chướng ngại vật đi trước.","isTrue":true},{"id":"3","answer":"Xe lên dốc phải nhường đường cho xe xuống dốc.","isTrue":false}]}'),
 
 (137,'Trên đường có nhiều làn đường, người điều khiển phương tiện tham gia giao thông sử dụng làn đường như thế nào là đúng?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Trên đường có nhiều làn đường cho xe đi cùng chiều được phân biệt bằng vạch kẻ phân làn đường, người điều khiển phương tiện phải cho xe đi trong một làn đường và chỉ được chuyển làn đường ở những nơi cho phép; khi chuyển làn đường phải có tín hiệu báo trước và đảm bảo an toàn.","isTrue":true},{"id":"2","answer":"Phương tiện tham gia giao thông đường bộ di chuyển với tốc độ thấp hơn đi về bên trái.","isTrue":false},{"id":"3","answer":"Trên đường một chiều có vạch kẻ phân làn đường, xe thô sơ phải đi trên làn đường bên phải trong cùng, xe cơ giới, xe máy chuyên dùng đi trên làn đường bên trái; phương tiện tham gia giao thông đường bộ di chuyển với tốc độ thấp hơn đi về bên phải.","isTrue":true}]}'),
 
 (138,'Trong các trường hợp nào sau đây, người lái xe không được vượt xe khác?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Xe bị vượt bất ngờ tăng tốc độ.","isTrue":true},{"id":"2","answer":"Xe bị vượt giảm tốc độ và nhường đường.","isTrue":false},{"id":"3","answer":"Phát hiện có xe đi ngược chiều.","isTrue":true}]}'),
 
 (139,'Người kinh doanh vận tải hành khách có những nghĩa vụ nào theo quy định?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Thực hiện đúng, đầy đủ các cam kết về chất lượng dịch vụ vận tải, các nội dung ghi trong hợp đồng vận tải; mua bảo hiểm cho hành khách; phí bảo hiểm được tính vào giá vé khách hàng.","isTrue":true},{"id":"2","answer":"Không phải bồi thường thiệt hại do người làm công, người đại diện gây ra do thực hiên yêu cầu của người kinh doanh vận tải trái quy định của Luật Giao thông đường bộ.","isTrue":false},{"id":"3","answer":"Giao vé, chứng từ thu cước, phí vận tải cho hành khách; bồi thường thiệt hại do người làm công, người đại diện gây ra do thực hiện yêu cầu của người kinh doanh vận tải trái quy định của Luật Giao thông đường bộ.","isTrue":true}]}'),
 
 (140,'Hành khách có các nghĩa vụ gì khi đi trên xe vận tải hành khách?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Mua vé và trả cước, phí vận tải hành lý mang theo quá mức quy định; có mặt tại nơi xuất phát đúng thời gian thỏa thuận; chấp hành quy định về vận chuyển; thực hiện đúng hướng dẫn của lái xe, nhân viên phục vụ trên xe về các quy định bảo đảm trật tự, an toàn giao thông.","isTrue":true},{"id":"2","answer":"Được mang theo hành lý, hàng hóa mà pháp luật cấm lưu thông khi đã trả cước, phí vận tải.","isTrue":false},{"id":"3","answer":"Không mang theo hành lý, hàng hóa mà pháp luật cấm lưu thông.","isTrue":true}]}'),
 
 (141,'Người kinh doanh vận tải hàng hóa có các quyền gì theo quy định được ghi ở dưới đây?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Yêu cầu người thuê vận tải cung cấp thông tin cần thiết về hàng hóa để ghi vào giấy vận chuyển và có quyền kiểm tra tính xác thực của các thông tin đó.","isTrue":true},{"id":"2","answer":"Yêu cầu xếp hàng hóa vận chuyển trên xe vượt quá chiều cao quy định nhưng phải được chằng buộc chắc chắn.","isTrue":false},{"id":"3","answer":"Yêu cầu người thuê vận tải thanh toán đủ cước, phí vận tải và chi phí phát sinh; yêu cầu người thuê vận tải bồi thường thiệt hại do vi phạm hợp đồng; yêu cầu giám định hàng hóa khi cần thiết.","isTrue":true}]}'),
 
 (142,'Việc vận chuyển động vật sống phải tuân theo những quy định nào ghi ở dưới đây?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Tùy theo loại động vật sống, người kinh doanh vận tải yêu cầu người thuê vận tải áp tải để chăm sóc trong quá trình vận tải; người thuê vận tải chịu trách nhiệm về việc xếp dỡ động vật sống theo hướng dẫn của người kinh doanh vận tải; trường hợp người thuê vận tải không thực hiện được thì phải trả cước, phí xếp, dỡ cho người kinh doanh vận tải.","isTrue":true},{"id":"2","answer":"Việc vận chuyển động vật sống trên đường giao thông phải sử dụng xe cơ giới chuyên dùng.","isTrue":false},{"id":"3","answer":"Việc vận chuyển động vật sống trên đường phải tuân theo quy định của pháp luật về vệ sinh, phòng dịch và bảo vệ môi trường.","isTrue":true}]}'),
 
 (143,'Trong các hành vi dưới đây, người lái xe môtô có văn hóa giao thông phải ứng xử như thế nào?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Điều khiển xe đi bên phải theo chiều đi của mình.","isTrue":true},{"id":"2","answer":"Điều khiển xe đi trên phần đường, làn đường có ít phương tiện tham gia giao thông.","isTrue":false},{"id":"3","answer":"Đi đúng phần đường, làn đường quy định; đội mũ bảo hiểm đúng quy cách.","isTrue":true},{"id":"4","answer":"Đội mũ bảo hiểm ở nơi có biển báo bắt buộc đội mũ bảo hiểm.","isTrue":false}]}'),
 
 (144,'Trong các hành vi dưới đây, người lái xe ôtô có văn hóa giao thông phải ứng xử như thế nào?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Điều khiển xe đi bên phải theo chiều đi của mình; đi đúng phần đường, làn đường quy định; dừng, đỗ xe đúng nơi quy định.","isTrue":true},{"id":"2","answer":"Điều khiển xe đi trên phần đường, làn đường có ít phương tiện giao thông.","isTrue":false},{"id":"3","answer":"Dừng và đỗ xe ở nơi thuận tiện cho việc giao nhận hành khách và hàng hóa.","isTrue":false},{"id":"4","answer":"Đã uống rượu bia thì không lái xe.","isTrue":true}]}'),
 
 (145,'Khi xảy ra tai nạn giao thông, có người bị thương nghiêm trọng, người lái xe và người có mặt tại hiện trường vụ tai nạn phải thực hiện các công việc gì?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Thông báo vụ tai nạn đến cơ quan thi hành pháp luật.","isTrue":true},{"id":"2","answer":"Nhanh chóng lái xe gây tai nạn hoặc đi nhờ xe khác ra khỏi hiện trường vụ tai nạn.","isTrue":false},{"id":"3","answer":"Thực hiện sơ cứu ban đầu trong trường hợp khẩn cấp.","isTrue":true}]}'),
 
 (146,'Khi điều khiển xe ôtô tự đổ, người lái xe cần chú ý những điểm nào?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Khi chạy trên đường xấu, nhiều ổ gà nên chạy chậm để thùng xe không bị lắc mạnh, không gây hiện tượng lệch “ben”; khi chạy vào đường vòng cần giảm tốc độ, không lấy lái gấp và không phanh gấp.","isTrue":true},{"id":"2","answer":"Khi xe chạy trên đường quốc lộ không cần hạ hết thùng xe xuống.","isTrue":false},{"id":"3","answer":"Khi đổ hàng phải chọn vị trí có nền đường cứng và phẳng, dừng hẳn xe, kéo chặt tay phanh; sau đó mới điều khiển cơ cấu nâng “ben” để đổ hàng, đổ xong hàng mới hạ thùng xuống","isTrue":true}]}'),
 
 (147,'Ở những nơi nào không được quay đầu xe?'
 ,'Luật','text',
 '{"data":[{"id":"1","answer":"Phần đường dành cho người đi bộ qua đường, đường hẹp, đường dốc, đoạn đường cong tầm nhìn bị che khuất.","isTrue":true},{"id":"2","answer":"Tại nơi đường bộ giao nhau cùng mức.","isTrue":false},{"id":"3","answer":"Trên cầu, đầu cầu, gầm cầu vượt, ngầm, trong hầm đường bộ, đường cao tốc, tại nơi đường bộ giao nhau cùng mức với đường sắt.","isTrue":true}]}'),
 
 (148,'Những hành vi nào ghi ở dưới đây bị nghiêm cấm?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":false,"answer":"Sử dụng hè phố để đi bộ."},{"id":"2","isTrue":true,"answer":"Sử dụng lòng đường, lề đường trái phép."},{"id":"3","isTrue":true,"answer":"Sử dụng hè phố trái phép."}]}'),
 
 (149,'Ở những nơi nào không được lùi xe?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":false,"answer":"Ở khu vực cho phép đỗ xe."},{"id":"2","isTrue":true,"answer":"Ở khu vực cấm dừng và trên phần đường dành cho người đi bộ qua đường."},{"id":"3","isTrue":true,"answer":"Nơi đường bộ giao nhau, đường bộ giao nhau cùng mức với đường sắt, nơi tầm nhìn bị che khuất, trong hầm đường bộ, đường cao tốc."}]}'),
 
 (150,'Người ngồi trên xe môtô hai bánh, ba bánh, xe gắn máy khi tham gia giao thông không được thực hiện những hành vi nào dưới đây?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":false,"answer":"Đội mũ bảo hiểm và cài quai đúng quy cách."},{"id":"2","isTrue":true,"answer":"Sử dụng ô; bám, kéo hoặc đẩy các phương tiện khác."},{"id":"3","isTrue":true,"answer":"Đứng trên yên, giá đèo hàng hoặc ngồi trên tay lái; các hành vi khác gây mất trật tự an toàn giao thông."}]}'),
 
 (151,'Khi muốn chuyển hướng, người lái xe phải thực hiện như thế nào?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":false,"answer":"Người điều khiển phương tiện phải tăng tốc độ và có tín hiệu báo hướng để rẽ."},{"id":"2","isTrue":true,"answer":"Người điều khiển phương tiện phải giảm tốc độ và có tín hiệu báo hướng rẽ; chỉ cho rẽ chuyển hướng khi quan sát thấy không gây trở ngại hoặc nguy hiểm cho người và phương tiện khác."},{"id":"3","isTrue":true,"answer":"Trong khi chuyển hướng, người lái xe, người điều khiển xe máy chuyên dùng phải nhường quyền đi trướccho người đi bộ, người đi xe đạp đang đi trên phần đường dành riêng cho họ; nhường đường cho các xe đi ngược chiều."}]}'),
 (152,'Khái niệm “người điều khiển giao thông” được hiểu như thế nào là đúng?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":false,"answer":"Là người điều khiển phương tiện tham gia giao thông"},{"id":"2","isTrue":true,"answer":"Là người được giao nhiệm vụ hướng dẫn giao thông tại nơi thi công, nơi ùn tắc giao thông, ở bến phà, tại cầu đường bộ đi chung với đường sắt."},{"id":"3","isTrue":true,"answer":"Là cảnh sát giao thông."},{"id":"4","isTrue":false,"answer":"Tất cả các ý nêu trên."}]}'),

 (153,'Tại ngã ba hoặc ngã tư không có đảo an toàn, người lái xe phải nhường đường như thế nào là đúng trong các trường hợp dưới đây?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":false,"answer":"Nhường đường cho xe đi trên đường nhánh từ bất kỳ hướng nào tới."},{"id":"2","isTrue":true,"answer":"Nhường đường cho người đi bộ đang đi trên phần đường dành cho người đi bộ sang đường."},{"id":"3","isTrue":true,"answer":"Nhường đường cho xe đi trên đường ưu tiên, đường chính từ bất kỳ hướng nào tới, nhường đường cho xe ưu tiên, nhường đường cho xe đi từ bên phải đến."}]}'),
 (154,'Người kinh doanh vận tải hành khách có những quyền hạn nào theo quy định?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":false,"answer":" Tự ý thay đổi vị trí đón, trả khách theo hợp đồng vận chuyển nhưng người đã có vé hoặc người trong danh sách hợp đồng."},{"id":"2","isTrue":true,"answer":"Thu cước, phí vận tải."},{"id":"3","isTrue":true,"answer":"Từ chối vận chuyển trước khi phương tiện rời bến, rời vị trí đón, trả khách theo hợp đồng vận chuyển nhưng người đã có vé hoặc người trong danh sách hợp đồng có hành vi gây rối trật tự công cộng, gây cản trở công việc kinh doanh vận tải, ảnh hưởng đến sức khỏe, tài sản của người khác, gian lận vé hoặc hành khách đang bị dịch bệnh nguy hiểm."}]}'),
 (155,'Việc vận chuyển hàng hóa bằng xe ôtô phải chấp hành các quy định nào ghi ở dưới đây?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":false,"answer":"Xếp hàng hóa vận chuyển trên xe vượt quá chiều cao quy định nhưng phải được chằng buộc chắc chắn."},{"id":"2","isTrue":true,"answer":"Hàng vận chuyển trên xe phải được xếp đặt gọn gàng và phải được chằng buộc chắc chắn."},{"id":"3","isTrue":true,"answer":"Khi vận chuyển hàng rời phải che đậy không để rơi vãi."}]}'),
 (156,'Trong các hành vi dưới đây, người lái xe môtô có văn hóa giao thông phải ứng xử như thế nào?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":false,"answer":"Điêu khiển xe đi trên phần đường, làn đường có ít phương tiện tham gia giao thông, đội mũ bảo hiểm ở nơi có biển báo bắt buộc đội mũ bảo hiểm."},{"id":"2","isTrue":true,"answer":"Chấp hành quy định về tốc độ, đèn tín hiệu, biển báo hiệu, vạch kẻ đường khi lái xe."},{"id":"3","isTrue":true,"answer":"Chấp hành hiệu lệnh, chỉ dẫn của người điều khiển giao thông; nhường đường cho người đi bộ, người già, trẻ em, người khuyết tật"},{"id":"4","isTrue":false,"answer":"Cả ba ý nêu trên."}]}'),
 (157,'Trong các hành vi dưới đây, người lái xe ôtô có văn hóa giao thông phải ứng xử như thế nào?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":false,"answer":"Điều khiển xe đi trên phần đường, làn đường có ít phương tiện tham gia giao thông, đội mũ bảo hiểm ở nơi có biển báo bắt buộc đội mũ bảo hiểm."},{"id":"2","isTrue":true,"answer":" Chấp hành quy định về tốc độ, đèn tín hiệu, biển báo hiệu, vạch kẻ đường khi lái xe, dừng đỗ đúng nơi quy định."},{"id":"3","isTrue":true,"answer":"Chấp hành hiệu lệnh, chỉ dẫn của người điều khiển giao thông; nhường đường cho người đi bộ, người già, trẻ em, người khuyết tật."},{"id":"4","isTrue":false,"answer":"Cả ba ý nêu trên."}]}'),
 (158,'Để đạt được hiệu quả phanh cao nhất, người lái xe môtô phải sử dụng các kỹ năng như thế nào?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":false,"answer":"Sử dụng phanh trước."},{"id":"2","isTrue":false,"answer":"Sử dụng phanh sau"},{"id":"3","isTrue":true,"answer":"Sử dụng đồng thời cả phanh trước và phanh sau"},{"id":"4","isTrue":true,"answer":"Giảm hết ga."}]}'),
 (159,'Khái niệm “làn đường” được hiểu như thế nào là đúng?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":false,"answer":"Là một phần của đường được chia theo chiều ngang của đường, có bề rộng đủ cho xe đỗ an toàn."},{"id":"2","isTrue":true,"answer":" Là một phần của đường xe chạy được chia theo chiều dọc của đường, có bề rộng đủ cho xe chạy an toàn."},{"id":"3","isTrue":false,"answer":"Cả 2 ý trên."}]}'),
 (160,'Khái niệm “khổ giới hạn của đường bộ” được hiểu như thế nào là đúng?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":false,"answer":" Là khoảng trống có kích thước giới hạn về chiều cao, chiều rộngcủa đường, cầu, bến phà, hầm đường bộ để các xe kể cả hàng hóa xếp trên xe đi qua được an toàn."},{"id":"2","isTrue":true,"answer":"Là khoảng trống có kích thước giới hạn về chiều rộng của đường, cầu, bến phà, hầm trên đường bộ để các xe kể cả hàng hóa xếp trên xe đi qua được an toàn."},{"id":"3","isTrue":false,"answer":" Là khoảng trống có kích thước giới hạn về chiều cao của cầu, bến phà, hầm trên đường bộ để các xe đi qua được an toàn."}]}'),
 (161,'Khái niệm “dải phân cách” được hiểu như thế nào là đúng?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":true,"answer":"Là bộ phận của đường để phân chia mặt đường thành hai chiều xe chạy riêng biệt hoặc để phân chia phần đường của xe cơ giới và xe thô sơ."},{"id":"2","isTrue":false,"answer":"Là bộ phận của đường để xác định ranh giới của đất dành cho đường bộ theo chiều ngang của đường."},{"id":"3","isTrue":false,"answer":"Là bộ phận của đường để ngăn cách không cho các loại xe vào những nơi không được phép"}]}'),
 (162,'Việc sản xuất, mua bán, sử dụng biển số xe cơ giới, xe máy chuyên dùng được quy định như thế nào trong luật giao thông đường bộ?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":false,"answer":"Nghiêm cấm sản xuất, được phép sử dụng."},{"id":"2","isTrue":false,"answer":"Nghiêm cấm mua bán, cho phép sử dụng."},{"id":"3","isTrue":true,"answer":"Nghiêm cấm sản xuất, mua bán, sử dụng trái phép."}]}'),
 (163,'Trong khu dân cư, ở nơi nào cho phép người lái xe, người điều khiển xe máy chuyên dùng được quay đầu xe?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":true,"answer":"Ở nơi đường giao nhau và nơi có biển báo cho phép quay đầu xe."},{"id":"2","isTrue":false,"answer":"Nơi có đường rộng để cho các loại xe chạy một chiều."},{"id":"3","isTrue":false,"answer":"Ở bất kỳ nơi nào."}]}'),
 (164,'Trên đường không phân chia thành hai chiều xe chạy riêng biệt, hai xe đi ngược chiều tránh nhau như thế nào?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":false,"answer":"Người điều khiển phải tăng tốc độ."},{"id":"2","isTrue":false,"answer":"Người điều khiển phải cho xe đi về bên trái theo chiều xe chạy của mình."},{"id":"3","isTrue":true,"answer":"Người điều khiển phải giảm tốc độ và cho xe đi về bên phải theo chiều xe chạy của mình."}]}'),
 (165,' Người lái xe được dừng xe, đỗ xe trong các trường hợp nào sau đây?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":true,"answer":"Trên đường có bề rộng đủ cho hai làn xe, ngoài phạm vi 5 méthai bên cổng trụ sở cơ quan, tổ chức."},{"id":"2","isTrue":false,"answer":"Trước cổng và trong phạm vi 5 mét hai bên cổng trụ sở cơ quan, tổ chức."},{"id":"3","isTrue":false,"answer":"Trên đường có bề rộng đủ cho một làn xe, ngoài phạm vi 5 mét hai bên cổng trụ sở cơ quan, tổ chức."}]}'),
 (166,'Những loại xe nào khi đi làm nhiệm vụ khẩn cấp có tín hiệu còi, cờ, đèn theo quy định không bị hạn chế tốc độ, có thể đi vào đường ngược chiều, các đường khác có thể đi được và chỉ phải tuân theo chỉ dẫn của người điều khiển giao thông?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":false,"answer":"Xe chữa cháy, xe hộ đê, xe công an, xe quân sự; đoàn xe đang diễu hành có tổ chức."},{"id":"2","isTrue":true,"answer":"Xe chữa cháy, xe quân sự, xe công an, xe cứu thương đang thực hiện nhiệm vụ cấp cứu, xe hộ đê, đoàn xe có cảnh sát dẫn đường, xe đi làm nhiệm vụ khắc phục sự cố thiên tai, dịch bệnh hoặc xe đi làm nhiệm vụ trong tình trạng khẩn cấp theo quy định của pháp luật."},{"id":"3","isTrue":false,"answer":"Xe chữa cháy, xe quân sự, xe công an, xe cứu thương, xe hộ đê, đoàn xe có cảnh sát dẫn đường, đoàn xe đang diễu hành có tố chức, đoàn xe tang, xe đang làm nhiệm vụ khắc phục sự cố thiên tai theo quy định của pháp luật."}]}'),
 (167,'Tại nơi đường giao nhau, người lái xe đang đi trên đường không ưu tiên phải nhường đường như thế nào?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":false,"answer":"Nhường đường cho xe đi ở bên phải mình tới."},{"id":"2","isTrue":false,"answer":"Nhường đường cho xe đi ở bên trái mình tới."},{"id":"3","isTrue":true,"answer":"Nhường đường cho xe đi trên đường ưu tiên hoặc đường chính từ bất kỳ hướng nào tới."}]}'),
 (168,'Người thuê vận tải hàng hóa có các quyền hạn gì theo quy định được ghi ở dưới đây?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":true,"answer":"Từ chối xếp hàng lên phương tiện mà phương tiện đó không đúng thỏa thuận trong hợp đồng; yêu cầu người kinh doanh vận tải giao hàng đúng thời gian, địa điểm đã thỏa thuận trong hợp đồng; yêu cầu người kinh doanh vận tải bồi thường thiệt hại theo quy định của pháp luật."},{"id":"2","isTrue":false,"answer":"Từ chối xếp hàng hóa lên phương tiện khi thấy phương tiện đó không phù hợp với yêu cầu; yêu cầu người kinh doanh vận tải giao hàng trước thời hạn đã thỏa thuận trong hợp đồng; yêu cầu người kinh doanh vận tải bồi thường thiệt hại khi người kinh doanh vận tải gây thiệt hại."}]}'),
 (169,'Khi điều khiển xe chạy trên đường, người lái xe phải mang theo các loại giấy tờ gì?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":false,"answer":"Giấy phép lái xe, đăng ký xe, giấy phép lưu hành xe."},{"id":"2","isTrue":false,"answer":"Lệnh vận chuyển, đăng ký xe, giấy phép lưu hành xe."},{"id":"3","isTrue":true,"answer":"Giấy phép lái xe phù hợpvới loại xe đó, đăng ký xe, giấy chứng nhận kiểm định kỹ thuật và bảo vệ môi trường, giấy chứng nhận bảo hiểm trách nhiệm dân sự của chủ xe cơ giới và giấy phép vận chuyển (nếu loại xe đó cần phải có)."}]}'),
 (170,'Việc sát hạch cấp giấy phép lái xe ôtô phải thực hiện ở đâu và như thế nào?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":false,"answer":"Tại các cơ sở đào tạo lái xe."},{"id":"2","isTrue":false,"answer":"Tại sản tập lái của cơ sở đào tạo lái xe và phải đảm bảo công khai, minh bạch."},{"id":"3","isTrue":true,"answer":"Tại các trung tâm sát hạch lái xe có đủ điều kiện và phải bảo đảm công khai, minh bạch."}]}'),
 (171,'Khi điều khiển xe cơ giới, người lái xe phải bật đèn tín hiệu báo rẽ trong trường hợp nào sau đây?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":false,"answer":"Khi cho xe chạy thẳng."},{"id":"2","isTrue":true,"answer":"Trước khi thay đổi làn đường."},{"id":"3","isTrue":false,"answer":"Sau khi thay đổi làn đường."}]}'),
 (172,'Trên đường một chiều, trước khi đến vạch người đi bộ qua đường có một xe tải đang dừng trước làn đường bên phải, người lái xe phải làm gì nếu xe của mình đang đi trên làn đường bên trái?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":false,"answer":"Ra tín hiệu cảnh báo và vượt qua xe tải."},{"id":"2","isTrue":true,"answer":"Quan sát, giảm tốc độhoặc dừng lại vì có thể có người đi bộ qua đường, sau đó đi tiếp."},{"id":"3","isTrue":false,"answer":"Nhanh chóng vượt qua nếu không nhìn thấy người đi bộ qua đường từ bên trái."}]}'),
 (173,'Thời gian làm việc trong một ngày của người lái xe được quy định là bao nhiêu?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":false,"answer":"Không quá 8 giờ và không được lái xe liên tục quá 5 giờ."},{"id":"2","isTrue":true,"answer":"Không quá 10 giờ và không được lái xe liên tục quá 4 giờ."},{"id":"3","isTrue":false,"answer":"Không quá 8 giờ và không được lái xe liên tục quá 3 giờ."}]}'),
 (174,'Hàng siêu trường, siêu trọng được hiểu như thế nào là đúng?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":false,"answer":"Là hàng có kích thước hoặc trọng lượng vượt quá kích thước hoặc trọng lượng của xe."},{"id":"2","isTrue":false,"answer":"Là hàng có kích thước hoặc trọng lượng vượt quá giới hạn quy định nhưng có thể tháo rời."},{"id":"3","isTrue":true,"answer":"Là hàng có kích thước hoặc trọng lượng vượt quá giới hạn quy định nhưng không thể tháo rời ra được."}]}'),
 (175,'Người lái xe cố tình vi phạm luật giao thông đường bộ, không phân biệt làn đường, vạch phân làn, phóng nhanh, vượt ẩu, vượt đèn đỏ, đi vào đường cấm, đường một chiều được coi là hành vi nào trong các hành vi sau đây?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":false,"answer":"Là bình thường."},{"id":"2","isTrue":true,"answer":"Là thiếu văn hóa giao thông."},{"id":"3","isTrue":false,"answer":"Là có văn hóa giao thông."}]}'),
 (176,'Khi nhả phanh tay, người lái xe cần phải thực hiện các thao tác nào?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":false,"answer":"Dùng lực tay phải kéo cần phanh tay về phía sau hết hành trình; nếu khóa hãm bị kẹt cứng phải đẩy mạnh phanh tay về phía trước, sau đó bóp khóa hãm."},{"id":"2","isTrue":true,"answer":"Dùng lực tay phải bóp khóa hãmđẩy cần phanh tay về phía trước hết hành trình; nếu khóa hãm bị kẹt cứng phải kéo cần phanh tay về phía sau đồng thời bóp khóa hãm."},{"id":"3","isTrue":false,"answer":"Dùng lực tay phải đẩy cần phanh tay về phía trước hết hành trình; nếu khóa hãm bị kẹt cứng phải đẩy mạnh cần phanh tay vè phía trước, sau đó bóp khóa hãm."}]}'),
 (177,'Khi khởi hành ôtô trên đường bằng, người lái xe cần thực hiện các thao tác nào theo trình tự dưới đây?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":false,"answer":"Kiểm tra an toàn xung quanh xe ôtô; nhả từ từ đến 1/2 hành trình bàn đạp ly hợp và giữ trong khoảng 3 giây; vào số 1; nhả hết phanh tay, báo hiệu bằng còi, đèn trước khi xuất phát; tăng ga đủ để xuất phát, sau đó vừa tăng ga vừa nhả hết ly hợp để cho xe ôtô chuyển động."},{"id":"2","isTrue":true,"answer":"Kiểm tra an toàn xung quanh xe ôtô;đạp ly hợp hết hành trình; vào số 1; nhả hết phanh tay, báo hiệu bằng còi, đèn trước khi xuất phát; tăng ga đủ để xuất phát; nhả từ từ đến 1/2 hành trình bàn đạp ly hợp và giữ trong khoảng 3 giãy, sau đó vừa tăng ga vừa nhả hết ly hợp để cho xe ôtô chuyển động."}]}'),
 (178,'Khi xuống dốc, muốn dừng xe, người lái xe cần thực hiện thao tác nào?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":true,"answer":"Có tín hiệu rẽ phải, điều khiển xe sát vào lề đường bên phải; đạp phanhsớm và mạnh hơn lúc dừng xe trên đường bằng để xe đi với tốc độ chậm đến mức dễ dàng dừng lại được; về số 1, đạp nửa ly hợp cho xe đến chỗ dừng; khi xe đã dừng, về số không(0), đạp phanh chân vè kéo tay phanh."},{"id":"2","isTrue":false,"answer":"Có tín hiệu rẽ phải, điều khiển xe sát vào lề đường bên phải; đạp hết hành trình ly hợp và nhả bàn đạp ga để xe đi với tốc độ chậm đến mức dễ dàng dừng lại được tại chỗ dừng; khi xe đã dừng, đạp và giữ phanh chân."},{"id":"3","isTrue":false,"answer":"Có tín hiệu rẽ phải, điều khiển xe sát vào lề đường bên phải; đạp phanh sớm và mạnh hơn lúc dừng xe trên đường bằng để xe đi với tốc độ chậm đến mức dễ dàng dừng lại được; về số không (0) để xe đi đến chỗ dừng, khi xe đã dừng, kéo phanh tay."}]}'),
 (179,'Khi điều khiển xe vượt qua rãnh lớn cắt ngang mặt đường, người lái xe cần thực hiện các thao tác nào?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":false,"answer":"Gài số một (1) và từ từ cho hai bánh xe trước xuống rãnh, tăng ga cho hai bánh xe trước vượt lên khỏi rãnh, tăng số, tăng tốc độ để bánh xe sau vượt rãnh."},{"id":"2","isTrue":false,"answer":"Tăng ga, tăng số để hai bánh xe trước và bánh xe sau vượt qua khỏi rãnh và chạy bình thường."},{"id":"3","isTrue":true,"answer":"Gài số một (1) và từ từ cho hai bánh xe trước xuống rãnh, tăng ga cho hai bánh xe trước vượt lên khỏi rãnh, tiếp tục để bánh xe sau từ từ xuống rãnh rồi tăng dần gacho xe ôtô lên khỏi rãnh."}]}'),
 (180,'Khi điều khiển xe ôtô trên đường trơn cần chú ý những điểm gì?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":false,"answer":"Giữ vững tay lái cho xe đi đúng vệt bánh xe đi trước, sử dụng số thấp đi chậm, giữ đều ga, đánh lái ngoặt và phanh gấp khi cần thiết"},{"id":"2","isTrue":true,"answer":"Giữ vững tay lái cho xe đi đúng vệt bánh xe đi trước, sử dụng số thấp đi chậm, giữ đều ga, không lấy nhiều lái, không đánh lái ngoặt và phanh gấp."}]}'),
 (181,'Thứ tự xe nào được quyền ưu tiên đi trước khi qua đường giao nhau?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":false,"answer":"Xe cứu thương đang thực hiện nhiệm vụ cấp cứu."},{"id":"2","isTrue":false,"answer":"Xe quân sự, xe công an đi làm nhiệm vụ đặc biệt khẩn cấp; đoàn xe có cảnh sát dẫn đường."},{"id":"3","isTrue":true,"answer":"Xe chữa cháy đi làm nhiệm vụ."}]}'),
 (182,'Khái niệm “phương tiện giao thông cơ giới đường bộ” được hiểu thế nào là đúng?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":false,"answer":"Gồm xe ôtô; máy kéo; xe môtô hai bánh; xe môtô ba bánh; xe gắn máy; xe cơ giới dùng cho người khuyết tật và xe máy chuyên dùng."},{"id":"2","isTrue":true,"answer":"Gồm xe ôtô; máy kéo; rơ moóc hoặc sơ mi rơ moóc được kéo bởi xe ôtô, máy kéo; xe môtô hai bánh; xe môtô ba bánh, xe gắn máy (kể cả xe máy điện) và các loại xe tương tự."}]}'),
 (183,'Khái niệm “phương tiện giao thông thô sơ đường bộ” được hiểu thế nào là đúng?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":true,"answer":"Gồm xe đạp (kể cả xe đạp máy), xe xích lô, xe lăn dùng cho người khuyết tật, xe súc vật kéo và các loại xe tương tự."},{"id":"2","isTrue":false,"answer":"Gồm xe ôtô; máy kéo; xe môtô hai bánh; xe môtô ba bánh; xe gắn máy; xe cơ giới dùng cho người khuyết tật và xe máy chuyên dùng."},{"id":"3","isTrue":false,"answer":"Gồm xe ôtô; máy kéo; rơ moóc hoặc sơ mi rơ moóc được kéo bởi xe ôtô, máy kéo; xe môtô hai bánh; xe môtô ba bánh, xe gắn máy (kể cả xe máy điện) và các loại xe tương tự."}]}'),
 (184,'“Phương tiện giao thông đường bộ” gồm những loại nào?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":true,"answer":"Phương tiện giao thông cơ giới đường bộ, phương tiện giao thông thô sơ đường bộ."},{"id":"2","isTrue":false,"answer":"Phương tiện giao thông thô sơ đường bộ; phương tiện giao thông cơ giới đường bộ và xe máy chuyên dùng."},{"id":"3","isTrue":false,"answer":"Cả hai ý nêu trên."}]}'),
 (185,'“Vạch kẻ đường” được hiểu thế nào là đúng?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":true,"answer":"Vạch kẻ đường là vạch chỉ sự phân chia làn đường, vị trí hoặc hướng đi, vị trí dừng lại."},{"id":"2","isTrue":false,"answer":"Vạch kẻ đường là vạch chỉ sự phân biệt vị trí dừng, đỗ trên đường"},{"id":"3","isTrue":false,"answer":"Tất cả các ý nêu trên"}]}'),
 (186,'Khái niệm “đường phố’” được hiểu như thế nào là đúng?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":true,"answer":"Đường phố là đường đô thị, gồm lòng đường và hè phố."},{"id":"2","isTrue":false,"answer":"Đường phố là đường bộ ngoài đô thị có lòng đường đủ rộng cho các phương tiện giao thông qua lại."},{"id":"3","isTrue":false,"answer":"Cả 2 ý nêu trên."}]}'),
 (187,' Khái niệm “dừng xe” được hiểu như thế nào là đúng quy tắc giao thông?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":false,"answer":"Dừng xe là trạng thái đứng yên của phương tiện giao thông không giới hạn thời gian để cho người lên, xuống phương tiện đó, xếp dỡ hàng hóa hoặc thực hiện công việc khác."},{"id":"2","isTrue":true,"answer":"Dừng xe là trạng thái đứng yên tạm thờicủa phương tiện giao thông trong một khoảng thời gian cần thiết đủ để cho người lên, xuống phương tiện, xếp dỡ hàng hóa hoặc thực hiện công việc khác."},{"id":"3","isTrue":false,"answer":"Cả hai ý nêu trên."}]}'),
 (188,' Khái niệm “đỗ xe” được hiểu như thế nào là đúng quy tắc giao thông?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":false,"answer":"Là trạng thái đứng yên của phương tiện giao thông có giới hạn trong một khoảng thời gian cần thiết đủ để cho người lên, xuống phương tiện đó, xếp dỡ hàng hóa hoặc thực hiện công việc khác."},{"id":"2","isTrue":true,"answer":"Là trạng thái đứng yên của phương tiện giao thôngkhông giới hạn thời gian."},{"id":"3","isTrue":false,"answer":"Cả hai ý nêu trên."}]}'),
 (189,'Khái niệm “đường chính” được hiểu như thế nào là đúng?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":true,"answer":"Đường chính là đường bảo đảm giao thông chủ yếu trong khu vực."},{"id":"2","isTrue":false,"answer":"Đường chính là đường quốc lộ được đặt tên, số hiệu do cơ quan có thẩm quyền phân loại và quyết định."},{"id":"3","isTrue":false,"answer":"Đường chính là đường trong đô thị hoặc đường tỉnh."}]}'),
 (190,'Tại nơi đường giao nhau, khi đèn điều khiển giao thông có tín hiệu vàng, người điều khiển phương tiện phải thực hiện như thế nào?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":true,"answer":"Phải cho xe dừng lại trước vạch dừng, trừ trường hợp đã đi quá vạch dừng thì được đi tiếp; trong trường hợp tín hiệu vàng nhấp nháy là được đi nhưng phải giảm tốc độ, chú ý quan sát, nhường đường cho người đi bộ qua đường."},{"id":"2","isTrue":false,"answer":"Phải cho xe nhanh chóng vượt qua vạch dừng để đi qua đường giao nhau và chú ý đảm bảo an toàn; khi đèn tín hiệu vàng nhấp nháy là được đi nhưng phải giảm tốc độ, chú ý quan sát người đi bộ để bảo đảm an toàn."},{"id":"3","isTrue":false,"answer":"Cả hai ý nêu trên."}]}'),

  (191,'Người lái xe phải giảm tốc độ thấp hơn tốc độ tối đa cho phép đến mức không nguy hiểm trong các trường hợp nào dưới đây?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":false,"answer":"Khi vượt xe khác"},{"id":"2","isTrue":true,"answer":"Khi cho xe chạy sau vượt."},{"id":"3","isTrue":false,"answer":"Cả hai ý nêu trên"}]}'),
  (192,'Khái niệm “hàng nguy hiểm” được hiểu như thế nào là đúng?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":false,"answer":"Là hàng hóa dễ gây cháy, nổ và cấm vận chuyển trên đường vì có khả năng gây nguy hại cho con người, trong trường hợp đặc biệt cần vận chuyển phải có các xe chuyên dùng để bảo đảm an toàn."},{"id":"2","isTrue":true,"answer":"Là hàng hóacó chứa các chất nguy hiểm, khi chở trên đường có khả năng nguy hại tới tính mạng, sức khoẻ con gười, môi trường, an toàn và an ninh quốc gia."},{"id":"3","isTrue":false,"answer":"Cả ý trả lời 1 và 2"}]}'),
  (193,'Khái niệm xe quá tải trọng của đường bộ được hiểu như thế nào là đúng?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":true,"answer":"Là xe có tổng trọng lượng vượt quá khả năng chịu tải của cầu hoặc có tải trọng trục xe vượt quá khả năng chịu tải của đường."},{"id":"2","isTrue":false,"answer":"Là xe có trọng lượng hàng hóa vượt quá khả năng chịu tải của cầu hoặc có tải trọng trục xe vượt quá khả năng chịu tải của đường."},{"id":"3","isTrue":false,"answer":"Cả hai ý nêu trên."}]}'),
  (194,'Trên đường một chiều có vạch kẻ phân làn đường, xe thô sơ và xe cơ giới phải đi như thế nào là đúng quy tắc giao thông?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":false,"answer":"Tăng tốc độ và ra hiệu cho xe sau vượt, không được gây trở ngại cho xe sau vượt."},{"id":"2","isTrue":true,"answer":"Người điều khiển phương tiện phía trước phải giảm tốc độ, đi sát về bên phải của phần đường xe chạy cho đến khi xe sau đã vượt qua, không được gây trở ngại cho xe sau vượt."},{"id":"3","isTrue":false,"answer":"Cho xe tránh về bên trái mình và ra hiệu cho xe sau vượt; nếu có chướng ngại vật phía trước hoặc thiếu điều kiện an toàn chưa cho vượt được phải ra hiệu cho xe sau biết; cấm gây trở ngại cho xe xin vượt."}]}'),
  (196,'Khái niệm “đường ưu tiên” được hiểu như thế nào là đúng?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":false,"answer":"Đường ưu tiên là đường mà trên đó phương tiên tham gia giao thông đường bộ phải nhường đường cho các phương tiện đến từ hướng khác khi qua nơi đường giao nhau, có thể được cắm biển báo hiệu đường ưu tiên."},{"id":"2","isTrue":true,"answer":"Đường ưu tiên là đường mà trên đó phương tiện tham gia giao thông đường bộ được các phương tiện đến từ hướng khác nhường đường khi qua nơi đường giao nhau, được cắm biển báo hiệu đường ưu tiên."},{"id":"3","isTrue":false,"answer":"Đường ưu tiên là đường chỉ dành cho một số loại phương tiện tham gia giao thông, được cắm biển báo hiệu đường ưu tiên."}]}'),
  (195,'Khi điều khiển xe chạy trên đường biết có xe sau xin vượt nếu đủ điểu kiện an toàn người lái xe phải làm gì?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":false,"answer":"Tăng tốc độ và ra hiệu cho xe sau vượt, không được gây trở ngại cho xe sau vượt."},{"id":"2","isTrue":true,"answer":"Người điều khiển phương tiện phía trước phải giảm tốc độ, đi sát về bên phảicủa phần đường xe chạy cho đến khi xe sau đã vượt qua, không được gây trở ngại cho xe sau vượt."},{"id":"3","isTrue":false,"answer":"Cho xe tránh về bên trái mình và ra hiệu cho xe sau vượt; nếu có chướng ngại vật phía trước hoặc thiếu điều kiện an toàn chưa cho vượt được phải ra hiệu cho xe sau biết; cấm gây trở ngại cho xe xin vượt."}]}'),
  (197,'Khái niệm “phần đường xe chạy” được hiểu như thế nào là đúng?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":true,"answer":"Là phần của đường bộ được sử dụng cho các phương tiện giao thông qua lại."},{"id":"2","isTrue":false,"answer":"Là phần đường bộ được sử dụng cho các phương tiện giao thông qua lại, dải đất dọc hai bên đường để bảo đảm an toàn giao thông."},{"id":"3","isTrue":false,"answer":"Là phần đường bộ được sử dụng cho các phương tiện giao thông qua lại, các công trình, thiết bị phụ trợ khác và dải đất dọc hai bên đường để bảo đảm an toàn giao thông."}]}'),
  (198,'Bảo đảm trật tự, an toàn giao thông đường bộ là trách nhiệm của ai?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":false,"answer":"Là trách nhiệm của ngành Giao thông vận tải và ngành Công an."},{"id":"2","isTrue":true,"answer":"Là trách nhiệm của cơ quan, tổ chức, cá nhân."},{"id":"3","isTrue":false,"answer":"Là trách nhiệm của cảnh sát giao thòng."}]}'),
  (199,'Tại nơi có biển hiệu cố định lại có báo hiệu tạm thời thì người tham gia giao thông phải chấp hành hiệu lệnh của báo hiệu nào?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":false,"answer":"Biển báo hiệu cố định."},{"id":"2","isTrue":true,"answer":"Báo hiệu tạm thời."}]}'),
  (200,'Người điều khiển phương tiện tham gia giao thông trong hầm đường bộ ngoài việc phải tuân thủ các quy tắc giao thông còn phải thực hiện những quy định nào dưới đây?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":true,"answer":"Xe cơ giới, xe máy chuyên dùng phải bật đèn; xe thô sơ phải bật đèn hoặc có vật phát sáng báo hiệu; chỉ được dừng xe, đỗ xe ở nơi quy định."},{"id":"2","isTrue":false,"answer":"Xe cơ giới phải bật đèn ngay cả khi đường hầm sáng; phải cho xe chạy trên một làn đường và chỉ chuyển làn ở nơi được phép; được quay đầu xe, lùi xe khi cần thiết."},{"id":"3","isTrue":false,"answer":"Xe máy chuyên dùng phải bật đèn ngay cả khi đường hầm sáng; phải cho xe chạy trên một làn đường và chỉ chuyển làn ở nơi được phép; được quay đầu xe, lùi xe khi cần thiết."}]}'),
  (201,'Người điều khiển, người ngồi trên xe đạp máy phải đội mũ bảo hiểm có cài quai đúng quy cách khi nào?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":true,"answer":"Khi tham gia giao thông đường bộ."},{"id":"2","isTrue":false,"answer":"Chỉ khi tham gia giao thông trên đường quốc lộ; khu vực đô thị."}]}'),
  (202,'Người ngồi trên xe môtô 2 bánh, xe môtô 3 bánh, xe gắn máy phải đội mũ bảo hiểm có cài quai đúng quy cách khi nào?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":true,"answer":"Khi tham gia giao thông đường bộ."},{"id":"2","isTrue":false,"answer":"Chỉ khi đi trên đường cao tốc."}]}'),
  (203,'Trong trường hợp đặc biệt, xe quá tải trọng, quá khổ giới hạn của đường bộ, xe bánh xích có thể lưu hành trên đường nhưng phải xin phép cơ quan nào?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":false,"answer":"Cơ quan cảnh sát giao thông có thẩm quyền."},{"id":"2","isTrue":true,"answer":"Cơ quan quản lý giao thông có thẩm quyền."},{"id":"3","isTrue":false,"answer":"Ủy ban nhân dân tỉnh."}]}'),
  (204,'Cơ quan nào quy định các đoạn đường cấm đi, đường đi một chiều, nơi cấm dừng, cấm đỗ, cấm quay đầu xe, lắp đặt báo hiệu đường bộ thuộc địa phương quản lý?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":false,"answer":"Cơ quan quản lý giao thông vận tải."},{"id":"2","isTrue":true,"answer":"Ủy ban nhân dân cấp tỉnh."},{"id":"3","isTrue":false,"answer":"Cơ quan cảnh sát giao thông đường bộ."},{"id":"4","isTrue":false,"answer":"Thanh tra giao thông đường bộ."}]}'),
  (205,'Người lái xe phải giảm tốc độ thấp hơn tốc độ tối đa cho phép đến mức không nguy hiểm trong các trường hợp nào dưới đây?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":true,"answer":"Có biển báo nguy hiểm."},{"id":"2","isTrue":false,"answer":"Có biển cấm dừng xe, đỗ xe."},{"id":"3","isTrue":false,"answer":"Có biển báo cấm vượt."}]}'),
  (206,'Đường bộ trong khu vực đông dân cư gồm những đường nào?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":false,"answer":"Đường bộ nằm trong khu vực nội thành phố, nội thị xã, nội thị trấn, khu công nghiệp có đông người và phương tiện tham gia giao thông."},{"id":"2","isTrue":true,"answer":"Đường bộ nằm trong khu vực nội thành phố, nội thị xã và những đoạn đường bộ được xác định từ vị trí có hiệu lực của biển báo hiệu “Bắt đầu khu đông dân cư đến vị trí có hiệu lực của biển báo hiệu “Hết khu đông dân cư”."},{"id":"3","isTrue":false,"answer":"Đường bộ có đông người, phương tiện tham gia giao thông và những đoạn đường bộ được xác định từ vị trí có hiệu lực của biển báo hiệu “Bắt đầu khu đông dân cư” đến vị trí có hiệu lực của biển báo hiệu “Hết khu đông dân cư”."}]}'),
  (207,'Việc nối kéo với xe được kéo trong trường hợp hệ thống hãm của xe được kéo không còn hiệu lực thì phải dùng cách nào?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":false,"answer":"Dùng dây cáp có độ dài 10m."},{"id":"2","isTrue":false,"answer":"Dùng dây cáp có độ dài 5m."},{"id":"3","isTrue":true,"answer":"Dùng thanh nối cứng."}]}'),
  (208,'Tại nơi đường bộ giao nhau cùng mức với đường sắt chỉ có đèn tín hiệu hoặc chuông báo hiệu, khi đèn tín hiệu màu đỏ đã bật sáng hoặc có tiếng chuông báo hiệu, người tham gia giao thông phải dừng lại ngay và giữ khoảng cách tối thiểu bao nhiêu mét tính từ ray gần nhất?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":true,"answer":"5,00 m"},{"id":"2","isTrue":false,"answer":"4,00 m"},{"id":"3","isTrue":false,"answer":"3,00 m"},{"id":"4","isTrue":false,"answer":"7,00 m"}]}'),
  (209,'Âm lượng của còi điện lắp trên ôtô (đo ở độ cao 1,2m với khoảng cách 2m tính từ đầu xe) là bao nhiêu?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":true,"answer":"Không nhỏ hơn 90dB (A), không lớn hơn 115dB (A)."},{"id":"2","isTrue":false,"answer":"Không nhỏ hơn 80dB (A), không lớn hơn 105dB (A)."},{"id":"3","isTrue":false,"answer":"Không nhỏ hơn 70dB (A), không lớn hơn 90dB (A)."}]}'),
  (210,'Khi sơ cứu người bị tai nạn giao thông đường bộ, có vết thương chảy máu ngoài đỏ sẫm trào đều trên mặt vết thương, máu chảy ra số lượng ít bạn phải làm gì?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":true,"answer":"Thực hiện cầm máu trực tiếp."},{"id":"2","isTrue":false,"answer":"Thực hiện cầm máu không trực tiếp (chặn động mạch)."},{"id":"3","isTrue":false,"answer":"Thực hiện cầm máu bằng garo."}]}'),
  (211,'Khi sơ cứu người bị tai nạn giao thông đường bộ, có vết thương chảy máu ngoài màu đỏ tươi phun thành tia và phun mạnh khi mạch đập bạn phải làm gì?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":false,"answer":"Thực hiện cầm máu trực tiếp"},{"id":"2","isTrue":true,"answer":"Thực hiện cầm máu không trực tiếp (chặn động mạch)."},{"id":"3","isTrue":true,"answer":"Thực hiện cầm máu bằng garo."}]}'),
  (212,'Vận tải đa phương thức được hiểu như thế nào là đúng?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":false,"answer":"Là việc vận chuyển hàng hóa từ địa điểm nhận hàng đến địa điểm trả hàng cho người nhận hàng bằng phương thức vận tải bằng đường bộ trên cơ sở một hợp đồng vận tải đa phương thức."},{"id":"2","isTrue":true,"answer":"Là việc vận chuyển hàng hóa từ địa điểm nhận hàng đến địa điểm trả hàng cho người nhận hàng bằng ít nhất hai phương thức vận tải, trong đó có phương thức vận tải bằng đường bộ trên cơ sở một hợp đồng vận tải đa phương thức."},{"id":"3","isTrue":false,"answer":"Ý trả lời 1 và 2"}]}'),
  (213,'Khi xếp hàng hóa vượt phía trước và phía sau của xe ôtô chở hàng tham gia giao thông, ban ngày và ban đêm phải có cờ, đèn báo hiệu như thế nào là đúng quy tắc giao thông?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":false,"answer":"Ban ngày phải có cờ báo hiệu màu xanh, ban đêm hoặc khi trời tối phải có đèn sáng báo hiệu."},{"id":"2","isTrue":true,"answer":"Ban ngày phải có cờ báo hiệu màu đỏ, ban đêm hoặc khi trời tối phải có đèn đỏbáo hiệu."},{"id":"3","isTrue":false,"answer":"Tất cả các ý nêu trên."}]}'),
  (214,'Xe vận chuyển hàng nguy hiểm phải chấp hành những quy định nào ghi ở dưới đây?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":true,"answer":"Phải có giấy phép do cơ quan có thẩm quyền cấp, xe vận chuyển hàng nguy hiểm không được dừng, đỗ nơi đông người, những nơi dễ xảy ra nguy hiểm."},{"id":"2","isTrue":false,"answer":"Phải được chuyên chở trên xe chuyên dùng để vận chuyển hàng nguy hiểm; xe vận chuyển hàng nguy hiểm phải chạy liên tục không được dừng, đỗ trong quá trình vận chuyển."},{"id":"3","isTrue":false,"answer":"Cả 02 ý nêu trên"}]}'),
  (215,'Hoạt động vận tải đường bộ được hiểu như thế nào là đúng?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":false,"answer":"Hoạt động vận tải đường bộ là hoạt động kinh doanh vận tải đường bộ; kinh doanh vận tải đường bộ là ngành nghề kinh doanh có điều kiện theo quy định của pháp luật."},{"id":"2","isTrue":true,"answer":"Hoạt động vận tải đường bộ gồm hoạt động vận tải không kinh doanhvà hoạt động kinh doanhvận tải đường bộ; kinh doanh vận tải đường bộ là ngành nghề kinh doanh có điều kiện theo quy định của pháp luật."},{"id":"3","isTrue":false,"answer":"Cả 02 ý nêu trên"}]}'),
  (216,'Hành khách có các quyền gì khi đi trên xe vận tải hành khách?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":true,"answer":"Được vận chuyển theo đúng hợp đồng vận tải, cam kết của người kinh doanh về chất lượng vận tải; được miền cước hành lý với trọng lượng không quá 20 kgvà với kích thước phù hợp với thiết kế của xe; được từ chối chuyến đi trước khi phương tiện khởi hành và được trả lại tiền vé theo quy định của Bộ Giao thông vận tải."},{"id":"2","isTrue":false,"answer":"Được vận chuyển theo đúng hợp đồng vận tải, cam kết của người kinh doanh về vận tải; được miễn cước hành lý với trọng lượng không quá 50 kg và với kích thước không quá cồng kềnh; được từ chối chuyến đi trước khi phương tiện khởi hành và được trả lại tiền vé."},{"id":"3","isTrue":false,"answer":"Tất cả các quyền nêu trên."}]}'),
  (217,'Trong các nguyên nhân nêu dưới đây, nguyên nhân nào làm động cơ diezen không nổ?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":true,"answer":"Hết nhiên liệu, lõi lọc nhiên liệu bị tắc, lọc khí bị tắc, nhiên liệu lẫn không khí."},{"id":"2","isTrue":false,"answer":"Hết nhiên liệu, lõi lọc nhiên liệu bị tắc, lọc khí bị tắc, nhiên liệu lẫn không khí, không có tia lửa điện"},{"id":"3","isTrue":false,"answer":"Hết nhiên liệu, lõi lọc nhiên liệu bị tắc, lọc khí bị tắc, nhiên liệu lẫn không khí và nước, không có tia lửa điện"}]}'),
  (218,'Thế nào là động cơ 2 kỳ?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":true,"answer":"Là loại động cơ: để hoàn thành một chu trình công tác của động cơ, pít tông thực hiện 2 (hai) hành trình, trong đó có 1 lần sinh công."},{"id":"2","isTrue":false,"answer":"Là loại động cơ: để hoàn thành 1 chu trình công tác của động cơ, pít tông thực hiện 4 (bốn) hành trình, trong đó có 1 lần sinh công."}]}'),
  (219,'Thế nào là động cơ 4 kỳ?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":false,"answer":"Là loại động cơ: để hoàn thành một chu trình công tác của động cơ, pít tông thực hiện 2 (hai) hành trình, trong đó có 1 lần sinh công."},{"id":"2","isTrue":true,"answer":"Là loại động cơ: để hoàn thành 1 chu trình công tác của động cơ, pít tông thực hiện 4 (bốn) hành trình, trong đó có 1 lần sinh công."}]}'),
  (220,'Hãy nêu công dụng hệ thống truyền lực của ôtô?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":true,"answer":"Dùng để truyền mô men quaytừ động cơ tới các bánh xe chủ động của ôtô."},{"id":"2","isTrue":false,"answer":"Dùng thay đổi hướng chuyển động hoặc giữ cho ôtô chuyển động ổn định theo hướng xác định"},{"id":"3","isTrue":false,"answer":"Dùng để giảm tốc độ, dừng chuyển động của ôtô."}]}'),
  (221,'Hãy nêu công dụng ly hợp của ôtô?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":false,"answer":"Dùng để truyền mô men xoắn giữa các trục không cùng nằm trên một đường thẳng và góc lệch trục luôn thay đổi trong quá trình ôtô chuyển động."},{"id":"2","isTrue":true,"answer":"Dùng để truyền hoặc ngắt truyền động từ động cơ ôtô đến hộp số của ôtô trong những trường hợp cần thiết."},{"id":"3","isTrue":false,"answer":"Dùng để truyền truyền động từ hộp số đến bánh xe chủ động của ôtô."}]}'),
  (222,'Hãy nêu công dụng hộp số của ôtô?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":false,"answer":"Truyền và tăng mô men xoắn giữa các trục vuông góc nhau, đảm bảo cho các bánh xe chủ động quay với tốc độ khác nhau khi sức cản chuyển động ở hai bánh xe 2 bên không bằng nhau."},{"id":"2","isTrue":false,"answer":"Truyền và thay đổi mô men xoắn giữa các trục không cùng nằm trên một đường thẳng và góc lệch trục luôn thay đổi trong quá trình ôtô chuyển động, chuyển số êm dịu, dễ điều khiển."},{"id":"3","isTrue":true,"answer":"Truyền và thay đổi mô men từ động cơ đến bánh xe chủ động, cắt truyền động từ động cơ đến bánh xe chủ động, bảo đảm cho ôtô chuyển động lùi."}]}'),
  (223,'Hãy nêu công dụng hệ thống lái của ôtô?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":false,"answer":"Dùng thay đổi mô men quay từ động cơ tới các bánh xe chủ động khi ôtô chuyển động theo hướng xác định."},{"id":"2","isTrue":false,"answer":"Dùng để thay đổi mô men quay giữa các trục vuông góc nhau khi ôtô chuyển động theo hướng xác định."},{"id":"3","isTrue":true,"answer":"Dùng để thay đổi hướng chuyển độnghoặc giữ cho ôtô chuyển động ổn định theo hướng xác định."}]}'),
  (224,'Hãy nêu công dụng hệ thống phanh của ôtô?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":true,"answer":"Dùng để thay đổi tốc độ, dừng chuyển độngcủa ôtô và giữ cho ôtô đứng yên trên dốc."},{"id":"2","isTrue":false,"answer":"Dùng để thay đổi hướng chuyển động hoặc giữ cho ôtô chuyển động theo hướng xác định"},{"id":"3","isTrue":false,"answer":"Dùng để truyền hoặc ngắt truyền động từ động cơ tới bánh xe chủ động của hộp số."}]}'),
  (225,'Hãy nêu công dụng của động cơ ôtô?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":true,"answer":"Khi làm việc, nhiệt năng được biến đổi thành cơ năngvà truyền đến các bánh xe chủ động tạo ra chuyển động tịnh tiến cho ôtô."},{"id":"2","isTrue":false,"answer":"Khi làm việc, cơ năng được biến đổi thành nhiệt năng và truyền đến các bánh xe chủ động tạo ra chuyển động tịnh tiến cho ôtô."},{"id":"3","isTrue":false,"answer":"Cả 2 ý nêu trên."}]}'),
  (226,'Hãy nêu yêu cầu về an toàn kỹ thuật đối với dây đai an toàn lắp trên ôtô?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":true,"answer":"Đủ số lượng, lắp đặt chắc chắn không bị rách, đứt, khoá cài đóng, mở nhẹ nhàng, không tự mở, không bị kẹt, kéo ra thu vào dễ dàng, cơ cấu hãm giữ chặt dâykhi giật dây đột ngột."},{"id":"2","isTrue":false,"answer":"Đủ số lượng, lắp đặt chắc chắn không bị rách, đứt, khoá cài đóng, mở nhẹ nhàng, không tự mở, không bị kẹt, kéo ra thu vào dễ dàng, cơ cấu hãm mở rakhi giật dây đột ngột."},{"id":"3","isTrue":false,"answer":"Cả hai ý nêu trên."}]}'),
  (227,'Hãy nêu yêu cầu của kính chắn gió ôtô?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":true,"answer":"Là loại kính an toàn, kính nhiều lớp, đúng quy cách, không rạn nứt, đảm bảo hình ảnh qua sát rõ ràng, không bị méo mó."},{"id":"2","isTrue":false,"answer":"Là loại kính trong suốt, đúng quy cách, không rạn nứt, đảm bảo tầm nhìn cho người điều khiển về phía trước mặt và 2 bên."},{"id":"3","isTrue":false,"answer":"Cả 2 ý nêu trên."}]}'),
  (228,'Khi điều khiển ôtô lên dốc cao, người lái xe cần thực hiện các thao tác nào?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":false,"answer":"Điều chỉnh ga cho xe từ từ lên dốc; đến gần đỉnh dốc phải tăng ga để xe nhanh chóng qua dốc; về số thấp, đi sát về phía bên phải đường, có tín hiệu (còi, đèn) để báo cho người lái xe đi ngược chiều biết."},{"id":"2","isTrue":true,"answer":"Về số thấp từ chân dốc, điều chỉnh ga cho xe từ từ lên dốc; đến gần đỉnh dốc phải đi chậm, đi sát về phía bên phải đường, có tín hiệu (còi, đèn) để báo cho người lái xe đi ngược chiều biết."},{"id":"3","isTrue":false,"answer":"Tất cả hai ý trên."}]}'),
  (229,'Khi điều khiển ôtô xuống dốc đứng, người lái xe cần thực hiện các thao tác nào dưới dây?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":false,"answer":"Tăng lên số cao, nhả bàn đạp ga ở mức độ phù hợp, kết hợp với phanh chân để khống chế tốc độ."},{"id":"2","isTrue":true,"answer":"Về số thấp, nhả bàn đạp ga ở mức độ phù hợp, kết hợp với phanh chân để khống chế tốc độ."},{"id":"3","isTrue":false,"answer":"Về số không (0), nhả bàn đạp ga ở mức độ phù hợp, kết hợp với phanh chân để khống chế tốc độ."},{"id":"4","isTrue":false,"answer":"Cả ba ý nêu trên."}]}'),
  (230,'Để giảm tốc độ khi ôtô đi xuống đường dốc dài, người lái xe phải thực hiện các thao tác nào?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":false,"answer":"Nhả bàn đạp ga, đạp ly hợp hết hành trình, đạp mạnh phanh chân để giảm tốc độ."},{"id":"2","isTrue":true,"answer":"Nhả bàn đạp ga, về số thấp, đạp phanh chân với mức độ phù hợp để giảm tốc độ"},{"id":"3","isTrue":false,"answer":"Nhả bàn đạp ga, tăng lên số cao, đạp phanh chân với mức độ phù hợp để giảm tốc độ."}]}'),
  (231,'Khi lái xe ôtô trên mặt đường có nhiều “ổ gà”, người lái xe phải thực hiện thao tác như thế nào?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":true,"answer":"Giảm tốc độ, về số thấp và giữ đều ga."},{"id":"2","isTrue":false,"answer":"Tăng tốc độ cho xe lướt nhanh qua."},{"id":"3","isTrue":false,"answer":"Cả 2 ý nêu trên."}]}'),
  (232,'Khi điều khiển ôtô qua đoạn đường ngập nước, người lái xe cần thực hiện các thao tác nào?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":false,"answer":"Tăng lên số cao, tăng ga và giữ vững tay lái để ôtô vượt qua đoạn đường ngập nước."},{"id":"2","isTrue":false,"answer":"Đạp ly hợp hết hành trình, tăng ga và giữ vững tay lái để ôtô vượt qua đoạn đường ngập nước."},{"id":"3","isTrue":true,"answer":"Về số một(1), giữ đều ga và giữ vững tay lái để ôtô vượt qua đoạn đường ngập nước"}]}'),
  (233,'Khi đèn pha của xe chạy ngược chiều gây chói mắt, làm giảm khả năng quan sát trên đường, người lái xe phải xử lý như thế nào?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":true,"answer":"Giảm tốc độ, nếu cần thiết có thể dừng xe lại."},{"id":"2","isTrue":false,"answer":"Bật đèn pha và giữ nguyên tốc độ."},{"id":"3","isTrue":false,"answer":"Cả 2 ý nêu trên."}]}'),
  (234,'Khi điều khiển xe trên đường vòng người lái xe cần phải làm gì?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":true,"answer":"Quan sát cẩn thận các chướng ngại vật và báo hiệu bằng còi, đèn; giảm tốc độtới mức cần thiết, về số thấp và thực hiện quay vòng với tốc độ phù hợp với bán kính đường vòng."},{"id":"2","isTrue":false,"answer":"Quan sát cẩn thận các chướng ngại vật và báo hiệu bằng còi, đèn; tăng tốc để nhanh chóng qua đường vòng, đạp ly hợp và giảm tốc độ sau khi qua đường vòng."},{"id":"3","isTrue":false,"answer":"Cả hai ý nêu trên."}]}'),
  (235,'Trên làn đường dành cho ôtô có vũng nước lớn, có nhiều người đi xe môtô trên làn đường bên cạnh, người lái xe ôtô xử lý như thế nào là có văn hoá giao thông?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":false,"answer":"Cho xe chạy thật nhanh qua vũng nước."},{"id":"2","isTrue":true,"answer":"Giảm tốc độ cho xe chạy chậm qua vũng nước."},{"id":"3","isTrue":false,"answer":"Giảm tốc độ cho xe chạy qua làn đường dành cho môtô để tránh vũng nước."}]}'),
  (236,'Khi xe ôtô đi ngược chiều đến rất gần, xe ôtô phía sau cùng chiều cố tình vượt, người lái xe xử lý như thế nào?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":false,"answer":"Giữ nguyên làn đường và tăng tốc độ."},{"id":"2","isTrue":true,"answer":"Giảm tốc độ và lái xe sát vào lề đường bên phải."},{"id":"3","isTrue":false,"answer":"Tiếp tục chạy mà không giảm tốc độ."}]}'),
  (237,'Người lái xe môtô xử lý như thế nào khi cho xe môtô phía sau vượt?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":true,"answer":"Lái xe vào lề đường bên phải và giảm tốc độđể xe phía sau vượt qua."},{"id":"2","isTrue":false,"answer":"Lái xe vào lề đường bên trái và giảm tốc độ để xe phía sau vượt qua."},{"id":"3","isTrue":false,"answer":"Lái xe vào lề đường bên phải và tăng tốc độ để xe phía sau vượt qua."}]}'),
  (238,'Khi lái xe trên đường vắng mà cảm thấy buồn ngủ, người lái xe nên chọn cách xử lý như thế nào cho phù hợp?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":false,"answer":"Tăng tốc độ kết hợp với nghe nhạc để đi tiếp."},{"id":"2","isTrue":true,"answer":"Dừng xe và nghỉ cho đến khi hết buồn ngủ."},{"id":"3","isTrue":false,"answer":"Sử dụng một ít rượu và bia để hết buồn ngủ và đi tiếp."}]}'),
  (239,'Trong các trường hợp dưới đây, để đảm bảo an toàn giao thông người lái xe điều khiển như thế nào khi tầm nhìn bị hạn chế bởi sương mù?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":false,"answer":"Tăng tốc độ, chạy gần xe phía trước, nhìn đèn hậu để định hướng."},{"id":"2","isTrue":true,"answer":"Giảm tốc độ, chạy cách xa xe phía trước với khoảng cách an toàn."},{"id":"3","isTrue":false,"answer":"Tăng tốc độ, bật đèn pha vượt qua xe chạy trước."}]}'),
  (240,'Khi quay đầu xe, người lái xe cần phải quan sát và thực hiện các thao tác nào?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":true,"answer":"Quan sát biển báo hiệu để biết nơi được phép quay đầu; quan sát kỹ địa hình nơi chọn để quay đầu; lựa chọn quỹ đạo quay đầu xe cho thích hợp; quay đầu xe với tốc độ nhỏ nhất; thường xuyên báo tín hiệu để người, các phương tiện xung quanh được biết; nếu quay đầu xe ở nơi nguy hiểm thì đưa đầu xe về phía nguy hiểm đưa đuôi xe về phía an toàn."},{"id":"2","isTrue":false,"answer":"Quan sát biển báo hiệu để biết nơi được phép quay đầu; quan sát kỹ địa hình nơi chọn để quay đầu; lựa chọn quỹ đạo quay đầu xe cho thích hợp; quay đầu xe với tốc độ nhỏ nhất; thường xuyên báo tín hiệu để người, các phương tiện xung quanh được biết; nếu quay đầu xe ở nơi nguy hiểm thì đưa đuôi xe về phía nguy hiểm và đầu xe về phía an toàn."}]}'),
  (241,'Khi điều khiển ôtô tới gần xe chạy ngược chiều vào ban đêm, người lái xe cần thực hiện các thao tác nào?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":true,"answer":"Chuyển từ đèn chiếu xa sang đèn chiếu gần; không nhìn thẳng vào đèn của xe chạy ngược chiều mà nhìn chếch sang phía phải theo chiều chuyển động của xe mình."},{"id":"2","isTrue":false,"answer":"Chuyển từ đèn chiếu gần sang đèn chiếu xa; không nhìn thẳng vào đèn của xe chạy ngược chiều mà nhìn chếch sang phía phải theo chiều chuyển động của xe mình."},{"id":"3","isTrue":false,"answer":"Chuyển từ đèn chiếu xa sang đèn chiếu gần; nhìn thẳng vào đèn của xe chạy ngược chiều để tránh xe đảm bảo an toàn."}]}'),
  (242,'Khi đã đỗ xe ôtô sát lề đường bên phải, người lái xe phải thực hiện các thao tác nào dưới đây khi mở cửa xuống xe để đảm bảo an toàn?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":true,"answer":"Quan sát tình hình giao thông phía sau, mở hé cánh cửa, nếu đảm bảo an toàn thì mở cửa ở mức cần thiết để xuống xe ôtô."},{"id":"2","isTrue":false,"answer":"Mở hé cánh cửa và quan sát tình hình giao thông phía trước, nếu đảm bảo an toàn thì mở cửa ở mức cần thiết để xuống xe ôtô."},{"id":"3","isTrue":false,"answer":"Mở cánh cửa hết hành trình và nhanh chóng ra khỏi xe ôtô."}]}'),
  (243,'Khi điều khiển xe ôtô rẽ trái ở chỗ đường giao nhau, người lái xe cần thực hiện các thao tác nào?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":true,"answer":"Cách chỗ rẽ khoảng 30m giảm tốc độ, có tín hiệu rẽ tráixin đổi làn đường; quan sát an toàn xung quanh đặc biệt là bên trái; đổi sang làn đường bên trái; cho xe chạy chậmtới phía trong của tâm đường giao nhau mới rẽ trái để điều khiển xe qua chỗ đường giao nhau."},{"id":"2","isTrue":false,"answer":"Cách chỗ rẽ khoảng 30m có tín hiệu rẽ trái, tăng tốc độ để xe nhanh chóng qua chỗ đường giao nhau."},{"id":"3","isTrue":false,"answer":"Có tín hiệu xin đổi làn; quan sát an toàn xung quanh đặc biệt là bên trái; đổi làn đường sang phải để mở rộng vòng cua."},{"id":"4","isTrue":false,"answer":"Cả ba ý nêu trên."}]}'),
  (244,'Khi điều khiển xe ôtô rẽ phải ở chỗ đường giao nhau, người lái xe cần thực hiện các thao tác nào?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":false,"answer":"Có tín hiệu rẽ phải; quan sát an toàn phía sau; điều khiển xe sang làn đường bên trái; giảm tốc độ và quan sát an toàn phía bên phải để điều khiển xe qua chỗ đường giao nhau."},{"id":"2","isTrue":true,"answer":"Cách chỗ rẽ khoảng 30m có tín hiệu rẽ phải; quan sát an toàn phía sau; điều khiển xe bám sát vào phía phải đường; giảm tốc độvà quan sát an toàn phía bên phải để điều khiển xe qua chỗ đường giao nhau."},{"id":"3","isTrue":false,"answer":"Cách chỗ rẽ khoảng 30m có tín hiệu rẽ phải; quan sát an toàn phía sau; điều khiển xe bám sát vào phía phải đường; tăng tốc độ và quan sát an toàn phía bên trái để điều khiển xe qua chỗ đường giao nhau."}]}'),
  (245,'Tại nơi đường giao nhau có báo hiệu đi theo vòng xuyến, người điều khiển phương tiện phải nhường đường như thế nào?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":false,"answer":"Phải nhường đường cho xe đi bên phải."},{"id":"2","isTrue":false,"answer":"Xe báo hiệu xin đường trước xe đó được đi trước."},{"id":"3","isTrue":true,"answer":"Phải nhường đường cho xe đi bên trái."}]}'),
  (246,'Tại nơi đường giao nhau không có báo hiệu đi theo vòng xuyến, người điều khiển phương tiện phải nhường đường như thế nào là đúng quy tắc giao thông?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":true,"answer":"Phải nhường đường cho xe đi đến từ bên phải."},{"id":"2","isTrue":false,"answer":"Xe báo hiệu xin đường trước xe đó được đi trước."},{"id":"3","isTrue":false,"answer":"Phải nhường đường cho xe đi đến từ bên trái."}]}'),
  (247,'Khi điều khiển ôtô có số tự động, người lái xe sử dụng chân như thế nào là đúng?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":true,"answer":"Không sử dụng chân trái, chân phải điều khiển bàn đạp phanh và bàn đạp ga."},{"id":"2","isTrue":false,"answer":"Chân trái điều khiển bàn đạp phanh, chân phải điều khiển bàn đạp ga."},{"id":"3","isTrue":false,"answer":"Không sử dụng chân phải, chân trái điều khiển bàn đạp phanh và bàn đạp ga."}]}'),
  (248,'Khi vào số để tiến hoặc lùi xe ôtô có số tự động, người lái xe phải thực hiện các thao tác nào để đảm bảo an toàn?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":true,"answer":"Đạp bàn đạp phanh chân hết hành trình, vào số và kiểm tra lại xem có bị nhầm số không rồi mới cho xe lăn bánh."},{"id":"2","isTrue":false,"answer":"Đạp bàn đạp để tăng ga với mức độ phù hợp, vào số và kiểm tra lại xem có bị nhầm số không rồi mới cho xe lăn bánh."},{"id":"3","isTrue":false,"answer":"Cả hai ý nêu trên."}]}'),
  (249,'Khi động cơ ôtô có hộp số tự động đi trên đường trơn trượt, lầy lội hoặc xuống dốc cao và dài, người lái xe cần để cần số ở vị trí nào?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":false,"answer":"Vị trí D"},{"id":"2","isTrue":true,"answer":"Vị trí L hoặc vị trí 2"},{"id":"3","isTrue":false,"answer":"Vị trí N"}]}'),
  (250,'Khi động cơ ôtô đã khởi động, muốn điều chỉnh ghế của người lái ta phải điều chỉnh cần số ở vị trí nào?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":true,"answer":"Vị trí N hoặc 0"},{"id":"2","isTrue":false,"answer":"Vị trí D hoặc số 1"},{"id":"3","isTrue":false,"answer":"Cả 2 ý nêu trên."}]}'),
  (251,'Khi điều khiển tăng số, người lái xe ôtô cần chú ý những điểm gì?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":true,"answer":"Không được nhìn xuống buồng lái, cần phải tăng thứ tự từ thấp đến cao, phối hợp các động tác phải nhịp nhàng, chính xác."},{"id":"2","isTrue":false,"answer":"Không được nhìn xuống buồng lái, cần phải tăng thứ tự từ thấp đến cao, phối hợp các động tác phải nhịp nhàng, vù ga phải phù hợp với tốc độ."}]}'),
  (252,'Khi điều khiển xe giảm số, người lái xe cần chú ý những điểm gì?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":false,"answer":"Không được nhìn xuống buồng lái, cần phải giảm thứ tự từ cao đến thấp, phối hợp các động tác phải nhịp nhàng chính xác."},{"id":"2","isTrue":true,"answer":"Không được nhìn xuống buồng lái, cần phải giảm thứ tự từ cao đến thấp, phối hợp các động tác phải nhịp nhàng, chính xác, vù ga phải phù hợp với tốc độ."}]}'),
  (253,'Khi xe ôtô bị hỏng tại vị trí giao nhau giữa đường bộ và đường sắt, người lái xe xử lý như thế nào?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":true,"answer":"Nhanh chóng đưa xe ôtô ra khỏi đường sắt hoặc tìm cách báo hiệu để đoàn tàu dừng lại."},{"id":"2","isTrue":false,"answer":"Đặt biển cảnh báo nguy hiểm tại vị trí xe ôtô bị hỏng để đoàn tàu dừng lại."},{"id":"3","isTrue":false,"answer":"Cả hai ý nêu trên."}]}'),
  (254,'Khi lái xe ôtô qua đường sắt không có rào chắn, không có người điều khiển giao thông, người lái xe phải xử lý như thế nào?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":true,"answer":"Tạm dừng xe tại vị trí cách đường sắt tối thiểu 5m, hạ cửa kính, tắt các thiết bị âm thanh trên xe, quan sát, nếu không có tàu chạy qua về số thấp, tăng ga nhẹ vượt qua đường sắt."},{"id":"2","isTrue":false,"answer":"Tại vị trí cách đường sắt tối thiểu 5m quan sát phía trước, nếu không có tàu chạy, tăng số cao, tăng tốc độ cho xe nhanh chóng vượt qua đường sắt."},{"id":"3","isTrue":false,"answer":"Cả 2 ý nêu trên."}]}'),
  (255,'Trên đoạn đường bộ giao nhau cùng mức với đường sắt, cầu đường bộ đi chung với đường sắt thì loại phương tiện nào được quyền ưu tiên đi trước?'
 ,'Luật','text',
 '{"data":[{"id":"1","isTrue":false,"answer":"Phương tiện nào bên phải không vướng."},{"id":"2","isTrue":false,"answer":"Phương tiện nào ra tín hiệu xin đường trước."},{"id":"3","isTrue":true,"answer":"Phương tiện giao thông đường sắt."}]}'),
  (256,'Biển báo nào cấm người đi bộ?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Biển 1."},{"id":"2","isTrue":false,"answer":"Biển 1 và 3."},{"id":"3","isTrue":true,"answer":"Biển 2."},{"id":"4","isTrue":false,"answer":"Biển 2 và 3."}]}'),
  (257,'Gặp biển nào người lái xe phải nhường cho người đi bộ?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Biển 1."},{"id":"2","isTrue":false,"answer":"Biển 3."},{"id":"3","isTrue":false,"answer":"Biển 2."},{"id":"4","isTrue":false,"answer":"Biển 1 và 3."}]}'),
  (258,'Biển nào chỉ đường dành cho người đi bộ, các loại xe không được đi vào khi gặp điều này?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Biển 1."},{"id":"2","isTrue":false,"answer":"Biển 1 và 3."},{"id":"3","isTrue":true,"answer":"Biển 3."},{"id":"4","isTrue":false,"answer":"Cả ba biển."}]}'),
  (259,'Biển nào cấm các loại xe cơ giới đi vào, trừ xe gắn máy, môtô hai bánh và các loại xe ưu tiên theo luật?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Biển 1."},{"id":"2","isTrue":false,"answer":"Biển 2."},{"id":"3","isTrue":false,"answer":"Biển 1 và 3."},{"id":"4","isTrue":false,"answer":"Cả ba biển."}]}'),
  (260,'Biển nào cấm ôtô tải?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Cả ba biển."},{"id":"2","isTrue":false,"answer":"Biển 2 và 3."},{"id":"3","isTrue":false,"answer":"Biển 1 và 3."},{"id":"4","isTrue":true,"answer":"Biển 1 và 2."}]}'),
  (261,'Biển nào cấm máy kéo?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Biển 2 và 3."},{"id":"2","isTrue":false,"answer":"Biển 1 và 3."},{"id":"3","isTrue":false,"answer":"Cả ba biển."},{"id":"4","isTrue":false,"answer":"Biển 1."}]}'),
  (262,'Biển nào báo hiệu sắp đến chỗ giao nhau nguy hiểm?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Biển 1 và 2"},{"id":"2","isTrue":true,"answer":"Biển 2 và 3."},{"id":"3","isTrue":false,"answer":"Biển 1."},{"id":"4","isTrue":false,"answer":"Cả ba biển."}]}'),
  (263,'Biển nào báo hiệu sắp đến chỗ giao nhau với đường sắt có rào chắn?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Biển 1."},{"id":"2","isTrue":false,"answer":"Biển 2 và 3."},{"id":"3","isTrue":false,"answer":"Biển 3."}]}'),
  (264,'Biển nào báo hiệu giao nhau có tín hiệu đèn?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Biển 2."},{"id":"2","isTrue":false,"answer":"Biển 1."},{"id":"3","isTrue":true,"answer":"Biển 3."},{"id":"4","isTrue":false,"answer":"Cả ba biển."}]}'),
  (265,'Biển nào báo hiệu nguy hiểm giao nhau với đường sắt?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Biển 1 và 3."},{"id":"2","isTrue":false,"answer":"Biển 1 và 2."},{"id":"3","isTrue":false,"answer":"Biển 2 và 3."},{"id":"4","isTrue":false,"answer":"Cả ba biển."}]}'),
  (266,'Biển nào báo hiệu đường sắt giao nhau với đường bộ không có rào chắn?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Biển 1 và 2."},{"id":"2","isTrue":true,"answer":"Biển 2 và 3."},{"id":"3","isTrue":false,"answer":"Biển 1 và 3."},{"id":"4","isTrue":false,"answer":"Cả ba biển."}]}'),
  (267,'Biển nào báo hiệu cửa chui?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Biển 1."},{"id":"2","isTrue":true,"answer":"Biển 2."},{"id":"3","isTrue":false,"answer":"Biển 3."}]}'),
  (268,'Biển nào báo hiệu "hết đoạn đường ưu tiên"?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Biển 3."},{"id":"2","isTrue":false,"answer":"Biển 1."},{"id":"3","isTrue":false,"answer":"Biển 2."}]}'),
  (269,'Biển nào báo hiệu, chỉ dẫn xe đi trên đường này được quyền ưu tiên qua nơi giao nhau?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Biển 1 và 2."},{"id":"2","isTrue":true,"answer":"Biển 1 và 3."},{"id":"3","isTrue":false,"answer":"Cả ba biển."},{"id":"4","isTrue":false,"answer":"Biến 2 và 3."}]}'),
  (270,'Biển nào báo hiệu giao nhau với đường không ưu tiên?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Biển 1."},{"id":"2","isTrue":false,"answer":"Biển 2 và 3."},{"id":"3","isTrue":false,"answer":"Biển 2."},{"id":"4","isTrue":false,"answer":"Biển 3."}]}'),
  (271,'Biển nào báo hiệu giao nhau với đường ưu tiên?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Biển 1 và 3."},{"id":"2","isTrue":true,"answer":"Biển 2."},{"id":"3","isTrue":false,"answer":"Biển 3."}]}'),
  (272,'Biển nào báo hiệu nguy hiểm đường bị hẹp?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Biển 1 và 3."},{"id":"2","isTrue":false,"answer":"Biển 2 và 3."},{"id":"3","isTrue":false,"answer":"Cả ba biển."},{"id":"4","isTrue":true,"answer":"Biển 1 và 2."}]}'),
  (273,'Khi gặp biển nào, người lái xe phải giảm tốc độ, chú ý xe đi ngược chiều, xe đi ở phía đường bị hẹp phải nhường đường cho xe đi ngược chiều?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Biển 1."},{"id":"2","isTrue":true,"answer":"Biển 2 và 3."},{"id":"3","isTrue":false,"answer":"Cả ba biển."},{"id":"4","isTrue":false,"answer":"Biển 1 và 3."}]}'),
  (274,'Biển nào báo hiệu giao nhau với đường ưu tiên?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Biển 1."},{"id":"2","isTrue":true,"answer":"Biển 3."},{"id":"3","isTrue":false,"answer":"Biển 2."},{"id":"4","isTrue":false,"answer":"Cả ba biển."}]}'),
  (275,'Biển nào báo hiệu "Đường giao nhau" của các tuyến đường cùng cấp?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Biển 1."},{"id":"2","isTrue":false,"answer":"Biển 3."},{"id":"3","isTrue":false,"answer":"Biển 2."}]}'),
  (276,'Biển nào báo hiệu giao nhau với đường không ưu tiên?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Biển 1."},{"id":"2","isTrue":true,"answer":"Biển 2."},{"id":"3","isTrue":false,"answer":"Biển 3."}]}'),
  (277,'Biển nào báo hiệu đường hai chiều?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Biển 1."},{"id":"2","isTrue":false,"answer":"Biển 2."},{"id":"3","isTrue":false,"answer":"Biển 3."}]}'),
  (278,'Biền nào báo hiệu phải giảm tốc độ, nhường đường cho xe cơ giới đi ngược chiều qua đường hẹp?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Biển 1."},{"id":"2","isTrue":true,"answer":"Biển 2."},{"id":"3","isTrue":false,"answer":"Biển 3."}]}'),
  (279,'Biển nào chỉ dẫn được ưu tiên qua đường hẹp?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Biển 1."},{"id":"2","isTrue":false,"answer":"Biển 2."},{"id":"3","isTrue":true,"answer":"Biển 3."},{"id":"4","isTrue":false,"answer":"Biển 2 và 3."}]}'),
  (280,'Biển nào báo hiệu cấm xe môtô ba bánh đi vào?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Biển 1 và 3."},{"id":"2","isTrue":true,"answer":"Biển 1 và 2."},{"id":"3","isTrue":false,"answer":"Biển 2 và 3."}]}'),
  (281,'Biển nào báo hiệu cấm xe môtô hai bánh đi vào?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Biển 1."},{"id":"2","isTrue":false,"answer":"Biển 2."},{"id":"3","isTrue":false,"answer":"Biển 3."}]}'),
  (282,'Khi gặp biển nào thì xe môtô hai bánh được đi vào?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Không biển nào."},{"id":"2","isTrue":false,"answer":"Biển 1 và 2."},{"id":"3","isTrue":true,"answer":"Biển 2 và 3."},{"id":"4","isTrue":false,"answer":"Cả ba biển."}]}'),
  (283,'Biển nào xe môtô hai bánh được đi vào?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Biển 1 và 2."},{"id":"2","isTrue":true,"answer":"Biển 1 và 3."},{"id":"3","isTrue":false,"answer":"Biển 2 và 3."}]}'),
  (284,'Biển nào xe môtô hai bánh không được đi vào?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Biển 1."},{"id":"2","isTrue":true,"answer":"Biển 2."},{"id":"3","isTrue":false,"answer":"Biển 3."}]}'),
  (285,'Ba biển này có ý nghĩa hiệu lực như thế nào?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Cấm các loại xe ở biển phụ đi vào."},{"id":"2","isTrue":false,"answer":"Cấm các loại xe cơ giới đi vào trừ loại xe ở biển phụ."}]}'),
  (286,'Biển nào cho phép ôtô con được vượt?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Biển 1 và 2."},{"id":"2","isTrue":false,"answer":"Biển 2."},{"id":"3","isTrue":false,"answer":"Biển 2 và 3."},{"id":"4","isTrue":true,"answer":"Biển 1 và 3."}]}'),
  (287,'Biển nào không cho phép ôtô con vượt?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Biển 2."},{"id":"2","isTrue":false,"answer":"Biển 1."},{"id":"3","isTrue":false,"answer":"Biển 3."}]}'),
  (288,'Biển nào cấm ôtô tải vượt?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Biển 1."},{"id":"2","isTrue":false,"answer":"Biển 1 và 2."},{"id":"3","isTrue":false,"answer":"Biển 1 và 3."},{"id":"4","isTrue":true,"answer":"Biển 2 và 3."}]}'),
  (289,'Biển nào cấm quay xe?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Biển 1."},{"id":"2","isTrue":true,"answer":"Biển 2."},{"id":"3","isTrue":false,"answer":"Không biển nào."}]}'),
  (290,'Biển nào cấm xe rẽ trái?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Biển 1."},{"id":"2","isTrue":false,"answer":"Biển 2."},{"id":"3","isTrue":false,"answer":"Cả hai biển."}]}'),
  (291,'Khi gặp biển nào xe được rẽ trái?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Biển 1."},{"id":"2","isTrue":true,"answer":"Biển 2."},{"id":"3","isTrue":false,"answer":"Không biển nào."}]}'),
  (292,'Biển nào cho phép xe rẽ trái?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Biển 1."},{"id":"2","isTrue":false,"answer":"Biển 2."},{"id":"3","isTrue":true,"answer":"Không biển nào."}]}'),
  (293,'Biển nào xe quay đầu không bị cấm?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Biển 1."},{"id":"2","isTrue":true,"answer":"Biển 2."},{"id":"3","isTrue":false,"answer":"Cả hai biển."}]}'),
  (294,'Biển nào xe được phép quay đầu nhưng không được rẽ trái?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Biển 1."},{"id":"2","isTrue":true,"answer":"Biển 2."},{"id":"3","isTrue":false,"answer":"Cả hai biển."}]}'),
  (295,'Biển nào là biển báo hiệu cấm đi ngược chiều?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Biển 1."},{"id":"2","isTrue":true,"answer":"Biển 2."},{"id":"3","isTrue":false,"answer":"Cả ba biển."}]}'),
  (296,'Biển nào báo hiệu chiều dài đoạn đường phải giữ cự ly tối thiểu giữa hai xe?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Biển 1."},{"id":"2","isTrue":false,"answer":"Biển 2."},{"id":"3","isTrue":false,"answer":"Cả hai biển."}]}'),
  (297,'Biển nào báo hiệu khoảng cách thực tế từ nơi đặt biển đến nơi cần cự ly tối thiểu giữa hai xe?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Biển 1."},{"id":"2","isTrue":true,"answer":"Biển 2."},{"id":"3","isTrue":false,"answer":"Cả hai biển."}]}'),
  (298,'Khi gặp biển nào xe ưu tiên theo luật định vẫn phải dừng lại?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Biển 1."},{"id":"2","isTrue":true,"answer":"Biển 2."},{"id":"3","isTrue":false,"answer":"Cả ba biển."}]}'),
  (299,'Trong các trường hợp dưới đây, người lái xe phải xử lý như thế nào khi gặp biển 2 "Stop"?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Dừng lại theo hiệu lệnh của người điều khiển giao thông khi có tàu hỏa sắp chạy qua."},{"id":"2","isTrue":true,"answer":"Dừng lại khi có xe đi ngược chiều trên cầu hẹp, khi trên đường có nguy cơ mất an toàn giao thông."},{"id":"3","isTrue":false,"answer":"Không phải dừng lại khi gặp hai trường trên."}]}'),
  (300,'Biển nào cấm tất cả các loại xe cơ giới và thô sơ đi lại trên đường, trừ xe ưu tiên theo luật định (nếu đường vẫn cho xe chạy được)?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Biển 1."},{"id":"2","isTrue":false,"answer":"Biển 2."},{"id":"3","isTrue":false,"answer":"Cả hai biển."}]}'),
  (301,'Biển nào (đặt trước ngã ba, ngã tư) cho phép xe được rẽ sang hướng khác?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Biển 1."},{"id":"2","isTrue":false,"answer":"Biển 2."},{"id":"3","isTrue":true,"answer":"Không biển nào."}]}'),
  (302,'Biển nào báo hiệu hướng đi thẳng phải theo?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Biển 1."},{"id":"2","isTrue":false,"answer":"Biển 2."}]}'),
  (303,'Biển nào báo hiệu đường một chiều?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Biển 1."},{"id":"2","isTrue":true,"answer":"Biển 2."},{"id":"3","isTrue":false,"answer":"Cả hai biển."}]}'),
  (304,'Trong các biển dưới đây biển nào là biển hết hạn chế tốc độ tối đa?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Biển 1."},{"id":"2","isTrue":false,"answer":"Biển 2."},{"id":"3","isTrue":false,"answer":"Biển 3."},{"id":"4","isTrue":false,"answer":"Cả ba biển."}]}'),
  (305,'Trong các biển dưới dây biển nào là biển hết hạn chế tốc độ tối thiểu?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Biển 1."},{"id":"2","isTrue":false,"answer":"Biển 2."},{"id":"3","isTrue":true,"answer":"Biển 3."},{"id":"4","isTrue":false,"answer":"Cả ba biển."}]}'),
  (306,'Trong các biển dưới dây biển nào là biển hết mọi lệnh cấm?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Biển 1."},{"id":"2","isTrue":true,"answer":"Biển 2."},{"id":"3","isTrue":false,"answer":"Biển 3."},{"id":"4","isTrue":false,"answer":"Cả ba biển."}]}'),
  (307,'Biển nào báo hiệu đường dành cho ôtô?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Biển 1."},{"id":"2","isTrue":false,"answer":"Biển 2."}]}'),
  (308,'Biển nào báo hiệu hết đường dành cho ôtô?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Biển 2."},{"id":"2","isTrue":false,"answer":"Biển 1."}]}'),
  (309,'Khi gặp biển nào thì các phương tiện không được đi vào, trừ ôtô và môtô?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Biển 1."},{"id":"2","isTrue":false,"answer":"Biển 2."}]}'),
  (310,'Biển nào cho phép được quay đầu xe đi theo hướng ngược lại khi đặt biển trước ngã ba, ngã tư?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Biển 1."},{"id":"2","isTrue":false,"answer":"Biển 2."},{"id":"3","isTrue":true,"answer":"Biển 3."},{"id":"4","isTrue":false,"answer":"Không biển nào."}]}'),
  (311,'Biển nào không cho phép rẽ phải?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Biển 1."},{"id":"2","isTrue":false,"answer":"Biển 3."},{"id":"3","isTrue":false,"answer":"Biển 2."},{"id":"4","isTrue":false,"answer":"Biển 1 và 3."}]}'),
  (312,'Khi đến chỗ giao nhau, biển nào thì người lái xe không được cho xe đi thẳng, phải rẽ sang hướng khác?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Biển 1 và 3."},{"id":"2","isTrue":false,"answer":"Biển 2 và 3."},{"id":"3","isTrue":true,"answer":"Biển 1 và 2."},{"id":"4","isTrue":false,"answer":"Cả ba biển."}]}'),
  (313,'Biển nào được đặt trước ngã ba, ngã tư và phạm vi tác dụng của biển ở ngã ba, ngã tư đằng sau mặt biển?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Biển 1 và 2."},{"id":"2","isTrue":false,"answer":"Biển 2."},{"id":"3","isTrue":true,"answer":"Biển 1 và 3."}]}'),
  (314,'Biển nào được đặt sau ngã ba, ngã tư và phạm vi tác dụng của biển ở ngã ba, ngã tư trước mặt biển?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Biển 1."},{"id":"2","isTrue":false,"answer":"Biển 3."},{"id":"3","isTrue":true,"answer":"Biển 2."}]}'),
  (315,'Khi gặp các biển này, xe ưu tiên theo luật định (có tải trọng hay chiều cao toàn bộ vượt quá chỉ số ghi trên biển) có được phép đi qua hay không?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Được phép."},{"id":"2","isTrue":true,"answer":"Không được phép."}]}'),
  (316,'Biển nào hạn chế kích thước chiều cao của xe và hàng?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Biển 1."},{"id":"2","isTrue":false,"answer":"Biền 2."},{"id":"3","isTrue":false,"answer":"Biển 3."}]}'),
  (317,'Biển số 2 có ý nghĩa như thế nào?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Cho phép ôtô có tải trọng trục lớn hơn 7 tấn đi qua."},{"id":"2","isTrue":true,"answer":"Cho phép ôtô có trọng lượng trên trục xe từ 7 tấn trở xuống đi qua."}]}'),
  (318,'Biển số 3 có ý nghĩa như thế nào?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Cấm các loại xe có trọng lượng toàn bộ (xe và hàng) trên 10 tấn đi qua."},{"id":"2","isTrue":false,"answer":"Hạn chế tải trọng hàng hóa chở trên xe."},{"id":"3","isTrue":false,"answer":"Hạn chế trọng lượng trên trục xe."}]}'),
  (319,'Biển này có ý nghĩa gì?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Chỉ hướng đi phải theo."},{"id":"2","isTrue":true,"answer":"Biển chỉ dẫn cho người lái xe biết số lượng làn đường trên mặt đường và hướng đi trên mỗi làn đường theo vạch kẻ đường."},{"id":"3","isTrue":false,"answer":"Chỉ hướng đường phải theo."}]}'),
  (320,'Biển nào cấm máy kéo kéo theo rơ moóc?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Biển 1."},{"id":"2","isTrue":true,"answer":"Biển 2."},{"id":"3","isTrue":false,"answer":"Không biển nào."}]}'),
  (321,'Khi gặp biển số 1, xe ôtô tải có được đi vào không?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Được đi vào."},{"id":"2","isTrue":false,"answer":"Không được đi vào."}]}'),
  (322,'Biển nào không có hiệu lực đối với ôtô tải không kéo moóc?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Biển 1 và 2."},{"id":"2","isTrue":false,"answer":"Biển 2 và 3."},{"id":"3","isTrue":false,"answer":"Cả ba biển."},{"id":"4","isTrue":false,"answer":"Biển 1 và 3."}]}'),
  (323,'Biển nào cấm máy kéo?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Biển 1 và 3."},{"id":"2","isTrue":false,"answer":"Biển 1 và 2."},{"id":"3","isTrue":false,"answer":"Cả ba biển."},{"id":"4","isTrue":true,"answer":"Biển 2 và 3."}]}'),
  (324,'Khi gặp biển này, xe lam và môtô ba bánh có được phép rẽ trái hay rẽ phải hay không?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Được phép"},{"id":"2","isTrue":true,"answer":"Không được phép."}]}'),
  (325,'Biển này có hiệu lực đối với xe môtô hai, ba bánh không?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Có."},{"id":"2","isTrue":false,"answer":"Không."}]}'),
  (326,'Biển này có ý nghĩa gì?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Cấm xe cơ giới (trừ xe ưu tiên theo luật định) đi thẳng."},{"id":"2","isTrue":true,"answer":"Cấm ôtô và môtô (trừ xe ưu tiên theo luật định) đi về bên trái và bên phải."},{"id":"3","isTrue":false,"answer":"Hướng trái và không phải cấm xe cơ giới."}]}'),
  (327,'Biển phụ đặt dưới biển cấm bóp còi có ý nghĩa gì?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Báo khoảng cách đến nơi cấm bóp còi."},{"id":"2","isTrue":true,"answer":"Chiều dài đoạn đường cấm bóp còi từ nơi đặt biển."},{"id":"3","isTrue":false,"answer":"Báo cấm dùng còi có độ vang xa 500m"}]}'),
  (328,'Chiều dài đoạn đường 500m từ nơi đặt biển này người lái xe có được phép bấm còi không?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Được phép."},{"id":"2","isTrue":true,"answer":"Không được phép."}]}'),
  (329,'Biển này có ý nghĩa gì?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Cấm dừng xe về hướng bên trái."},{"id":"2","isTrue":true,"answer":"Cấm đỗ xe và cấm dừng xe theo hướng bên phải."},{"id":"3","isTrue":false,"answer":"Được phép đỗ xe và dừng xe theo hướng bên phải."}]}'),
  (330,'Biển nào cấm máy kéo kéo theo rơ moóc?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Biển 1."},{"id":"2","isTrue":true,"answer":"Biển 2."},{"id":"3","isTrue":false,"answer":"Không biển nào."}]}'),
  (331,'Gặp biển này, xe ôtô sơ mi rơ moóc có tổng chiều dài lớn hơn trị số ghi trên biển có được phép đi vào không?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Không được phép."},{"id":"2","isTrue":false,"answer":"Được phép."}]}'),
  (332,'Xe ô ô chở hàng vượt quá phía trước và sau thùng xe, mỗi phía quá 10% chiều dài toàn bộ thân xe, tổng chiều dài xe (cả hàng) từ trước đến sau nhỏ hơn trị số ghi trên biển thì có được phép đi vào không?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Không được phép."},{"id":"2","isTrue":false,"answer":"Được phép."}]}'),
  (333,'Biển nào cấm xe đạp đi vào?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Biển 1."},{"id":"2","isTrue":true,"answer":"Biển 2."},{"id":"3","isTrue":false,"answer":"Biển 3."}]}'),
  (334,'Biển nào báo hiệu đường dành cho xe thô sơ?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Biển 1."},{"id":"2","isTrue":false,"answer":"Biển 2."},{"id":"3","isTrue":false,"answer":"Biển 3."}]}'),
  (335,'Biển nào báo hiệu nơi đỗ xe cho người tàn tật?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Biển 1."},{"id":"2","isTrue":true,"answer":"Biển 2."},{"id":"3","isTrue":false,"answer":"Biển 3."}]}'),
  (336,'Biển nào cấm xe tải vượt?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Biển 1."},{"id":"2","isTrue":true,"answer":"Biển 2."},{"id":"3","isTrue":false,"answer":"Không biển nào."}]}'),
  (337,'Biển nào xe ôtô con được phép vượt?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Biển 2."},{"id":"2","isTrue":false,"answer":"Biển 1."}]}'),
  (338,'Biển nào báo hiệu đường đôi?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Biển 1."},{"id":"2","isTrue":true,"answer":"Biền 2."},{"id":"3","isTrue":false,"answer":"Biển 3."}]}'),
  (339,'Biển nào báo hiệu đường đôi?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Biển 1."},{"id":"2","isTrue":false,"answer":"Biền 2."},{"id":"3","isTrue":true,"answer":"Biển 3."}]}'),
  (340,'Biển nào báo hiệu hết đường đôi?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Biền 2."},{"id":"2","isTrue":false,"answer":"Biển 1."},{"id":"3","isTrue":true,"answer":"Biển 3."}]}'),
  (341,'Biển nào báo hiệu hết đường cao tốc?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Biển 1."},{"id":"2","isTrue":true,"answer":"Biền 2."},{"id":"3","isTrue":false,"answer":"Biển 3."}]}'),
  (342,'Biển nào báo hiệu giao nhau với đường hai chiều?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Biển 1."},{"id":"2","isTrue":false,"answer":"Biền 2."},{"id":"3","isTrue":false,"answer":"Biển 3."}]}'),
  (343,'Biển nào báo hiệu đường hai chiều?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Biển 1."},{"id":"2","isTrue":true,"answer":"Biền 2."},{"id":"3","isTrue":false,"answer":"Biển 3."}]}'),
  (344,'Biển nào báo hiệu giao nhau với đường hai chiều?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Biển 1."},{"id":"2","isTrue":true,"answer":"Biền 2."},{"id":"3","isTrue":false,"answer":"Biển 3."}]}'),
  (345,'Biển nào báo hiệu cầu vượt liên thông?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Biển 2 và 3."},{"id":"2","isTrue":false,"answer":"Biển 1 và 2."},{"id":"3","isTrue":true,"answer":"Biển 1 và 3."},{"id":"4","isTrue":false,"answer":"Cả ba biển."}]}'),
  (346,'Biển nào báo hiệu chú ý chướng ngại vật?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Biển 1."},{"id":"2","isTrue":true,"answer":"Biển 2 và 3."},{"id":"3","isTrue":false,"answer":"Cả ba biển."}]}'),
  (347,'Biển nào báo hiệu đoạn đường hay xảy ra tai nạn?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Biển 1."},{"id":"2","isTrue":true,"answer":"Biển 2."},{"id":"3","isTrue":false,"answer":"Biển 2 và 3."}]}'),
  (348,'Biền số 1 có ý nghĩa gì?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Đi thẳng hoặc rẽ trái trên cầu vượt."},{"id":"2","isTrue":false,"answer":"Đi thẳng hoặc rẽ phải trên cầu vượt."},{"id":"3","isTrue":true,"answer":"Báo hiệu cầu vượt liên thông."}]}'),
  (349,'Biền nào báo hiệu tuyến đường cầu vượt cắt qua?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Biển 1 và 2."},{"id":"2","isTrue":false,"answer":"Biển 1 và 3."},{"id":"3","isTrue":false,"answer":"Biển 2 và 3."}]}'),
  (350,'Biển nào báo hiệu đường hầm?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Cả ba biển."},{"id":"2","isTrue":false,"answer":"Biển 2 và 3."},{"id":"3","isTrue":true,"answer":"Biển 2."}]}'),
  (351,'Biền nào chỉ dẫn tên đường trên các tuyến đường đối ngoại?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Biển 1."},{"id":"2","isTrue":false,"answer":"Biển 2."},{"id":"3","isTrue":true,"answer":"Biển 3."},{"id":"4","isTrue":false,"answer":"Biển 1 và 2."}]}'),
  (352,'Biển số 1 có ý nghĩa gì'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Biển chỉ dẫn hết hiệu lực khu vực cấm đỗ xe theo giờ trên các tuyến đường đối ngoại"},{"id":"2","isTrue":false,"answer":"Biển chỉ dẫn hết hiệu lực khu vực đỗ xe trên các tuyến đường đối ngoại."},{"id":"3","isTrue":false,"answer":"Biển chỉ dẫn khu vực đỗ xe trên các tuyến đường đối ngoại."}]}'),
  (353,'Biển sổ 3 có ý nghĩa gì?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Biển chỉ dẫn khu vực cấm đỗ xe trên các tuyến đường đối ngoại."},{"id":"2","isTrue":false,"answer":"Biển chỉ dẫn khu vực đỗ xe trên các tuyến đường đối ngoại."},{"id":"3","isTrue":true,"answer":"Biển chỉ dẫn khu vực hạn chế tốc độ tối đa trên các tuyến đường đối ngoại."},{"id":"4","isTrue":false,"answer":"Biển chỉ dẫn hết hiệu lực khu vực cấm đỗ xe theo giờ trên các tuyến đường đối ngoại"}]}'),
  (354,'Biển nào báo hiệu đường có làn đường dành cho ôtô khách?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Biển 1."},{"id":"2","isTrue":true,"answer":"Biển 2."},{"id":"3","isTrue":false,"answer":"Biển 3."}]}'),
  (355,'Biển nào báo hiệu rẽ ra đường có làn đường dành cho ôtô khách?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Biển 1."},{"id":"2","isTrue":false,"answer":"Biển 2."},{"id":"3","isTrue":true,"answer":"Biển 3."}]}'),
  (356,'Thứ tự các xe đi như thế nào là đúng quy tắc giao thông?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Xe tải, xe lam, xe con, môtô."},{"id":"2","isTrue":true,"answer":"Xe tải, môtô, xe lam, xe con."},{"id":"3","isTrue":false,"answer":"Xe lam, xe tải, xe con, môtô."},{"id":"4","isTrue":false,"answer":"Môtô, xe lam, xe tải, xe con."}]}'),
  (357,'Thứ tự các xe đi như thế nào là đúng quy tắc giao thông?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Xe công an, xe con, xe tải, xe lam."},{"id":"2","isTrue":false,"answer":"Xe công an, xe lam, xe con, xe tải."},{"id":"3","isTrue":false,"answer":"Xe công an, xe tải, xe lam, xe con."},{"id":"4","isTrue":false,"answer":"Xe con, xe công an, xe tải, xe lam."}]}'),
  (358,'Theo hướng mũi tên, thứ tự các xe đi như thế nào là đúng quy tắc giao thông?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Xe tải, xe công an, xe khách, xe con."},{"id":"2","isTrue":false,"answer":"Xe công an, xe khách, xe con, xe tải."},{"id":"3","isTrue":false,"answer":"Xe công an, xe con, xe tải, xe khách."},{"id":"4","isTrue":true,"answer":"Xe công an, xe tải, xe khách, xe con."}]}'),
  (359,'Thứ tự các xe đi như thế nào là đúng quy tắc giao thông?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Xe tải, xe lam, môtô."},{"id":"2","isTrue":false,"answer":"Xe lam, xe tải, môtô"},{"id":"3","isTrue":true,"answer":"Môtô, xe lam, xe tải."},{"id":"4","isTrue":false,"answer":"Xe lam, môtô, xe tải."}]}'),
  (360,'Xe nào phải nhường đường trong trường hợp này?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Xe con."},{"id":"2","isTrue":false,"answer":"Xe tải."}]}'),
  (361,'Trường hợp này xe nào được quyền đi trước?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Môtô."},{"id":"2","isTrue":true,"answer":"Xe con."}]}'),
  (362,'Thứ tự các xe đi như thế nào là đúng quy tắc giao thông?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Xe lam, xe cứu thương, xe con."},{"id":"2","isTrue":false,"answer":"Xe cứu thương, xe con, xe lam."},{"id":"3","isTrue":false,"answer":"Xe con, xe lam, xe cứu thương."}]}'),
  (363,'Thứ tự các xe đi như thế nào là đúng quy tắc giao thông?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Xe cứu thương, xe cứu hỏa, xe con."},{"id":"2","isTrue":true,"answer":"Xe cứu hỏa, xe cứu thương, xe con."},{"id":"3","isTrue":false,"answer":"Xe cứu thương, xe con, xe cứu hỏa."}]}'),
  (364,'Xe nào được quyền đi trước trong trường hợp này?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Môtô."},{"id":"2","isTrue":true,"answer":"Xe cứu thương."}]}'),
  (365,'Xe nào phải nhường đường đi cuối cùng qua nơi giao nhau này?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Xe khách."},{"id":"2","isTrue":false,"answer":"Xe tải."},{"id":"3","isTrue":false,"answer":"Xe con."}]}'),
  (366,'Xe nào phải nhường đường là đúng quy tắc giao thông?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Xe con."},{"id":"2","isTrue":false,"answer":"Xe tải."}]}'),
  (367,'Xe nào được quyền đi trước trong trường hợp này?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Xe công an."},{"id":"2","isTrue":true,"answer":"Xe chữa cháy."}]}'),
  (368,'Theo tín hiệu đèn, xe nào được phép đi?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Xe con và xe khách."},{"id":"2","isTrue":false,"answer":"Môtô."}]}'),
  (369,'Theo tín hiệu đèn, xe nào được quyền đi là đúng quy tắc giao thông?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Xe khách, môtô."},{"id":"2","isTrue":false,"answer":"Xe tải, môtô."},{"id":"3","isTrue":true,"answer":"Xe con, xe tải."}]}'),
  (370,'Trong trường hợp này xe nào được quyền đi trước?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Xe công an."},{"id":"2","isTrue":true,"answer":"Xe quân sự."}]}'),
  (371,'Theo tín hiệu đèn, xe tải đi theo hướng nào là đúng quy tắc giao thông?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Hướng 2, 3, 4."},{"id":"2","isTrue":true,"answer":"Chỉ hướng 1."},{"id":"3","isTrue":false,"answer":"Hướng 1 và 2."},{"id":"4","isTrue":false,"answer":"Hướng 3 và 4."}]}'),
  (372,'Các xe đi theo hướng mũi tên, xe nào vi phạm quy tắc giao thông?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Xe khách, xe tải, môtô."},{"id":"2","isTrue":false,"answer":"Xe tải, xe con, môtô."},{"id":"3","isTrue":false,"answer":"Xe khách, xe con, môtô."}]}'),
  (373,'Thứ tự các xe đi như thế nào là đúng quy tắc giao thông?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Xe khách, xe tải, môtô, xe con."},{"id":"2","isTrue":false,"answer":"Xe con, xe khách, xe tải, môtô."},{"id":"3","isTrue":true,"answer":"Môtô, xe tải, xe khách, xe con."},{"id":"4","isTrue":false,"answer":"Môtô, xe tải, xe con, xe khách."}]}'),
  (374,'Trong trường hợp này xe nào đỗ vi phạm quy tắc giao thông?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Xe tải"},{"id":"2","isTrue":false,"answer":"Xe con và môtô."},{"id":"3","isTrue":false,"answer":"Cả ba xe."},{"id":"4","isTrue":false,"answer":"Xe con và xe tải."}]}'),
  (375,'Xe nào được quyền đi trước?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Xe tải."},{"id":"2","isTrue":true,"answer":"Xe con."},{"id":"3","isTrue":false,"answer":"Xe lam."}]}'),
  (376,'Theo hướng mũi tên, những hướng nào xe gắn máy đi được?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Cả ba hướng."},{"id":"2","isTrue":false,"answer":"Chỉ hướng 1 và 3."},{"id":"3","isTrue":false,"answer":"Chỉ hướng 1."}]}'),
  (377,'Xe nào đỗ vi phạm quy tắc giao thông?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Cả hai xe."},{"id":"2","isTrue":false,"answer":"Không xe nào vi phạm."},{"id":"3","isTrue":false,"answer":"Chỉ xe môtô vi phạm."},{"id":"4","isTrue":false,"answer":"Chỉ xe tải vi phạm."}]}'),
  (378,'Xe nào đỗ vi phạm quy tắc giao thông?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Chỉ môtô"},{"id":"2","isTrue":false,"answer":"Chỉ xe tải"},{"id":"3","isTrue":true,"answer":"Cả ba xe."},{"id":"4","isTrue":false,"answer":"Chỉ môtô và xe tải."}]}'),
  (379,'Xe tải kéo môtô ba bánh như hình này có đúng quy tắc giao thông không?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Đúng."},{"id":"2","isTrue":true,"answer":"Không đúng."}]}'),
  (380,'Theo hướng mũi tên, hướng nào xe không được phép đi?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Hướng 2 và 5."},{"id":"2","isTrue":true,"answer":"Chỉ hướng 1."}]}'),
  (381,'Theo hướng mũi tên, những hướng nào ôtô không được phép đi?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Hướng 1 và 2."},{"id":"2","isTrue":false,"answer":"Chỉ hướng 1."},{"id":"3","isTrue":false,"answer":"Hướng 1 và 4."},{"id":"4","isTrue":true,"answer":"Hướng 2 và 3."}]}'),
  (382,'Xe nào vượt đúng quy tắc giao thông?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Cả 2 xe đều không đúng"},{"id":"2","isTrue":true,"answer":"Xe con"},{"id":"3","isTrue":true,"answer":"Xe khách"}]}'),
  (383,'Theo hướng mũi tên, gặp biển hướng đi phải theo đặt trước ngã tư, những hướng nào xe được phép đi?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Hướng 2 và 3."},{"id":"2","isTrue":false,"answer":"Hướng 1,2 và 3"},{"id":"3","isTrue":false,"answer":"Hướng 1 và 3."}]}'),
  (384,'Xe kéo nhau như hình này có vi phạm quy tắc giao thông không?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Không"},{"id":"2","isTrue":true,"answer":"Vi phạm"}]}'),
  (385,'Xe nào phải nhường đường trong trường hợp này?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Xe khách."},{"id":"2","isTrue":false,"answer":"Xe tải."}]}'),
  (386,'Xe nào được quyền đi trước trong trường hợp này?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Xe lam."},{"id":"2","isTrue":true,"answer":"Xe xích lô."}]}'),
  (387,'Xe kéo nhau trong trường hợp này đúng quy định'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Không đúng."},{"id":"2","isTrue":false,"answer":"Đúng"}]}'),
  (388,'Theo hướng mũi tên, những hướng nào ôtô con được phép đi?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Hướng 1."},{"id":"2","isTrue":true,"answer":"Hướng 1, 3 và 4."},{"id":"3","isTrue":false,"answer":"Hướng 2, 3 và 4."},{"id":"4","isTrue":false,"answer":"Cả bốn hướng."}]}'),
  (389,'Thứ tự các xe đi như thế nào là đúng quy tắc giao thông?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Xe lam, môtô, xe con, xe đạp"},{"id":"2","isTrue":false,"answer":"Xe con, xe đạp, môtô, xe lam."},{"id":"3","isTrue":false,"answer":"Xe lam, xe con, môtô + xe đạp."},{"id":"4","isTrue":true,"answer":"Môtô + xe đạp, xe lam, xe con."}]}'),
  (390,'Theo hướng mũi tên, những hướng nào xe tải được phép đi?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Chỉ hướng 1."},{"id":"2","isTrue":false,"answer":"Hướng 1, 3 và 4."},{"id":"3","isTrue":false,"answer":"Hướng 1, 2 và 3."},{"id":"4","isTrue":false,"answer":"Cả bốn hướng."}]}'),
  (391,'Những hướng nào xe tải được phép đi?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Cả ba hướng."},{"id":"2","isTrue":true,"answer":"Hướng 2 và 3."}]}'),
  (392,'Những hướng nào ôtô tải được phép đi?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Chỉ hướng 1."},{"id":"2","isTrue":false,"answer":"Hướng 1 và 4."},{"id":"3","isTrue":true,"answer":"Hướng 1 và 5."},{"id":"4","isTrue":false,"answer":"Hướng 1, 4 và 5."}]}'),
  (393,'Những hướng nào ôtô tải được phép đi?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Cả bốn hướng."},{"id":"2","isTrue":true,"answer":"Trừ hướng 2."},{"id":"3","isTrue":false,"answer":"Hướng 2, 3 và 4."},{"id":"4","isTrue":false,"answer":"Trừ hướng 4."}]}'),
  (394,'Xe nào được quyền đi trước trong trường hợp này?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Môtô"},{"id":"2","isTrue":false,"answer":"Xe con"}]}'),
  (395,'ôtô con đi theo chiều mũi tên có vi phạm quy tắc giao thông không?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Không vi phạm."},{"id":"2","isTrue":true,"answer":"Vi phạm."}]}'),
  (396,'Xe nào vi phạm quy tắc giao thông?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Xe khách."},{"id":"2","isTrue":false,"answer":"Môtô."},{"id":"3","isTrue":true,"answer":"Xe con."},{"id":"4","isTrue":false,"answer":"Xe con và môtô."}]}'),
  (397,'Các xe đi như thế nào là đúng quy tắc giao thông?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Các xe ở phía tay phải và tay trái của người điều khiển được phép đi thẳng."},{"id":"2","isTrue":false,"answer":"Cho phép các xe ở mọi hướng được rẽ phải."},{"id":"3","isTrue":true,"answer":"Tất cả các xe phải dừng lại trước ngã tư, trừ những xe đã ở trong ngã tư được phép tiếp tực đi."}]}'),
  (398,'Theo hướng mũi tên, xe nào được phép đi?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Môtô, xe con."},{"id":"2","isTrue":false,"answer":"Xe con, xe tải."},{"id":"3","isTrue":true,"answer":"Môtô, xe tải."},{"id":"4","isTrue":false,"answer":"Cả bả xe."}]}'),
  (399,'Xe con vượt xe tải như trường hợp này có đúng không?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Đúng."},{"id":"2","isTrue":false,"answer":"Không đúng."}]}'),
  (400,'Xe nào vượt đúng quy tắc giao thông?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Xe tải."},{"id":"2","isTrue":false,"answer":"Cả hai xe."},{"id":"3","isTrue":true,"answer":"Xe con."}]}'),
  (401,'Đi theo hướng mủi tên, xe nào vi phạm quy tắc giao thông?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Xe chữa cháy."},{"id":"2","isTrue":true,"answer":"Xe tải."},{"id":"3","isTrue":false,"answer":"Cả hai xe."}]}'),
  (402,'Thứ tự các xe đi như thế nào là đúng quy tắc giao thông?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Xe khách, xe tải, xe con."},{"id":"2","isTrue":false,"answer":"Xe con và xe tải, xe khách."},{"id":"3","isTrue":true,"answer":"Xe tải, xe khách, xe con."}]}'),
  (403,'Thứ tự các xe đi như thế nào là đúng quy tắc giao thông?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Xe khách và xe tải, xe con"},{"id":"2","isTrue":false,"answer":"Xe tải, xe khách, xe con."},{"id":"3","isTrue":false,"answer":"Xe con, xe khách, xe tải."}]}'),
  (404,'Những hướng nào ôtô tải được phép đi?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Cả bốn hướng."},{"id":"2","isTrue":false,"answer":"Chỉ hướng 1 và 2."},{"id":"3","isTrue":true,"answer":"Trừ hướng 4"}]}'),
  (405,'Theo hướng mũi tên, thứ tự các xe đi như thế nào là đúng?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Xe công an, xe con, xe tải, xe khách."},{"id":"2","isTrue":false,"answer":"Xe con, xe khách và xe công an, xe tải."},{"id":"3","isTrue":false,"answer":"Xe công an, xe con, xe khách, xe tải."},{"id":"4","isTrue":false,"answer":"Xe con, xe tải, xe khách, xe công an."}]}'),
  (406,'Những hướng nào ôtô tải được phép đi?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Cả bốn hướng."},{"id":"2","isTrue":false,"answer":"Hướng 1,2 và 3"},{"id":"3","isTrue":true,"answer":"Hướng 1 và 4"}]}'),
  (407,'Trong hình dưới dây, xe nào chấp hành đúng quy tắc giao thông?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Xe khách, môtô"},{"id":"2","isTrue":true,"answer":"Tất cả các loại xe trên"},{"id":"3","isTrue":false,"answer":"Không xe nào chấp hành đúng quy tắc giao thông."}]}'),
  (408,'Theo hướng mũi tên, những hướng nào xe môtô được phép đi?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Cả ba hướng."},{"id":"2","isTrue":false,"answer":"Hướng 1 và 2."},{"id":"3","isTrue":true,"answer":"Hướng 1 và 3."},{"id":"4","isTrue":false,"answer":"Hướng 2 và 3."}]}'),
  (409,'Trong trường hợp này, thứ tự xe đi như thế nào là đúng quy tắc giao thông?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Xe công an, xe quân sự, xe con + môtô."},{"id":"2","isTrue":true,"answer":"Xe quân sự, xe công an, xe con + môtô."},{"id":"3","isTrue":false,"answer":"Xe môtô + xe con, xe quân sự, xe công an."}]}'),
  (410,'Xe nào phải nhường đường là đúng quy tắc giao thông?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Xe A."},{"id":"2","isTrue":false,"answer":"Xe B."}]}'),
  (411,'Xe con quay đầu đi ngược lại như hình vẽ dưới có vi phạm quy tắc giao thông?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Không vi phạm."},{"id":"2","isTrue":true,"answer":"Vi phạm."}]}'),
  (412,'Trong hình dưới, những xe nào vi phạm quy tắc giao thông?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Xe con (E), môtô (C)."},{"id":"2","isTrue":false,"answer":"Xe tải (A), môtô (D)."},{"id":"3","isTrue":false,"answer":"Xe khách (B), môtô (C)."},{"id":"4","isTrue":false,"answer":"Xe khách (B), môtô (D)."}]}'),
  (413,'Để điều khiển cho xe đi thẳng, người lái xe phải làm gì là đúng quy tắc giao thông?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Nhường xe con rẽ trái trước."},{"id":"2","isTrue":false,"answer":"Đi thẳng không nhường."}]}'),
  (414,'Người lái xe điều khiển xe chạy theo hướng nào là đúng quy tắc giao thông?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Chỉ hướng 2."},{"id":"2","isTrue":true,"answer":"Hướng 1 và 2."},{"id":"3","isTrue":false,"answer":"Tất cả các hướng trừ hướng 3."},{"id":"4","isTrue":false,"answer":"Tất cả các hướng trừ hướng 4."}]}'),
  (415,'Xe nào phải nhường đường là đúng quy tắc giao thông?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Xe đỏ (A)."},{"id":"2","isTrue":true,"answer":"Xe xanh (B)."}]}'),
  (416,'Người lái xe điều khiển xe rẽ trái như thế nào là đúng quy tắc giao thông?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Rẽ trái ngay trước xe buýt."},{"id":"2","isTrue":false,"answer":"Rẽ trái trước xe tải."},{"id":"3","isTrue":true,"answer":"Nhường đường cho xe buýt và xe tải."}]}'),
  (417,'Trong hình dưới, những xe nào vi phạm quy tắc giao thông?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Xe con (B), môtô (C)."},{"id":"2","isTrue":false,"answer":"Xe con (A), môtô (C)."},{"id":"3","isTrue":true,"answer":"Xe con (E), môtô (D)"},{"id":"4","isTrue":false,"answer":"Tất cả các loại xe trên."}]}'),
  (418,'Xe nào đi trước là đúng quy tắc giao thông?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Xe của bạn."},{"id":"2","isTrue":true,"answer":"Xe tải."}]}'),
  (419,'Người lái xe có thể quay đầu xe như thế nào là đúng quy tắc giao thông?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Quay đầu theo hướng A."},{"id":"2","isTrue":false,"answer":"Quay đầu theo hướng B"},{"id":"3","isTrue":true,"answer":"Cấm quay đầu."}]}'),
  (420,'Thứ tự các xe đi như thế nào là đúng quy tắc giao thông?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Xe con và xe tải, xe của bạn."},{"id":"2","isTrue":false,"answer":"Xe của bạn, xe tải, xe con."},{"id":"3","isTrue":true,"answer":"Xe của bạn và xe con, xe tải."},{"id":"4","isTrue":false,"answer":"Xe của bạn - xe tải + xe con."}]}'),
  (421,'Khi muốn vượt xe tải, người lái xe phải làm gì là đúng quy tắc giao thông?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Tăng tốc cho xe chạy vượt qua."},{"id":"2","isTrue":true,"answer":"Bật tính hiệu báo hiệu bằng đèn hoặc còi, khi đủ điều kiện an toàn, tăng tốc cho xe chạy vượt qua."},{"id":"3","isTrue":false,"answer":"Đánh lái sang làn bên trái và tăng tốc cho xe chạy vượt qua."}]}'),
  (422,'Theo tín hiệu đèn, xe nào phải dừng lại là đúng quy tắc giao thông?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Xe khách, môtô."},{"id":"2","isTrue":false,"answer":"Xe tải, môtô."},{"id":"3","isTrue":true,"answer":"Xe con, xe tải."}]}'),
  (423,'Xe nào phải nhường đường là đúng quy tắc giao thông?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Xe tải."},{"id":"2","isTrue":true,"answer":"Xe khách."},{"id":"3","isTrue":false,"answer":"Xe con."}]}'),
  (424,'Người lái xe có được vượt xe tải để đi thẳng trong trường hợp này?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Được vượt."},{"id":"2","isTrue":true,"answer":"Cấm vượt."}]}'),
  (425,'Bạn có được phép vượt xe môtô phía trước không?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Cho phép."},{"id":"2","isTrue":true,"answer":"Không được vượt."}]}'),
  (426,'Người lái xe dừng tại vị trí nào là đúng quy tắc giao thông?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Vị trí A và B."},{"id":"2","isTrue":false,"answer":"Vị trí A và C."},{"id":"3","isTrue":true,"answer":"Vị trí B và C."},{"id":"4","isTrue":false,"answer":"Cả ba vị trí A, B, C."}]}'),
  (427,'Bạn được dừng xe ở vị trí nào trong tình huống này?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Được phép dừng ở vị trí A."},{"id":"2","isTrue":false,"answer":"Được phép dừng ở vị trí B."},{"id":"3","isTrue":false,"answer":"Được phép dừng ở vị trí A và B."},{"id":"4","isTrue":true,"answer":"Không được dừng."}]}'),
  (428,'Theo tính hiệu đèn của xe cơ giới, xe nào vi phạm quy tắc giao thông?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Xe môtô."},{"id":"2","isTrue":true,"answer":"Xe ôtô con."},{"id":"3","isTrue":false,"answer":"Không xe nào vi phạm."}]}'),
  (429,'Các xe đi theo hướng mũi tên, xe nào vi phạm quy tắc giao thông?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Xe con."},{"id":"2","isTrue":true,"answer":"Xe tải."},{"id":"3","isTrue":false,"answer":"Xe con, xe tải."}]}'),
  (430,'Các xe đi theo hướng mũi tên, xe nào vi phạm quy tắc giao thông?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Xe tải, xe con."},{"id":"2","isTrue":false,"answer":"Xe khách, xe con."},{"id":"3","isTrue":true,"answer":"Xe khách, xe tải."}]}'),
  (431,'Các xe đi theo hướng mũi tên, xe nào vi phạm quy tắc giao thông?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Xe con, xe tải, xe khách."},{"id":"2","isTrue":true,"answer":"Xe tải, xe khách, xe môtô."},{"id":"3","isTrue":false,"answer":"Xe khách, xe môtô, xe con."},{"id":"4","isTrue":false,"answer":"Cả bốn xe."}]}'),
  (432,'Các xe đi theo hướng mũi tên, xe nào vi phạm quy tắc giao thông?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Xe khách, xe tải."},{"id":"2","isTrue":false,"answer":"Xe khách, xe con."},{"id":"3","isTrue":false,"answer":"Xe con, xe tải."},{"id":"4","isTrue":false,"answer":"Xe khách, xe tải, xe con."}]}'),
  (433,'Trong tình huống dưới đây, để tránh xe phía trước bị hỏng đột xuất trên đường, người lái xe phải làm gì?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Đánh lái sang trái cho xe vượt qua."},{"id":"2","isTrue":true,"answer":"Quan sát phía trước, phía sau, khi đủ điều kiện an toàn, bật tín hiệu bằng đèn hoặc còi rồi cho xe chạy vượt qua."},{"id":"3","isTrue":false,"answer":"Cấm vượt."}]}'),
  (434,'Các xe đi theo hướng mũi tên, xe nào chấp hành đúng quy tắc giao thông?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Xe tải, môtô."},{"id":"2","isTrue":true,"answer":"Xe khách, môtô."},{"id":"3","isTrue":false,"answer":"Xe tải, xe con."},{"id":"4","isTrue":false,"answer":"Môtô, xe con."}]}'),
  (435,'Trong hình dưới, những xe nào vi phạm quy tắc giao thông?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Xe con (A), xe con (B), xe tải (D)."},{"id":"2","isTrue":false,"answer":"Xe tải (D), xe con (E), xe buýt (G)."},{"id":"3","isTrue":true,"answer":"Xe tải (D), xe con (B)."},{"id":"4","isTrue":false,"answer":"Xe con (B), xe con (C)."}]}'),
  (436,'Các xe đi theo thứ tự nào là đúng quy tắc giao thông đường bộ?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Xe của bạn, môtô, xe con."},{"id":"2","isTrue":false,"answer":"Xe con, xe của bạn, môtô."},{"id":"3","isTrue":true,"answer":"Môtô, xe con, xe của bạn."}]}'),
  (437,'Các xe đi theo thứ tự nào là đúng quy tắc giao thông đường bộ?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Xe của bạn, môtô, xe con."},{"id":"2","isTrue":true,"answer":"Xe con, xe của bạn, môtô."},{"id":"3","isTrue":false,"answer":"Môtô, xe con, xe của bạn."}]}'),
  (438,'Xe nào phải dừng lại trong trường hợp này?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Xe con."},{"id":"2","isTrue":false,"answer":"Xe của bạn."},{"id":"3","isTrue":false,"answer":"Cả hai xe."}]}'),
  (439,'Xe của bạn được đi theo hướng nào trong trường hợp này?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Đi thẳng."},{"id":"2","isTrue":false,"answer":"Đi thẳng hoặc rẽ phải."},{"id":"3","isTrue":true,"answer":"Rẽ trái."}]}'),
  (440,'Xe của bạn được đi theo hướng nào trong trường hợp này?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Chuyển sang làn đường bên phải và rẽ phải."},{"id":"2","isTrue":false,"answer":"Dừng lại trước vạch dừng và rẽ phải khi đèn xanh."},{"id":"3","isTrue":true,"answer":"Dừng lại trước vạch dừng và đi thẳng khi đèn xanh."},{"id":"4","isTrue":true,"answer":"Dừng lại trước vạch dừng và rẽ trái khi đèn xanh."}]}'),
  (441,'Bạn xử lý như thế nào trong trường hợp này?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Tăng tốc độ, rẽ phải trước xe tải và xe đạp."},{"id":"2","isTrue":true,"answer":"Giảm tốc độ, rẽ phải sau xe tải và xe đạp."},{"id":"3","isTrue":false,"answer":"Tăng tốc độ, rẽ phải trước xe đạp."}]}'),
  (442,'Bạn xử lý như thế nào trong trường hợp này?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Tăng tốc độ, rẽ phải trước xe con màu xanh phía trước và người đi bộ."},{"id":"2","isTrue":false,"answer":"Giảm tốc độ, để người đi bộ qua đường và rẽ phải trước xe con màu xanh."},{"id":"3","isTrue":true,"answer":"Giảm tốc độ, để người đi bộ qua đường và rẽ phải sau xe con màu xanh."}]}'),
  (443,'Bạn xử lý như thế nào trong trường hợp này?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Nhường đường cho xe khách và đi trước xe đạp."},{"id":"2","isTrue":false,"answer":"Nhường đường cho xe đạp và đi trước xe khách."},{"id":"3","isTrue":true,"answer":"Nhường đường cho xe đạp và xe khách."}]}'),
  (444,'Xe nào phải nhường đường trong trường hợp này?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Xe con."},{"id":"2","isTrue":true,"answer":"Xe tải."},{"id":"3","isTrue":false,"answer":"Xe của bạn."}]}'),
  (445,'Xe nào phải nhường đường trong trường hợp này?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Xe đi ngược chiều"},{"id":"2","isTrue":true,"answer":"Xe của bạn"}]}'),
  (446,'Bạn xử lý như thế nào khi lái xe ôtô vượt qua đoàn người đi xe đạp có tổ chức?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Tăng tốc độ, chuyển sang làn đường bên trái để vượt."},{"id":"2","isTrue":true,"answer":"Không được vượt những người đi xe đạp."}]}'),
  (447,'Phía trước có một xe đang lùi vào nơi đỗ, xe con phía trước đang chuyển sang làn đường bên trái, bạn xử lý như thế nào trong trường hợp này?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Nếu phía sau không có xe xin vượt, chuyển sang làn đường bên trái."},{"id":"2","isTrue":true,"answer":"Nếu phía sau có xe xin vượt, thì giảm tốc độ, ở lại làn đường, dừng lại khi cần thiết."},{"id":"3","isTrue":false,"answer":"Tăng tốc độ trên làn đường của mình và vượt xe con."}]}'),
  (448,'Bạn xử lý như thế nào khi xe phía trước đang lùi ra khỏi nơi đỗ?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Chuyển sang nửa đường bên trái để đi tiếp."},{"id":"2","isTrue":false,"answer":"Bấm còi, nháy đèn báo hiệu và đi tiếp."},{"id":"3","isTrue":true,"answer":"Giảm tốc độ, dừng lại nhường đường."}]}'),
  (449,'Phía trước có một xe màu xanh đang vượt xe màu vàng trên làn đường của bạn, bạn xử lý như thế nào trong trường hợp này?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":true,"answer":"Phanh xe giảm tốc độ và đi sát lề đường bên phải."},{"id":"2","isTrue":false,"answer":"Bấm còi, nháy đèn báo hiệu, giữ nguyên tốc độ và đi tiếp."},{"id":"3","isTrue":false,"answer":"Phanh xe giảm tốc độ và đi sát lề đường bên trái."}]}'),
  (450,'Xe tải phía trước có tín hiệu xin chuyển làn đường, bạn xử lý như thế nào trong trường hợp này?'
 ,'Hình báo','pic',
 '{"data":[{"id":"1","isTrue":false,"answer":"Bật tín hiệu xin chuyển làn đường sang trái để vượt xe tải."},{"id":"2","isTrue":true,"answer":"Phanh xe giảm tốc độ chờ xe tải phía trước chuyển làn đường."},{"id":"3","isTrue":false,"answer":"Bấm còi báo hiệu và vượt qua xe tải trên làn đường của mình."}]}')
;

UPDATE "Question" SET "exams" = 'a0015,a0016' where "id" = 1;
UPDATE "Question" SET "exams" = 'a0001,a0016' where "id" = 2;
UPDATE "Question" SET "exams" = 'a0015,a0016' where "id" = 3;
UPDATE "Question" SET "exams" = 'a0015,a0016' where "id" = 4;
UPDATE "Question" SET "exams" = 'a0005,a0016' where "id" = 5;
UPDATE "Question" SET "exams" = 'a0015,a0016' where "id" = 6;
UPDATE "Question" SET "exams" = 'a0007,a0016' where "id" = 7;
UPDATE "Question" SET "exams" = 'a0010,a0016' where "id" = 8;
UPDATE "Question" SET "exams" = 'a0009,a0016' where "id" = 9;
UPDATE "Question" SET "exams" = 'a0007,a0016' where "id" = 10;
UPDATE "Question" SET "exams" = 'a0013,a0016' where "id" = 11;
UPDATE "Question" SET "exams" = 'a0012,a0016' where "id" = 12;
UPDATE "Question" SET "exams" = 'a0010,a0016' where "id" = 13;
UPDATE "Question" SET "exams" = 'a0009,a0016' where "id" = 14;
UPDATE "Question" SET "exams" = 'a0001,a0014,a0016' where "id" = 15;
UPDATE "Question" SET "exams" = 'a0013,a0016' where "id" = 16;
UPDATE "Question" SET "exams" = 'a0013,a0016' where "id" = 17;
UPDATE "Question" SET "exams" = 'a0013,a0016' where "id" = 18;
UPDATE "Question" SET "exams" = 'a0011,a0016' where "id" = 19;
UPDATE "Question" SET "exams" = 'a0011,a0016' where "id" = 20;
UPDATE "Question" SET "exams" = 'a0010,a0016' where "id" = 21;
UPDATE "Question" SET "exams" = 'a0004,a0016' where "id" = 22;
UPDATE "Question" SET "exams" = 'a0009,a0016' where "id" = 23;
UPDATE "Question" SET "exams" = 'a0003,a0016' where "id" = 24;
UPDATE "Question" SET "exams" = 'a0003,a0016' where "id" = 25;
UPDATE "Question" SET "exams" = 'a0009,a0016' where "id" = 26;
UPDATE "Question" SET "exams" = 'a0010,a0016' where "id" = 27;
UPDATE "Question" SET "exams" = 'a0004,a0016' where "id" = 28;
UPDATE "Question" SET "exams" = 'a0004,a0016' where "id" = 29;
UPDATE "Question" SET "exams" = 'a0004,a0016' where "id" = 30;
UPDATE "Question" SET "exams" = 'a0004,a0017' where "id" = 31;
UPDATE "Question" SET "exams" = 'a0004,a0017' where "id" = 32;
UPDATE "Question" SET "exams" = 'a0003,a0017' where "id" = 33;
UPDATE "Question" SET "exams" = 'a0005,a0017' where "id" = 34;
UPDATE "Question" SET "exams" = 'a0005,a0017' where "id" = 35;
UPDATE "Question" SET "exams" = 'a0004,a0017' where "id" = 36;
UPDATE "Question" SET "exams" = 'a0004,a0017' where "id" = 37;
UPDATE "Question" SET "exams" = 'a0003,a0017' where "id" = 38;
UPDATE "Question" SET "exams" = 'a0012,a0017' where "id" = 39;
UPDATE "Question" SET "exams" = 'a0012,a0017' where "id" = 40;
UPDATE "Question" SET "exams" = 'a0012,a0017' where "id" = 41;
UPDATE "Question" SET "exams" = 'a0014,a0017' where "id" = 42;
UPDATE "Question" SET "exams" = 'a0002,a0017' where "id" = 43;
UPDATE "Question" SET "exams" = 'a0007,a0017' where "id" = 44;
UPDATE "Question" SET "exams" = 'a0013,a0017' where "id" = 45;
UPDATE "Question" SET "exams" = 'a0014,a0017' where "id" = 46;
UPDATE "Question" SET "exams" = 'a0007,a0017' where "id" = 47;
UPDATE "Question" SET "exams" = 'a0007,a0017' where "id" = 48;
UPDATE "Question" SET "exams" = 'a0002,a0017' where "id" = 49;
UPDATE "Question" SET "exams" = 'a0008,a0017' where "id" = 50;
UPDATE "Question" SET "exams" = 'a0005,a0017' where "id" = 51;
UPDATE "Question" SET "exams" = 'a0006,a0017' where "id" = 52;
UPDATE "Question" SET "exams" = 'a0004,a0017' where "id" = 53;
UPDATE "Question" SET "exams" = 'a0002,a0017' where "id" = 54;
UPDATE "Question" SET "exams" = 'a0003,a0017' where "id" = 55;
UPDATE "Question" SET "exams" = 'a0011,a0017' where "id" = 56;
UPDATE "Question" SET "exams" = 'a0014,a0015,a0017' where "id" = 57;
UPDATE "Question" SET "exams" = 'a0017' where "id" = 58;
UPDATE "Question" SET "exams" = 'a0013,a0017' where "id" = 59;
UPDATE "Question" SET "exams" = 'a0012,a0017' where "id" = 60;
UPDATE "Question" SET "exams" = 'a0014,a0018' where "id" = 61;
UPDATE "Question" SET "exams" = 'a0013,a0018' where "id" = 62;
UPDATE "Question" SET "exams" = 'a0012,a0018' where "id" = 63;
UPDATE "Question" SET "exams" = 'a0011,a0018' where "id" = 64;
UPDATE "Question" SET "exams" = 'a0010,a0018' where "id" = 65;
UPDATE "Question" SET "exams" = 'a0009,a0018' where "id" = 66;
UPDATE "Question" SET "exams" = 'a0008,a0018' where "id" = 67;
UPDATE "Question" SET "exams" = 'a0007,a0018' where "id" = 68;
UPDATE "Question" SET "exams" = 'a0006,a0018' where "id" = 69;
UPDATE "Question" SET "exams" = 'a0004,a0005,a0018' where "id" = 70;
UPDATE "Question" SET "exams" = 'a0018' where "id" = 71;
UPDATE "Question" SET "exams" = 'a0003,a0018' where "id" = 72;
UPDATE "Question" SET "exams" = 'a0002,a0018' where "id" = 73;
UPDATE "Question" SET "exams" = 'a0018' where "id" = 74;
UPDATE "Question" SET "exams" = 'a0018' where "id" = 75;
UPDATE "Question" SET "exams" = 'a0015,a0018' where "id" = 76;
UPDATE "Question" SET "exams" = 'a0005,a0018' where "id" = 77;
UPDATE "Question" SET "exams" = 'a0001,a0018' where "id" = 78;
UPDATE "Question" SET "exams" = 'a0015,a0018' where "id" = 79;
UPDATE "Question" SET "exams" = 'a0001,a0018' where "id" = 80;
UPDATE "Question" SET "exams" = 'a0001,a0018' where "id" = 81;
UPDATE "Question" SET "exams" = 'a0001,a0018' where "id" = 82;
UPDATE "Question" SET "exams" = 'a0015,a0018' where "id" = 83;
UPDATE "Question" SET "exams" = 'a0014,a0018' where "id" = 84;
UPDATE "Question" SET "exams" = 'a0011,a0018' where "id" = 85;
UPDATE "Question" SET "exams" = 'a0011,a0018' where "id" = 86;
UPDATE "Question" SET "exams" = 'a0009,a0018' where "id" = 87;
UPDATE "Question" SET "exams" = 'a0006,a0018' where "id" = 88;
UPDATE "Question" SET "exams" = 'a0005,a0018' where "id" = 89;
UPDATE "Question" SET "exams" = 'a0005,a0018' where "id" = 90;
UPDATE "Question" SET "exams" = 'a0005,a0019' where "id" = 91;
UPDATE "Question" SET "exams" = 'a0010,a0019' where "id" = 92;
UPDATE "Question" SET "exams" = 'a0009,a0019' where "id" = 93;
UPDATE "Question" SET "exams" = 'a0006,a0015,a0019' where "id" = 94;
UPDATE "Question" SET "exams" = 'a0013,a0019' where "id" = 95;
UPDATE "Question" SET "exams" = 'a0011,a0019' where "id" = 96;
UPDATE "Question" SET "exams" = 'a0001,a0019' where "id" = 97;
UPDATE "Question" SET "exams" = 'a0015,a0019' where "id" = 98;
UPDATE "Question" SET "exams" = 'a0015,a0019' where "id" = 99;
UPDATE "Question" SET "exams" = 'a0015,a0019' where "id" = 100;
UPDATE "Question" SET "exams" = 'a0014,a0019' where "id" = 101;
UPDATE "Question" SET "exams" = 'a0014,a0019' where "id" = 102;
UPDATE "Question" SET "exams" = 'a0014,a0019' where "id" = 103;
UPDATE "Question" SET "exams" = 'a0013,a0019' where "id" = 104;
UPDATE "Question" SET "exams" = 'a0013,a0019' where "id" = 105;
UPDATE "Question" SET "exams" = 'a0013,a0019' where "id" = 106;
UPDATE "Question" SET "exams" = 'a0012,a0019' where "id" = 107;
UPDATE "Question" SET "exams" = 'a0015,a0019' where "id" = 108;
UPDATE "Question" SET "exams" = 'a0010,a0019' where "id" = 109;
UPDATE "Question" SET "exams" = 'a0004,a0019' where "id" = 110;
UPDATE "Question" SET "exams" = 'a0003,a0019' where "id" = 111;
UPDATE "Question" SET "exams" = 'a0001,a0019' where "id" = 112;
UPDATE "Question" SET "exams" = 'a0003,a0019' where "id" = 113;
UPDATE "Question" SET "exams" = 'a0015,a0019' where "id" = 114;
UPDATE "Question" SET "exams" = 'a0013,a0019' where "id" = 115;
UPDATE "Question" SET "exams" = 'a0012,a0019' where "id" = 116;
UPDATE "Question" SET "exams" = 'a0011,a0019' where "id" = 117;
UPDATE "Question" SET "exams" = 'a0003,a0019' where "id" = 118;
UPDATE "Question" SET "exams" = 'a0002,a0019' where "id" = 119;
UPDATE "Question" SET "exams" = 'a0014,a0019' where "id" = 120;
UPDATE "Question" SET "exams" = 'a0013,a0020' where "id" = 121;
UPDATE "Question" SET "exams" = 'a0011,a0020' where "id" = 122;
UPDATE "Question" SET "exams" = 'a0009,a0020' where "id" = 123;
UPDATE "Question" SET "exams" = 'a0008,a0020' where "id" = 124;
UPDATE "Question" SET "exams" = 'a0006,a0020' where "id" = 125;
UPDATE "Question" SET "exams" = 'a0006,a0020' where "id" = 126;
UPDATE "Question" SET "exams" = 'a0006,a0020' where "id" = 127;
UPDATE "Question" SET "exams" = 'a0005,a0020' where "id" = 128;
UPDATE "Question" SET "exams" = 'a0002,a0020' where "id" = 129;
UPDATE "Question" SET "exams" = 'a0012,a0020' where "id" = 130;
UPDATE "Question" SET "exams" = 'a0007,a0020' where "id" = 131;
UPDATE "Question" SET "exams" = 'a0009,a0020' where "id" = 132;
UPDATE "Question" SET "exams" = 'a0006,a0020' where "id" = 133;
UPDATE "Question" SET "exams" = 'a0001,a0020' where "id" = 134;
UPDATE "Question" SET "exams" = 'a0014,a0020' where "id" = 135;
UPDATE "Question" SET "exams" = 'a0010,a0020' where "id" = 136;
UPDATE "Question" SET "exams" = 'a0011,a0020' where "id" = 137;
UPDATE "Question" SET "exams" = 'a0003,a0020' where "id" = 138;
UPDATE "Question" SET "exams" = 'a0008,a0020' where "id" = 139;
UPDATE "Question" SET "exams" = 'a0007,a0020' where "id" = 140;
UPDATE "Question" SET "exams" = 'a0020' where "id" = 141;
UPDATE "Question" SET "exams" = 'a0009,a0020' where "id" = 142;
UPDATE "Question" SET "exams" = 'a0007,a0008,a0020' where "id" = 143;
UPDATE "Question" SET "exams" = 'a0006,a0020' where "id" = 144;
UPDATE "Question" SET "exams" = 'a0002,a0020' where "id" = 145;
UPDATE "Question" SET "exams" = 'a0003,a0020' where "id" = 146;
UPDATE "Question" SET "exams" = 'a0014,a0020' where "id" = 147;
UPDATE "Question" SET "exams" = 'a0015,a0020' where "id" = 148;
UPDATE "Question" SET "exams" = 'a0014,a0020' where "id" = 149;
UPDATE "Question" SET "exams" = 'a0013,a0020' where "id" = 150;
UPDATE "Question" SET "exams" = 'a0010,a0021' where "id" = 151;
UPDATE "Question" SET "exams" = 'a0007,a0021' where "id" = 152;
UPDATE "Question" SET "exams" = 'a0004,a0021' where "id" = 153;
UPDATE "Question" SET "exams" = 'a0008,a0021' where "id" = 154;
UPDATE "Question" SET "exams" = 'a0006,a0021' where "id" = 155;
UPDATE "Question" SET "exams" = 'a0021' where "id" = 156;
UPDATE "Question" SET "exams" = 'a0005,a0021' where "id" = 157;
UPDATE "Question" SET "exams" = 'a0003,a0021' where "id" = 158;
UPDATE "Question" SET "exams" = 'a0001,a0021' where "id" = 159;
UPDATE "Question" SET "exams" = 'a0001,a0021' where "id" = 160;
UPDATE "Question" SET "exams" = 'a0014,a0021' where "id" = 161;
UPDATE "Question" SET "exams" = 'a0015,a0021' where "id" = 162;
UPDATE "Question" SET "exams" = 'a0011,a0021' where "id" = 163;
UPDATE "Question" SET "exams" = 'a0010,a0021' where "id" = 164;
UPDATE "Question" SET "exams" = 'a0010,a0021' where "id" = 165;
UPDATE "Question" SET "exams" = 'a0009,a0021' where "id" = 166;
UPDATE "Question" SET "exams" = 'a0008,a0021' where "id" = 167;
UPDATE "Question" SET "exams" = 'a0014,a0021' where "id" = 168;
UPDATE "Question" SET "exams" = 'a0005,a0021' where "id" = 169;
UPDATE "Question" SET "exams" = 'a0003,a0021' where "id" = 170;
UPDATE "Question" SET "exams" = 'a0003,a0021' where "id" = 171;
UPDATE "Question" SET "exams" = 'a0003,a0021' where "id" = 172;
UPDATE "Question" SET "exams" = 'a0001,a0021' where "id" = 173;
UPDATE "Question" SET "exams" = 'a0010,a0021' where "id" = 174;
UPDATE "Question" SET "exams" = 'a0013,a0021' where "id" = 175;
UPDATE "Question" SET "exams" = 'a0007,a0021' where "id" = 176;
UPDATE "Question" SET "exams" = 'a0006,a0021' where "id" = 177;
UPDATE "Question" SET "exams" = 'a0005,a0021' where "id" = 178;
UPDATE "Question" SET "exams" = 'a0003,a0021' where "id" = 179;
UPDATE "Question" SET "exams" = 'a0001,a0021' where "id" = 180;
UPDATE "Question" SET "exams" = 'a0009,a0022' where "id" = 181;
UPDATE "Question" SET "exams" = 'a0009,a0022' where "id" = 182;
UPDATE "Question" SET "exams" = 'a0008,a0022' where "id" = 183;
UPDATE "Question" SET "exams" = 'a0010,a0022' where "id" = 184;
UPDATE "Question" SET "exams" = 'a0012,a0022' where "id" = 185;
UPDATE "Question" SET "exams" = 'a0015,a0022' where "id" = 186;
UPDATE "Question" SET "exams" = 'a0006,a0022' where "id" = 187;
UPDATE "Question" SET "exams" = 'a0005,a0022' where "id" = 188;
UPDATE "Question" SET "exams" = 'a0012,a0022' where "id" = 189;
UPDATE "Question" SET "exams" = 'a0012,a0022' where "id" = 190;
UPDATE "Question" SET "exams" = 'a0001,a0002,a0022' where "id" = 191;
UPDATE "Question" SET "exams" = 'a0003,a0022' where "id" = 192;
UPDATE "Question" SET "exams" = 'a0004,a0022' where "id" = 193;
UPDATE "Question" SET "exams" = 'a0012,a0022' where "id" = 194;
UPDATE "Question" SET "exams" = 'a0011,a0022' where "id" = 195;
UPDATE "Question" SET "exams" = 'a0011,a0022' where "id" = 196;
UPDATE "Question" SET "exams" = 'a0002,a0022' where "id" = 197;
UPDATE "Question" SET "exams" = 'a0013,a0022' where "id" = 198;
UPDATE "Question" SET "exams" = 'a0012,a0022' where "id" = 199;
UPDATE "Question" SET "exams" = 'a0007,a0022' where "id" = 200;
UPDATE "Question" SET "exams" = 'a0006,a0022' where "id" = 201;
UPDATE "Question" SET "exams" = 'a0006,a0022' where "id" = 202;
UPDATE "Question" SET "exams" = 'a0001,a0022' where "id" = 203;
UPDATE "Question" SET "exams" = 'a0006,a0022' where "id" = 204;
UPDATE "Question" SET "exams" = 'a0022' where "id" = 205;
UPDATE "Question" SET "exams" = 'a0011,a0022' where "id" = 206;
UPDATE "Question" SET "exams" = 'a0007,a0022' where "id" = 207;
UPDATE "Question" SET "exams" = 'a0008,a0022' where "id" = 208;
UPDATE "Question" SET "exams" = 'a0013,a0022' where "id" = 209;
UPDATE "Question" SET "exams" = 'a0012,a0022' where "id" = 210;
UPDATE "Question" SET "exams" = 'a0011,a0023' where "id" = 211;
UPDATE "Question" SET "exams" = 'a0011,a0023' where "id" = 212;
UPDATE "Question" SET "exams" = 'a0009,a0023' where "id" = 213;
UPDATE "Question" SET "exams" = 'a0008,a0023' where "id" = 214;
UPDATE "Question" SET "exams" = 'a0010,a0023' where "id" = 215;
UPDATE "Question" SET "exams" = 'a0007,a0023' where "id" = 216;
UPDATE "Question" SET "exams" = 'a0012,a0023' where "id" = 217;
UPDATE "Question" SET "exams" = 'a0010,a0023' where "id" = 218;
UPDATE "Question" SET "exams" = 'a0010,a0023' where "id" = 219;
UPDATE "Question" SET "exams" = 'a0009,a0023' where "id" = 220;
UPDATE "Question" SET "exams" = 'a0008,a0023' where "id" = 221;
UPDATE "Question" SET "exams" = 'a0008,a0023' where "id" = 222;
UPDATE "Question" SET "exams" = 'a0008,a0023' where "id" = 223;
UPDATE "Question" SET "exams" = 'a0007,a0023' where "id" = 224;
UPDATE "Question" SET "exams" = 'a0009,a0023' where "id" = 225;
UPDATE "Question" SET "exams" = 'a0011,a0023' where "id" = 226;
UPDATE "Question" SET "exams" = 'a0014,a0023' where "id" = 227;
UPDATE "Question" SET "exams" = 'a0005,a0023' where "id" = 228;
UPDATE "Question" SET "exams" = 'a0005,a0023' where "id" = 229;
UPDATE "Question" SET "exams" = 'a0002,a0023' where "id" = 230;
UPDATE "Question" SET "exams" = 'a0002,a0023' where "id" = 231;
UPDATE "Question" SET "exams" = 'a0001,a0023' where "id" = 232;
UPDATE "Question" SET "exams" = 'a0004,a0023' where "id" = 233;
UPDATE "Question" SET "exams" = 'a0004,a0023' where "id" = 234;
UPDATE "Question" SET "exams" = 'a0014,a0023' where "id" = 235;
UPDATE "Question" SET "exams" = 'a0002,a0023' where "id" = 236;
UPDATE "Question" SET "exams" = 'a0002,a0023' where "id" = 237;
UPDATE "Question" SET "exams" = 'a0002,a0023' where "id" = 238;
UPDATE "Question" SET "exams" = 'a0005,a0023' where "id" = 239;
UPDATE "Question" SET "exams" = 'a0006,a0023' where "id" = 240;
UPDATE "Question" SET "exams" = 'a0001,a0024' where "id" = 241;
UPDATE "Question" SET "exams" = 'a0010,a0024' where "id" = 242;
UPDATE "Question" SET "exams" = 'a0004,a0024' where "id" = 243;
UPDATE "Question" SET "exams" = 'a0004,a0024' where "id" = 244;
UPDATE "Question" SET "exams" = 'a0008,a0024' where "id" = 245;
UPDATE "Question" SET "exams" = 'a0008,a0024' where "id" = 246;
UPDATE "Question" SET "exams" = 'a0006,a0024' where "id" = 247;
UPDATE "Question" SET "exams" = 'a0007,a0024' where "id" = 248;
UPDATE "Question" SET "exams" = 'a0008,a0024' where "id" = 249;
UPDATE "Question" SET "exams" = 'a0007,a0024' where "id" = 250;
UPDATE "Question" SET "exams" = 'a0002,a0024' where "id" = 251;
UPDATE "Question" SET "exams" = 'a0002,a0024' where "id" = 252;
UPDATE "Question" SET "exams" = 'a0002,a0024' where "id" = 253;
UPDATE "Question" SET "exams" = 'a0009,a0024' where "id" = 254;
UPDATE "Question" SET "exams" = 'a0008,a0024' where "id" = 255;
UPDATE "Question" SET "exams" = 'a0015,a0024' where "id" = 256;
UPDATE "Question" SET "exams" = 'a0015,a0024' where "id" = 257;
UPDATE "Question" SET "exams" = 'a0015,a0024' where "id" = 258;
UPDATE "Question" SET "exams" = 'a0015,a0024' where "id" = 259;
UPDATE "Question" SET "exams" = 'a0015,a0024' where "id" = 260;
UPDATE "Question" SET "exams" = 'a0005,a0015,a0024' where "id" = 261;
UPDATE "Question" SET "exams" = 'a0014,a0024' where "id" = 262;
UPDATE "Question" SET "exams" = 'a0014,a0024' where "id" = 263;
UPDATE "Question" SET "exams" = 'a0014,a0024' where "id" = 264;
UPDATE "Question" SET "exams" = 'a0014,a0024' where "id" = 265;
UPDATE "Question" SET "exams" = 'a0014,a0024' where "id" = 266;
UPDATE "Question" SET "exams" = 'a0014,a0024' where "id" = 267;
UPDATE "Question" SET "exams" = 'a0013,a0024' where "id" = 268;
UPDATE "Question" SET "exams" = 'a0013,a0024' where "id" = 269;
UPDATE "Question" SET "exams" = 'a0013,a0024' where "id" = 270;
UPDATE "Question" SET "exams" = 'a0012,a0013,a0025' where "id" = 271;
UPDATE "Question" SET "exams" = 'a0013,a0025' where "id" = 272;
UPDATE "Question" SET "exams" = 'a0013,a0025' where "id" = 273;
UPDATE "Question" SET "exams" = 'a0013,a0025' where "id" = 274;
UPDATE "Question" SET "exams" = 'a0012,a0025' where "id" = 275;
UPDATE "Question" SET "exams" = 'a0012,a0025' where "id" = 276;
UPDATE "Question" SET "exams" = 'a0012,a0025' where "id" = 277;
UPDATE "Question" SET "exams" = 'a0012,a0025' where "id" = 278;
UPDATE "Question" SET "exams" = 'a0012,a0025' where "id" = 279;
UPDATE "Question" SET "exams" = 'a0011,a0025' where "id" = 280;
UPDATE "Question" SET "exams" = 'a0011,a0025' where "id" = 281;
UPDATE "Question" SET "exams" = 'a0011,a0025' where "id" = 282;
UPDATE "Question" SET "exams" = 'a0011,a0025' where "id" = 283;
UPDATE "Question" SET "exams" = 'a0011,a0025' where "id" = 284;
UPDATE "Question" SET "exams" = 'a0011,a0025' where "id" = 285;
UPDATE "Question" SET "exams" = 'a0010,a0025' where "id" = 286;
UPDATE "Question" SET "exams" = 'a0010,a0025' where "id" = 287;
UPDATE "Question" SET "exams" = 'a0010,a0025' where "id" = 288;
UPDATE "Question" SET "exams" = 'a0010,a0025' where "id" = 289;
UPDATE "Question" SET "exams" = 'a0010,a0025' where "id" = 290;
UPDATE "Question" SET "exams" = 'a0010,a0025' where "id" = 291;
UPDATE "Question" SET "exams" = 'a0010,a0025' where "id" = 292;
UPDATE "Question" SET "exams" = 'a0009,a0025' where "id" = 293;
UPDATE "Question" SET "exams" = 'a0009,a0025' where "id" = 294;
UPDATE "Question" SET "exams" = 'a0009,a0025' where "id" = 295;
UPDATE "Question" SET "exams" = 'a0009,a0025' where "id" = 296;
UPDATE "Question" SET "exams" = 'a0009,a0025' where "id" = 297;
UPDATE "Question" SET "exams" = 'a0009,a0025' where "id" = 298;
UPDATE "Question" SET "exams" = 'a0009,a0025' where "id" = 299;
UPDATE "Question" SET "exams" = 'a0008,a0025' where "id" = 300;
UPDATE "Question" SET "exams" = 'a0008,a0026' where "id" = 301;
UPDATE "Question" SET "exams" = 'a0008,a0026' where "id" = 302;
UPDATE "Question" SET "exams" = 'a0008,a0026' where "id" = 303;
UPDATE "Question" SET "exams" = 'a0008,a0026' where "id" = 304;
UPDATE "Question" SET "exams" = 'a0008,a0026' where "id" = 305;
UPDATE "Question" SET "exams" = 'a0008,a0026' where "id" = 306;
UPDATE "Question" SET "exams" = 'a0007,a0026' where "id" = 307;
UPDATE "Question" SET "exams" = 'a0007,a0026' where "id" = 308;
UPDATE "Question" SET "exams" = 'a0007,a0026' where "id" = 309;
UPDATE "Question" SET "exams" = 'a0007,a0026' where "id" = 310;
UPDATE "Question" SET "exams" = 'a0007,a0026' where "id" = 311;
UPDATE "Question" SET "exams" = 'a0007,a0026' where "id" = 312;
UPDATE "Question" SET "exams" = 'a0007,a0026' where "id" = 313;
UPDATE "Question" SET "exams" = 'a0006,a0026' where "id" = 314;
UPDATE "Question" SET "exams" = 'a0006,a0026' where "id" = 315;
UPDATE "Question" SET "exams" = 'a0006,a0026' where "id" = 316;
UPDATE "Question" SET "exams" = 'a0006,a0026' where "id" = 317;
UPDATE "Question" SET "exams" = 'a0006,a0026' where "id" = 318;
UPDATE "Question" SET "exams" = 'a0006,a0026' where "id" = 319;
UPDATE "Question" SET "exams" = 'a0006,a0026' where "id" = 320;
UPDATE "Question" SET "exams" = 'a0005,a0026' where "id" = 321;
UPDATE "Question" SET "exams" = 'a0005,a0026' where "id" = 322;
UPDATE "Question" SET "exams" = 'a0026' where "id" = 323;
UPDATE "Question" SET "exams" = 'a0005,a0026' where "id" = 324;
UPDATE "Question" SET "exams" = 'a0005,a0026' where "id" = 325;
UPDATE "Question" SET "exams" = 'a0005,a0026' where "id" = 326;
UPDATE "Question" SET "exams" = 'a0005,a0026' where "id" = 327;
UPDATE "Question" SET "exams" = 'a0026' where "id" = 328;
UPDATE "Question" SET "exams" = 'a0026' where "id" = 329;
UPDATE "Question" SET "exams" = 'a0026' where "id" = 330;
UPDATE "Question" SET "exams" = 'a0027' where "id" = 331;
UPDATE "Question" SET "exams" = 'a0027' where "id" = 332;
UPDATE "Question" SET "exams" = 'a0027' where "id" = 333;
UPDATE "Question" SET "exams" = 'a0027' where "id" = 334;
UPDATE "Question" SET "exams" = 'a0003,a0004,a0027' where "id" = 335;
UPDATE "Question" SET "exams" = 'a0003,a0004,a0027' where "id" = 336;
UPDATE "Question" SET "exams" = 'a0003,a0004,a0027' where "id" = 337;
UPDATE "Question" SET "exams" = 'a0003,a0004,a0027' where "id" = 338;
UPDATE "Question" SET "exams" = 'a0003,a0004,a0027' where "id" = 339;
UPDATE "Question" SET "exams" = 'a0003,a0004,a0027' where "id" = 340;
UPDATE "Question" SET "exams" = 'a0003,a0004,a0027' where "id" = 341;
UPDATE "Question" SET "exams" = 'a0002,a0027' where "id" = 342;
UPDATE "Question" SET "exams" = 'a0002,a0027' where "id" = 343;
UPDATE "Question" SET "exams" = 'a0002,a0027' where "id" = 344;
UPDATE "Question" SET "exams" = 'a0002,a0027' where "id" = 345;
UPDATE "Question" SET "exams" = 'a0002,a0027' where "id" = 346;
UPDATE "Question" SET "exams" = 'a0002,a0027' where "id" = 347;
UPDATE "Question" SET "exams" = 'a0002,a0027' where "id" = 348;
UPDATE "Question" SET "exams" = 'a0001,a0027' where "id" = 349;
UPDATE "Question" SET "exams" = 'a0001,a0027' where "id" = 350;
UPDATE "Question" SET "exams" = 'a0001,a0027' where "id" = 351;
UPDATE "Question" SET "exams" = 'a0001,a0027' where "id" = 352;
UPDATE "Question" SET "exams" = 'a0001,a0027' where "id" = 353;
UPDATE "Question" SET "exams" = 'a0001,a0027' where "id" = 354;
UPDATE "Question" SET "exams" = 'a0001,a0027' where "id" = 355;
UPDATE "Question" SET "exams" = 'a0015,a0027' where "id" = 356;
UPDATE "Question" SET "exams" = 'a0015,a0027' where "id" = 357;
UPDATE "Question" SET "exams" = 'a0015,a0027' where "id" = 358;
UPDATE "Question" SET "exams" = 'a0015,a0027' where "id" = 359;
UPDATE "Question" SET "exams" = 'a0015,a0027' where "id" = 360;
UPDATE "Question" SET "exams" = 'a0015,a0028' where "id" = 361;
UPDATE "Question" SET "exams" = 'a0015,a0028' where "id" = 362;
UPDATE "Question" SET "exams" = 'a0014,a0028' where "id" = 363;
UPDATE "Question" SET "exams" = 'a0014,a0028' where "id" = 364;
UPDATE "Question" SET "exams" = 'a0014,a0028' where "id" = 365;
UPDATE "Question" SET "exams" = 'a0014,a0028' where "id" = 366;
UPDATE "Question" SET "exams" = 'a0014,a0028' where "id" = 367;
UPDATE "Question" SET "exams" = 'a0014,a0028' where "id" = 368;
UPDATE "Question" SET "exams" = 'a0014,a0028' where "id" = 369;
UPDATE "Question" SET "exams" = 'a0028' where "id" = 370;
UPDATE "Question" SET "exams" = 'a0013,a0028' where "id" = 371;
UPDATE "Question" SET "exams" = 'a0013,a0028' where "id" = 372;
UPDATE "Question" SET "exams" = 'a0008,a0013,a0028' where "id" = 373;
UPDATE "Question" SET "exams" = 'a0013,a0028' where "id" = 374;
UPDATE "Question" SET "exams" = 'a0013,a0028' where "id" = 375;
UPDATE "Question" SET "exams" = 'a0013,a0028' where "id" = 376;
UPDATE "Question" SET "exams" = 'a0012,a0028' where "id" = 377;
UPDATE "Question" SET "exams" = 'a0012,a0028' where "id" = 378;
UPDATE "Question" SET "exams" = 'a0012,a0028' where "id" = 379;
UPDATE "Question" SET "exams" = 'a0012,a0028' where "id" = 380;
UPDATE "Question" SET "exams" = 'a0012,a0028' where "id" = 381;
UPDATE "Question" SET "exams" = 'a0012,a0028' where "id" = 382;
UPDATE "Question" SET "exams" = 'a0012,a0028' where "id" = 383;
UPDATE "Question" SET "exams" = 'a0011,a0028' where "id" = 384;
UPDATE "Question" SET "exams" = 'a0011,a0028' where "id" = 385;
UPDATE "Question" SET "exams" = 'a0011,a0028' where "id" = 386;
UPDATE "Question" SET "exams" = 'a0011,a0028' where "id" = 387;
UPDATE "Question" SET "exams" = 'a0011,a0028' where "id" = 388;
UPDATE "Question" SET "exams" = 'a0011,a0028' where "id" = 389;
UPDATE "Question" SET "exams" = 'a0011,a0028' where "id" = 390;
UPDATE "Question" SET "exams" = 'a0010,a0029' where "id" = 391;
UPDATE "Question" SET "exams" = 'a0010,a0029' where "id" = 392;
UPDATE "Question" SET "exams" = 'a0010,a0029' where "id" = 393;
UPDATE "Question" SET "exams" = 'a0010,a0029' where "id" = 394;
UPDATE "Question" SET "exams" = 'a0010,a0029' where "id" = 395;
UPDATE "Question" SET "exams" = 'a0010,a0029' where "id" = 396;
UPDATE "Question" SET "exams" = 'a0009,a0029' where "id" = 397;
UPDATE "Question" SET "exams" = 'a0009,a0029' where "id" = 398;
UPDATE "Question" SET "exams" = 'a0009,a0029' where "id" = 399;
UPDATE "Question" SET "exams" = 'a0009,a0029' where "id" = 400;
UPDATE "Question" SET "exams" = 'a0009,a0029' where "id" = 401;
UPDATE "Question" SET "exams" = 'a0009,a0029' where "id" = 402;
UPDATE "Question" SET "exams" = 'a0029' where "id" = 403;
UPDATE "Question" SET "exams" = 'a0008,a0029' where "id" = 404;
UPDATE "Question" SET "exams" = 'a0008,a0029' where "id" = 405;
UPDATE "Question" SET "exams" = 'a0008,a0029' where "id" = 406;
UPDATE "Question" SET "exams" = 'a0008,a0029' where "id" = 407;
UPDATE "Question" SET "exams" = 'a0008,a0029' where "id" = 408;
UPDATE "Question" SET "exams" = 'a0007,a0029' where "id" = 409;
UPDATE "Question" SET "exams" = 'a0007,a0029' where "id" = 410;
UPDATE "Question" SET "exams" = 'a0007,a0029' where "id" = 411;
UPDATE "Question" SET "exams" = 'a0007,a0029' where "id" = 412;
UPDATE "Question" SET "exams" = 'a0007,a0012,a0029' where "id" = 413;
UPDATE "Question" SET "exams" = 'a0007,a0029' where "id" = 414;
UPDATE "Question" SET "exams" = 'a0006,a0029' where "id" = 415;
UPDATE "Question" SET "exams" = 'a0006,a0029' where "id" = 416;
UPDATE "Question" SET "exams" = 'a0006,a0029' where "id" = 417;
UPDATE "Question" SET "exams" = 'a0006,a0029' where "id" = 418;
UPDATE "Question" SET "exams" = 'a0006,a0029' where "id" = 419;
UPDATE "Question" SET "exams" = 'a0006,a0029' where "id" = 420;
UPDATE "Question" SET "exams" = 'a0005,a0030' where "id" = 421;
UPDATE "Question" SET "exams" = 'a0005,a0030,a0031' where "id" = 422;
UPDATE "Question" SET "exams" = 'a0005,a0030,a0031' where "id" = 423;
UPDATE "Question" SET "exams" = 'a0005,a0030,a0031' where "id" = 424;
UPDATE "Question" SET "exams" = 'a0005,a0030,a0031' where "id" = 425;
UPDATE "Question" SET "exams" = 'a0005,a0030,a0031' where "id" = 426;
UPDATE "Question" SET "exams" = 'a0030,a0031' where "id" = 426;
UPDATE "Question" SET "exams" = 'a0030,a0031' where "id" = 427;
UPDATE "Question" SET "exams" = 'a0030,a0031' where "id" = 428;
UPDATE "Question" SET "exams" = 'a0030,a0031' where "id" = 429;
UPDATE "Question" SET "exams" = 'a0030,a0031' where "id" = 430;
UPDATE "Question" SET "exams" = 'a0030,a0031' where "id" = 431;
UPDATE "Question" SET "exams" = 'a0030,a0031' where "id" = 432;
UPDATE "Question" SET "exams" = 'a0003,a0004,a0030,a0031' where "id" = 433;
UPDATE "Question" SET "exams" = 'a0003,a0004,a0030,a0031' where "id" = 434;
UPDATE "Question" SET "exams" = 'a0003,a0004,a0030,a0031' where "id" = 435;
UPDATE "Question" SET "exams" = 'a0003,a0004,a0030,a0031' where "id" = 436;
UPDATE "Question" SET "exams" = 'a0003,a0004,a0030,a0031' where "id" = 437;
UPDATE "Question" SET "exams" = 'a0003,a0004,a0030,a0031' where "id" = 438;
UPDATE "Question" SET "exams" = 'a0002,a0030,a0031' where "id" = 439;
UPDATE "Question" SET "exams" = 'a0002,a0030,a0031' where "id" = 440;
UPDATE "Question" SET "exams" = 'a0002,a0030,a0031' where "id" = 441;
UPDATE "Question" SET "exams" = 'a0002,a0030,a0031' where "id" = 442;
UPDATE "Question" SET "exams" = 'a0002,a0030,a0031' where "id" = 443;
UPDATE "Question" SET "exams" = 'a0002,a0030,a0031' where "id" = 444;
UPDATE "Question" SET "exams" = 'a0001,a0030,a0031' where "id" = 445;
UPDATE "Question" SET "exams" = 'a0001,a0030,a0031' where "id" = 446;
UPDATE "Question" SET "exams" = 'a0001,a0030,a0031' where "id" = 447;
UPDATE "Question" SET "exams" = 'a0001,a0030,a0031' where "id" = 448;
UPDATE "Question" SET "exams" = 'a0001,a0030,a0031' where "id" = 449;
UPDATE "Question" SET "exams" = 'a0001,a0031' where "id" = 450;


COMMIT;