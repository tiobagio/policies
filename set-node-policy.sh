#!bin/sh

# assign policy_group and policy_name to specific node(s)
# example of search
# "name:comp-rhel*"
# "name:comp-rhel-1fTb or name:comp-rhel-5kXi")

knife exec -E 'nodes.find("name:comp-rhel-1fTb* or name:comp-rhel-5kXi*") { \
        |n| n.policy_group("dev-rhel"); \
        n.policy_name("base_rhel_audit_remediate"); \
        puts n.name; \
        n.save \
}'
