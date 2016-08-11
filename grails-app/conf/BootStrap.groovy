import grails.util.GrailsUtil
import handjsonpool03.Json
import handjsonpool03.Project

class BootStrap {

    def init = { servletContext ->
        switch (GrailsUtil.environment) {
            case "development":
                def admin = new handjsonpool03.User(
                        role: "admin",
                        loginName: "admin",
                        password: "pass",
                        phone: "11111111111"
                )
                admin.save()
                if (admin.hasErrors()) {
                    println admin.errors
                }

                def userr = new handjsonpool03.User(
                        role:"user",
                        loginName: "userr",
                        password: "word",
                        phone: "22222222222"
                )
                userr.save()
                if (userr.hasErrors()) {
                    println userr.errors
                }
                def p1u = new Project(
                        projectName: "p1u",
                        description: "p1up1up1u",
                        user: userr
                )
                p1u.save()
                if(p1u.hasErrors()){
                    println p1u.errors
                }

                def p2a = new Project(
                        projectName: "p2a",
                        description: "p2ap2ap2a",
                        user: admin
                )
                p2a.save()
                if(p2a.hasErrors()){
                    println p2a.errors
                }

                def j1 = new Json(
                        placeholderUrl: "p1u/userr/post",
                        method: "post",
                        jsonData: """{"id":1,"userId":1,"projectID":1}""",
                        project:p1u
                )
                j1.save()
                if(j1.hasErrors()){
                    println j1.errors
                }

                def j2 = new Json(
                        placeholderUrl: "p2a/admin/post",
                        method: "post",
                        jsonData: """{"id":2,"userId":2,"projectID":2}""",
                        project:p2a
                )
                j2.save()
                if(j2.hasErrors()){
                    println j2.errors
                }
                def u1 = new Json(
                        placeholderUrl: "p2a/admin/post",
                        method: "post",
                        jsonData: """{"id": 3,"name": "Leanne Graham","username": "Bret", "email": "Sincere@april.biz",    "address": {"street": "Kulas Light","suite": "Apt. 556","city": "Gp2anborough","zipcode": "92998-3874","geo": "lat": "-37.3159","lng": 81.1496}""",
                        project: p2a
                )
                u1.save()
                if(u1.hasErrors()){
                    println u1.errors
                }
                def u2 = new Json(
                        placeholderUrl: "p2a/admin/post",
                        method: "post",
                        jsonData: """{"id": 4,"name": "Leanne Graham","username": "Bret", "email": "Sincere@april.biz",    "address": {"street": "Kulas Light","suite": "Apt. 556","city": "Gp2anborough","zipcode": "92998-3874","geo": "lat": "-37.3159","lng": 81.1496}""",
                        project: p2a
                )
                u2.save()
                if(u2.hasErrors()){
                    println u2.errors
                }
                def p3u = new Project(
                        projectName: "p3u",
                        description: "lalala",
                        user: userr
                )
                p3u.save()
                if(p3u.hasErrors()){
                    println p3u.errors
                }
                def p4u = new Project(
                        projectName: "p4u",
                        description: "cyhlala",
                        user: userr
                )
                p4u.save()
                if(p4u.hasErrors()){
                    println p4u.errors
                }
                def j5 = new Json(
                        placeholderUrl: "p3u/userr/put",
                        method: "put",
                        jsonData: """{"id":2,"userId":2,"projectID":2}""",
                        project:p3u
                )
                j5.save()
                if(j5.hasErrors()){
                    println j5.errors
                }
                def j6 = new Json(
                        placeholderUrl: "p3u/userr/put",
                        method: "put",
                        jsonData: """{"id":12,"userId":12,"projectID":12}""",
                        project:p3u
                )
                j6.save()
                if(j6.hasErrors()){
                    println j6.errors
                }
                def j7 = new Json(
                        placeholderUrl: "p4u/userr/delete",
                        method: "delete",
                        jsonData: """{"id":22,"userId":22,"projectID":22}""",
                        project:p4u
                )
                j7.save()
                if(j7.hasErrors()){
                    println j7.errors
                }
                def j8 = new Json(
                        placeholderUrl: "p4u/userr/delete",
                        method: "delete",
                        jsonData: """{"id":23,"userId":23,"projectID":23}""",
                        project:p4u
                )
                j8.save()
                if(j8.hasErrors()){
                    println j8.errors
                }


        }
        def destroy = {
        }
    }
}