import os
import cherrypy

def_page = """
            <html>
                <head>
                    <title>First CherryPy Application</title>
                    <link rel="stylesheet" type="text/css" href="styles.css">
                </head>
                <body>
                    {content}
                </body>
            </html
            """


class App1(object):
    @cherrypy.expose
    def index(self):
        page = def_page.replace("{content}", "<h1>CherryPy Application!</h1>")
        return page

    @cherrypy.expose
    def square(self, num=0):
        square = str(int(num)**2)
        page = def_page.replace("{content}", "<h1>The square of " + num +
                                " is " + square + "!</h1>")
        return page

    @cherrypy.expose
    def ts(self):
        page = def_page.replace("{content}", os.path.abspath(os.getcwd()))
        return page


    @cherrypy.expose
    def calc(self):
        form = """
                <form method="get" action="square">
                    <input type="text" value="1" name="num" />
                    <button type="submit">Square it now!</button>
                </form>
        """
        page = def_page.replace("{content}", form)
        return page


if __name__ == '__main__':
    conf = {
        '/': {
            'tools.staticdir.on': True,
            'tools.staticdir.dir': os.path.abspath(os.getcwd()) + "\static"
        }
    }
    cherrypy.quickstart(App1(), "/", conf)
