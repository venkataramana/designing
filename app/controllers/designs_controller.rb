class DesignsController < ApplicationController
        def index
                @designs=[]
                @designs << Design.last
                #render :text=> @designs[0].nil?.inspect and return false
        end
        def new
                @design=Design.new
               # render :update do |page|
                     #   page.replace_html "newpage", :partial => "new"
              #  end
        end
        def create
                #render :text=>params.inspect and return false
                @design=Design.new(params[:design])
                        if @design.save
                                redirect_to "/designs"
                        else
                                render :action=> "new"
                        end
        end
        def show
                @designs=Design.find(:all, :limit=>5, :order=> "created_at DESC")
                render :update do |page|
                        page.replace_html "newpage", :partial => "show"
                end
        end

        def aboutus
                render :update do |page|
                        page.replace_html "newpage", :partial => "aboutus"
                end
        end
        def services
                render :update do |page|
                        page.replace_html "newpage", :partial => "services"
                end
        end
        def faqs
               render :update do |page|
                        page.replace_html "newpage", :partial => "faqs"
                end
        end
        def contact
                render :update do |page|
                        page.replace_html "newpage", :partial => "contact"
                end
        end

end

