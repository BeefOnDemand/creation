clear @s *
execute if predicate creation:in_otherworld run function creation:backend/tools/execute_with_uuid_storage/0 {function: "creation:backend/inventory/otherworld/load", target: "@s"}
execute if predicate creation:in_superflat run function creation:backend/tools/execute_with_uuid_storage/0 {function: "creation:backend/inventory/creation/superflat/load", target: "@s"}
execute if predicate creation:in_normal run function creation:backend/tools/execute_with_uuid_storage/0 {function: "creation:backend/inventory/creation/normal/load", target: "@s"}