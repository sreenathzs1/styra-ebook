
package policy["com.styra.kubernetes.validating"].rules.rules

ignore[decision] {
    #title: Testing-own
    my_custom[decision]
}

my_custom[decision] {
    input.request.kind.kind == "Pod"
    image := input.request.object.spec.containers[_].image
    not startswith(image, "hooli.com")
    msg := sprintf("image fails to come from trusted registry: %v", [image])

    decision := {
        "allowed": false,
        "message": msg
    }
 }