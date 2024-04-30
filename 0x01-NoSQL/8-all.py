#!/usr/bin/env python3
"""
task 8 - List all documents in Python
"""


def list_all(mongo_collection):
    """
    lists all documents in db
    """
    return [do for do in mongo_collection.find()]
