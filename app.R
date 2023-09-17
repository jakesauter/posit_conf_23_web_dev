# Launch the ShinyApp (Do not remove this comment)
# To deploy, run: rsconnect::deployApp()
# Or use the blue button on top of this file

# pkgload::load_all()
# options( "golem.app.prod" = TRUE)
# run_app() # add parameters here (if any)

library(bslib)
library(bsicons)

card <- 
    card(
        card_header(
            class = "bg-dark",
            "A header"
        ),
        card_body(
            markdown("Some text with a [link](https://github.com)")
        )
    )

ui <- 
    bslib::page_fluid(
        bslib::layout_sidebar( 
            sidebar = 
                sidebar(
                    "Sidebar Info"
                ), 
            bslib::layout_column_wrap(
                width = 1, 
                bslib::layout_column_wrap(
                    width = 1/2, 
                    card, 
                    card, 
                    card, 
                    card
                ), 
                bslib::layout_column_wrap(
                    width = 1/2, 
                    card, 
                    card, 
                    card, 
                    card, 
                    card
                )
            )
        )
    )   

server <- function(input, output, session) {}

shinyApp(ui, server)

