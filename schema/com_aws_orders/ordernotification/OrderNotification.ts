

export class OrderNotification {
  'category': string;
  'location': string;
  'value': number;

    private static discriminator: string | undefined = undefined;

    private static attributeTypeMap: Array<{name: string, baseName: string, type: string}> = [
        {
            "name": "category",
            "baseName": "category",
            "type": "string"
        },
        {
            "name": "location",
            "baseName": "location",
            "type": "string"
        },
        {
            "name": "value",
            "baseName": "value",
            "type": "number"
        }    ];

    public static getAttributeTypeMap() {
        return OrderNotification.attributeTypeMap;
    }
}




