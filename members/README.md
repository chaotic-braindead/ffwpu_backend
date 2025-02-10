# Members

## LIST ALL MEMBERS (api/members)

To view all members, perform a **GET** request to api/members. You may also include the following in the URL query parameters for filtering:

#### 1. ordering by country (ascending/descending) and age (ascending/descending)

**Example:**

```
{link}/api/members/?ordering=country  (ascending)
{link}/api/members/?ordering=-country  (descending)
```

#### 2. marital_status (1 = Single, 2 = Married, 3 = Separated, 4 = Divorced)

**example:**

```
{link}/api/members/?marital_status=1
```

#### 3. gender (1 = Male, 2 = Female)

#### 4. membership_category (1 = Regular, 2 = Associate, 3 = Registered, 4 = Inactive)

---

#### You may also chain filters, for example:

```
{link}/api/members/?ordering=-country&marital_status=1&gender=2
```

### Response: This endpoint returns a list of all members that match the applied filters, if any.

## ADD A MEMBER (api/members/add)

To add a member, perform a **POST** request to api/members/add with the following in the body of the request:

1. photo (optional)
2. title (1 = Mr., 2 = Ms., 3=Mrs.)
3. given_name
4. middle_name
5. family_name
6. gender (1=Male, 2=Female)
7. date_of_birth (YYYY-MM-DD)
8. email
9. phone
10. marital_status (1 = Single, 2 = Married, 3 = Separated, 4 = Divorced)
11. spiritual_birthday (YYYY-MM-DD)
12. address
13. membership_category (1 = Regular, 2 = Associate, 3 = Registered, 4 = Inactive)
14. country_id (see members_country table)
15. spouse_id (must exist in /api/members; optional)
16. spiritual_parent (must exist in /api/members; optional)
17. family_id (must exist in /api/members; optional)

### Response: This endpoint returns the newly-added member object.

---

## RETRIEVE A MEMBER (api/members/<member_id>)

To get a specific member by their member_id, perform a **GET** request to api/members/<member_id>

### Response: This endpoint returns the details of the member with the specified member_id

---

## EDIT A MEMBER

To edit a specific member, perform a **PUT** request to api/members/<member_id> with the same format in the body as that of adding a member

### Response: This endpoint returns the updated member object, if update is successful.

---

## DELETE A MEMBER

To delete a specific member, perform a **DELETE** request to api/member/<member_id>

### Response: This endpoint returns the deleted member object, if deletion is successful.
