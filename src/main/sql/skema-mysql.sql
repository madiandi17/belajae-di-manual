create table produk (
    id integer auto_increment,
    kode varchar(15) not null,
    nama varchar(45) not null,
    harga decimal(8,2) not null,
    primary key(id)
)Engine=InnoDB;

create table user (
    id integer auto_increment,
    firstName varchar(45) not null,
    lastName varchar(45) not null,
    email varchar(45)not null unique,
    primary key(id)
)Engine=InnoDB;

-- demo testing object produk --

-- test create data produk
Produk p = new Produk();
p.setKode("p-001");
p.setNama("Produk 001");
p.setHarga(new BigDecimal(10000.00));

ProdukDao pd = new ProdukDao();
pd.setDataSource(dataSource);
pd.create(p);

-- test read data produk
Produk p = new Produk();
ProdukDao pd = new ProdukDao();
pd.setDataSource(dataSource);
pd.read(p);

-- test caryById data produk
ProdukDao pd = new ProdukDao();
pd.setDataSource(dataSource);
Produk p = pd.cariById(3);

-- test cariByNama data produk
ProdukDao pd = new ProdukDao();
pd.setDataSource(dataSource);
Produk p = pd.cariByNama("P-002");

-- test update data produk
ProdukDao pd = new  ProdukDao();
pd.setDataSource(dataSource);
Produk p = new Produk();
p.setKode("P-002");
p.setNama("P-002");
p.setHarga(new BigDecimal(100000.00));
p.setId(2);
pd.update(p);

-- test delete data produk
ProdukDao pd = new ProdukDao();
pd.setDataSource(dataSource);
Produk p = new Produk();
p.setId(3);
pd.delete(p);


-- demo testing object produk --
-- test create data user
User user = new User();
user.setFirstName("Madi");
user.setLastName("Andi");
user.setEmail("madiandi1@gmail.com");
        
UserDao ud = new UserDao();
ud.setDataSource(dataSource);
ud.create(user);

-- test read data user
UserDao userDao = new UserDao();
userDao.setDataSource(dataSource);
        
User user = new User();
userDao.read(user);  

-- test cariById data user
UserDao userDao = new UserDao();
userDao.setDataSource(dataSource);
        
User user = userDao.cariById(3);

-- test cariByEmail data user
UserDao userDao = new UserDao();
userDao.setDataSource(dataSource);
        
User user = userDao.cariByEmail("madiandi@gmail.com");  

-- test update data user
UserDao userDao = new UserDao();
userDao.setDataSource(dataSource);

User user = new User();
user.setFirstName("Madi");
user.setLastName("Andi");
user.setEmail("madiandi@yahoo.com");
user.setId(3);
userDao.update(user);

-- test delete data user
UserDao userDao = new UserDao();
userDao.setDataSource(dataSource);
        
User user = new User();
user.setId(3);
userDao.delete(user);
