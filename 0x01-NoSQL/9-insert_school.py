#!/usr/bin/env python3
"""
Task 9
"""


def insert_school(mongo_collection, **kwargs):
    """
    Inserts a file in the database
    """
    file_ins = mongo_collection.insert_one(kwargs)
    return file_ins.inserted_id
