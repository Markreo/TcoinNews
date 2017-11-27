package tcoinnews

import com.tcoinnews.Role
import com.tcoinnews.User
import com.tcoinnews.UserRole

class BootStrap {

    def init = { servletContext ->
        Role roleAdmin
        if(!Role.countByAuthority('ROLE_ADMIN')){
            roleAdmin = new Role(authority: 'ROLE_ADMIN')
            if(roleAdmin.hasErrors() || !roleAdmin.save(flush: true)){
                println("save role ADMIN error ${roleAdmin.errors}")
            } else{
                println("--- init Role")
            }
        } else{
            roleAdmin = Role.findByAuthority("ROLE_ADMIN")
        }

        if(!User.countByEmail("giap.nguyenvan.562@gmail.com")){
            User giap = new User(username: "it", password: "123456", name: "Nguyễn Văn Giáp", email: "giap.nguyenvan.562@gmail.com")
            if(giap.hasErrors() || !giap.save(flush: true)){
                println("save user GIAP error ${giap.errors}")
            } else{
                println("--- init User")
                UserRole.create(giap, roleAdmin, true)
            }
        }
    }
    def destroy = {
    }
}
