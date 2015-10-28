# Generated via
#  `rails generate curation_concerns:work Rackham`
class Rackham < ActiveFedora::Base
  include ::CurationConcerns::GenericWorkBehavior
  include ::CurationConcerns::BasicMetadata
  include ::DeepBlue::BasicMetadata
  validates_presence_of :title,  message: 'Your work must have a title.'

  def to_solr(solr_doc = {})
    super(solr_doc).tap do |solr_doc|
      solr_doc['dateIssuedYear_sim'] = dateIssued[0,4]
    end
  end

  
end
