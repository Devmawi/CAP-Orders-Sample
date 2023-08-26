using CatalogService as service from '../../srv/services';

annotate service.Orders with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : ID,
            Label : 'ID',
        },
        {
            $Type : 'UI.DataField',
            Label : 'text',
            Value : text,
        },
        {
            $Type : 'UI.DataField',
            Value : modifiedAt,
        },
        {
            $Type : 'UI.DataField',
            Value : modifiedBy,
        },
        {
            $Type : 'UI.DataFieldForAction',
            Action : 'CatalogService.EntityContainer/add',
            Label : 'add',
            Inline : true,
        },
        {
            $Type : 'UI.DataFieldForAction',
            Action : 'CatalogService.EntityContainer/doSomething',
            Label : 'doSomething',
            Inline : true,
        },
    ]
);
annotate service.Orders with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'text',
                Value : text,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Items',
            ID : 'Items',
            Target : 'Items/@UI.LineItem#Items',
        },
    ]
);
annotate service.OrderItems with @(
    UI.LineItem #Items : [
        {
            $Type : 'UI.DataField',
            Value : ID,
            Label : 'ID',
        },{
            $Type : 'UI.DataField',
            Value : product.name,
            Label : 'name',
        },{
            $Type : 'UI.DataField',
            Value : product.amount,
            Label : 'amount',
        },{
            $Type : 'UI.DataField',
            Value : text,
            Label : 'text',
        },{
            $Type : 'UI.DataField',
            Value : quantity,
            Label : 'quantity',
        },]
);
annotate service.OrderItems with @(
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Main',
            ID : 'Main',
            Target : '@UI.FieldGroup#Main',
        },
    ],
    UI.FieldGroup #Main : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : text,
                Label : 'text',
            },{
                $Type : 'UI.DataField',
                Value : product_ID,
                Label : 'product_ID',
            },{
                $Type : 'UI.DataField',
                Value : quantity,
                Label : 'quantity',
            },],
    }
);
annotate service.OrderItems with {
    product_ID @Common.Text : product.name
};
annotate service.OrderItems with {
    product_ID @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Products',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : product_ID,
                    ValueListProperty : 'ID',
                },
            ],
            Label : 'Product',
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.Products with {
    ID @Common.Text : name
};
