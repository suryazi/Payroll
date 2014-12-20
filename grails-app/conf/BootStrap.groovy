import com.alyahyan.Role
import com.alyahyan.User
import org.apache.shiro.crypto.hash.Sha512Hash
import org.apache.shiro.crypto.RandomNumberGenerator
import org.apache.shiro.crypto.SecureRandomNumberGenerator

class BootStrap {

	def shiroSecurityService

    def init = { servletContext ->
    	if(!User.findByUsername("admin")){
            def adminRole = new Role(name: "Administrator")
            adminRole.addToPermissions("*:*")
            adminRole.save()
        
            def passwordSalt = new SecureRandomNumberGenerator().nextBytes().getBytes()
            def admin = new User(username:"admin",passwordHash: new Sha512Hash("password",passwordSalt,1024).toBase64(),passwordSalt:passwordSalt)
            admin.addToRoles(adminRole)
            admin.save()
        }
    }
    def destroy = {
    }
}
