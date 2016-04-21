class MainPageController < ApplicationController
  def portfolio
  end

  def epilogue
  end

  def contact
    contact = Contact.new
    contact.name = params[:contact_name]
    contact.phone = params[:contact_phone]
    contact.content = params[:contact_content]
    if contact.save
      flash[:alert] = "저장되었습니다."
      redirect_to :back
    end
  end
  
  def mainpage
    @portfolios = Portfolio.all
    
    @epilogues = Epilogue.all
    
    @portfolio_pages = Portfolio.paginate(:page => params[:page], :per_page => 5)
    @epilogue_pages = Epilogue.paginate(:page => params[:page], :per_page => 5)
    
  end
end
