SELECT v.ID, Price, Name, PName
  from Vendor v
  join Product p
    on v.ID = p.VendorID;