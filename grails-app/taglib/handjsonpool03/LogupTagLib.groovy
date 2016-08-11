package handjsonpool03

class LogupTagLib {
    def logupControl={
        out<<"""${link(action:"create",controller:"user"){"Sign in"}}"""
    }
}
