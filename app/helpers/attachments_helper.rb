module AttachmentsHelper
  def attchmemt_params
    params.permit(:image)
  end
end
