package tcoinnews

import com.tcoinnews.Category
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
            User giap = new User(username: "it", password: "123456", name: "Nguyễn Văn Giáp", email: "giap.nguyenvan.562@gmail.com", isAdmin: true)
            if(giap.hasErrors() || !giap.save(flush: true)){
                println("save user GIAP error ${giap.errors}")
            } else{
                println("--- init User")
                UserRole.create(giap, roleAdmin, true)
            }
        }

        if(!Category.count()){
            User giap = User.findByEmail("giap.nguyenvan.562@gmail.com")
            Category thoisu = new Category(name: "Thời sự", owner: giap, url: "Thời sự")
            Category tintuc = new Category(name: "Tin Tức", owner: giap, url: "Tin Tức")
            Category congnghe = new Category(name: "Công Nghệ", owner: giap, url: "Công Nghệ")
            Category bitcoin = new Category(name: "Bitcoin", owner: giap, url: "Bitcoin")
            Category giabitcoin = new Category(name: "Giá Bitcoin", owner: giap, url: "Bitcoin/Giá Bitcoin")
            Category maytinh = new Category(name: "Máy tính", owner: giap, url: "Công Nghệ/Máy tính")

            thoisu.save(flush: true)
            tintuc.save(flush: true)
            if(congnghe.save(flush: true)){
                maytinh.parent = congnghe
                maytinh.save(flush: true)
            }
            if(bitcoin.save(flush: true)){
                giabitcoin.parent = bitcoin
                giabitcoin.save(flush: true)
            }
        }
    }
    def destroy = {
    }
}
