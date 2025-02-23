# Worships

## LIST ALL WORSHIPS (api/worship)

To view all members, perform a **GET** request to api/worship. You may also include the following in the URL query parameters for filtering:

#### 1. ordering by date (ascending/descending)

**Example:**

```
{link}/api/members/?ordering=date  (ascending)
{link}/api/members/?ordering=-date  (descending)
```

#### 3. worship_type (1 = Onsite, 2 = Online)

---

#### You may also chain filters, for example:

```
{link}/api/members/?ordering=-date&type=1
```

### Response: This endpoint returns a list of all worships that match the applied filters, if any.

## ADD A WORSHIP (api/worship)

To add a member, perform a **POST** request to api/worship with the following in the body of the request:

1. name (optional)
2. date
3. church
4. worship_type (1 = Onsite, 2 = Online)

### Response: This endpoint returns the newly-added worship object.

---

## RETRIEVE A WORSHIP (api/worship/<worship_id>)

To get a specific member by their worship_id, perform a **GET** request to api/worship/<worship_id>

### Response: This endpoint returns the details of the worship with the specified worship_id

---

## EDIT A WORSHIP

To edit a specific member, perform a **PUT** request to api/worship/<worship_id> with the same format in the body as that of adding a worship

### Response: This endpoint returns the updated worship object, if update is successful.

---

## DELETE A WORSHIP

To delete a specific worship, perform a **DELETE** request to api/worship/<worship_id>

### Response: This endpoint returns the deleted worship object, if deletion is successful.
