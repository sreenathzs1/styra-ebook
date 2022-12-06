package policy.gcp.compute

# Packages 1 level below the `gcp` package let you organize your rules
#    according to the services they impact, e.g. gcp.compute or gcp.storage
# All enforce/monitor rules in any package of the form gcp.X
#    will be applied to every terraform plan.  The name X is irrelevant
#    and is only useful as a way to organize your rules.
# You may put helpers into packages at deeper levels of the hiearchy,
#    e.g. gcp.X.Y, but do not put enforce/monitor rules into those packages
#    since they will not be evaluated unless you use them as helpers.
#sssss