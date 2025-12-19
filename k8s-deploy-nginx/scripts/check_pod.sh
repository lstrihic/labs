#!/bin/bash
kubectl get pod nginx-pod | grep -q "Running"
exit $?