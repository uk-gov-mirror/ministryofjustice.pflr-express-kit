#!/bin/sh

npm-run-all -s test:unit:prepush test:a11y test:functional:prepush
