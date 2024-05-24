﻿namespace SE172266.ProductManagement.API.Model.ProductModel
{
    public class SearchProductModel
    {
        public string? ProductName { get; set; }
        public int? CategoryId { get; set; }
        public decimal? FromUnitPrice { get; set; } = decimal.Zero;
        public decimal? ToUnitPrice { get; set; } = null;
        public SortContent? SortContent { get; set; }
        public int pageIndex { get; set; } = 1;
        public int pageSize { get; set; } = 10;
    }

    public class SortContent
    {
        public SortProductByEnum? sortProductBy { get; set; }
        public SortProductTypeEnum? sortProductType { get; set; }
    }

    public enum SortProductByEnum
    {
        ProductId = 1,
        ProductName = 2,
        CategoryId = 3,
        UnitsInStock = 4,
        UnitPrice = 5,
    }
    public enum SortProductTypeEnum
    {
        Ascending = 1,
        Descending = 2,
    }
}
