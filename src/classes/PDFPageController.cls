global class PDFPageController {

public List<DealerData> DealerInfo
{
get
{
    List<DealerData> dd = new List<DealerData>();
    DealerData d1 = new DealerData();
    d1.DealerName = 'Mazda Special';
    d1.ListPrice = 10000;
    d1.GST= 1000;
    d1.Discount= 2000;
    d1.Total= 9000;
    dd.Add(d1);
    
    DealerData d2 = new DealerData();
    d2.DealerName = 'Mazda Special';
    d2.ListPrice = 10000;
    d2.GST= 1000;
    d2.Discount= 2000;
    d2.Total= 9000;
    dd.Add(d2);
    
    DealerData d3 = new DealerData();
    d3.DealerName = 'Mazda Special';
    d3.ListPrice = 10000;
    d3.GST= 1000;
    d3.Discount= 2000;
    d3.Total= 9000;
    dd.Add(d3);
    return dd;
}
}

public class DealerData
{
public string DealerName{get; set; }
public decimal ListPrice{get; set; }
public decimal GST{get;set;}
public decimal Discount{get;set;}
public decimal Total{get;set;}
}

}