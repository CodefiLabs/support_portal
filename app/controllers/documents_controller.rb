class DocumentsController < ApplicationController
  skip_before_filter :verify_authenticity_token
   def upload
       @document = admin.media.documents.new
       @document.picture = params[:file]
       @document.save

       respond_to do |format|
           format.json { render :json => { status: 'OK', link:
@document.picture.url}}
       end
   end
end
