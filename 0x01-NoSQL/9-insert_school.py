#!/usr/bin/env python3
"""
Task 9 - inserting a document in python
"""


def insert_school(mongo_collection, **kwargs):
    """
    inserts a new document in a collection based on kwargs
    """
    files_ins = mongo_collection.insert_one(kwargs)
    return file_ins.inserted_id
