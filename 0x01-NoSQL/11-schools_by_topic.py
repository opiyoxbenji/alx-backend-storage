#!/usr/bin/env python3
"""
Task 11 - modules
"""


def schools_by_topic(mongo_collection, topic):
    """
    Returns the list of schools
    """
    topic_filter = {
            'topic': {
                '$elemMatch': {
                    '$eq': topic,
                },
            },
    }
    return [doc for doc in mongo_collection.find(topic_filter)]
