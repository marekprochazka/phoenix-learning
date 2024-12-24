#!/bin/bash

# migrate database

mix ecto.create && mix ecto.migrate || exit 1

# runserver

mix phx.server
 
 