// find with condition
db.getCollection("discounts").find({
    tenantId: 'uuid',
    _id: 'uuid'
})

// find with condition and select field
db.getCollection("discounts").find({
    'membership.serviceVariantId': 'some data',
    tenantId: 'uuid'
}, {
    _id: 1,
    couponPrefix: 1,
})

// find with condition existed in document
db.getCollection("discounts").find({
    'membership.serviceVariantId': {"$exists" : true}
})

// find with condition existed in document and select field
db.getCollection("discounts").find({
    'segmentIds': {"$exists" : false},
    tenantId: 'uuid'
}, {
    _id: 1,
    name: 1,
    segmentIds: 1,
    period: 1,
    level1Locations: 1
})

db.getCollection("discounts").find({
    'segmentIds.0': {"$exists" : true},
    tenantId: 'ee92fab8-985f-4b0b-931d-d1d19151be45'
}, {
    _id: 1,
    name: 1,
    segmentIds: 1,
    period: 1,
    level1Locations: 1
})
