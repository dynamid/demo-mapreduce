#!/bin/sh

sudo kubectl delete statefulset.apps reducer

sudo kubectl delete statefulset.apps mapper

sudo kubectl delete service,pod --force --all

