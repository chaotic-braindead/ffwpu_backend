# Blessings

## LIST ALL BLESSINGS (api/blessings/)

To view all blessings, perform a **GET** request to api/blessings/. You may also include the following in the URL query parameters for filtering:

#### 1. ordering by date (ascending/descending)

**Example:**

```
{link}/api/blessings/?ordering=blessing_date  (ascending)
{link}/api/blessings/?ordering=-blessing_date  (descending)
```

### Response: This endpoint returns a list of all members that match the applied filters, if any.

## ADD A BLESSING

To add a blessing, perform a **POST** request to api/blessing with the following in the body of the request:

1. name_of_blessing
2. blessing_date

### Response: This endpoint returns the newly-added blessing object.

## RETRIEVE A BLESSING (api/blessings/<id>)

To get a specific member by their member_id, perform a **GET** request to api/blessings/<id>

### Response: This endpoint returns the details of the blessing with the specified id

## EDIT A BLESSING

To edit a specific blessing, perform a **PUT** request to api/blessing/<id> with the same format in the body as that of adding a blessing

### Response: This endpoint returns the updated blessing object, if update is successful.

---

## DELETE A BLESSING

To delete a specific blessing, perform a **DELETE** request to api/blessings/<id>

### Response: This endpoint returns the deleted blessing object, if deletion is successful.

##

## ADD A MEMBER TO A BLESSING (api/worship/<worship_id>/add-member/)

To add a member to a blessing, perform a **PATCH** request to api/blessings/<id>/add-member/ with the member_id/s of the member/s to be added in the body:

Example request body:

```
{
    "members": [1, 2, 3]   # each number is a member id
}
```

### Response: This endpoint returns the added member/s if added. Otherwise, an error is returned.

## REMOVE A MEMBER FROM A BLESSING (api/blessings/<id>/remove-member/)

To add a member to a blessing, perform a **PATCH** request to api/blessing/<id>/remove-member/ with the member_id of the member to be removed in the body:

Example request body:

```
{
    "member_id": 1
}
```

### Response: This endpoint returns the added member if member was added. Otherwise, an error is returned.
