# Donations

## LIST ALL DONATIONS (api/donations/)

To view all donations, perform a **GET** request to api/donations/. You may also include the following in the URL query parameters for filtering:

#### 1. ordering by date (ascending/descending)

**Example:**

```
{link}/api/donations/?ordering=date  (ascending)
{link}/api/donations/?ordering=-date  (descending)
```

#### 2. ordering by amount (ascending/descending)

**Example:**

```
{link}/api/donations/?ordering=amount  (ascending)
{link}/api/donations/?ordering=-amount (descending)
```

#### 3. member_id

```
{link}/api/donations/?member=1  # where 1 is valid a member id
```

#### 4. church

```
{link}/api/donations/?church=1  # where 1 is valid a church id
```

---

#### You may also chain filters, for example:

```
{link}/api/donations/?ordering=-date&member_id=1
```

### Response: This endpoint returns a list of all donations that match the applied filters, if any.

## ADD A DONATION (api/donations/)

To add a member, perform a **POST** request to api/donations/ with the following in the body of the request:

1. member (member_id)
2. date
3. church
4. amount
5. currency (currency_code)

### Response: This endpoint returns the newly-added donation object.

---

## RETRIEVE A DONATION (api/donations/<donation_id>/)

To get a specific member by their donation_id, perform a **GET** request to api/donations/<donation_id>/

### Response: This endpoint returns the details of the donation, including the members who attended, with the specified donation_id

---

## EDIT A DONATION

To edit a specific member, perform a **PUT** request to api/donations/<donation_id>/ with the same format in the body as that of adding a donation

### Response: This endpoint returns the updated donation object, if update is successful.

---

## DELETE A DONATION

To delete a specific donation, perform a **DELETE** request to api/donations/<donation_id>/

### Response: This endpoint returns the deleted donation object, if deletion is successful.
