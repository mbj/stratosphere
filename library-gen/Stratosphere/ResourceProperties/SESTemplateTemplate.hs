
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-template-template.html

module Stratosphere.ResourceProperties.SESTemplateTemplate where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for SESTemplateTemplate. See
-- 'sesTemplateTemplate' for a more convenient constructor.
data SESTemplateTemplate =
  SESTemplateTemplate
  { _sESTemplateTemplateHtmlPart :: Maybe (Val Text)
  , _sESTemplateTemplateSubjectPart :: Maybe (Val Text)
  , _sESTemplateTemplateTemplateName :: Maybe (Val Text)
  , _sESTemplateTemplateTextPart :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON SESTemplateTemplate where
  toJSON SESTemplateTemplate{..} =
    object $
    catMaybes
    [ fmap (("HtmlPart",) . toJSON) _sESTemplateTemplateHtmlPart
    , fmap (("SubjectPart",) . toJSON) _sESTemplateTemplateSubjectPart
    , fmap (("TemplateName",) . toJSON) _sESTemplateTemplateTemplateName
    , fmap (("TextPart",) . toJSON) _sESTemplateTemplateTextPart
    ]

-- | Constructor for 'SESTemplateTemplate' containing required fields as
-- arguments.
sesTemplateTemplate
  :: SESTemplateTemplate
sesTemplateTemplate  =
  SESTemplateTemplate
  { _sESTemplateTemplateHtmlPart = Nothing
  , _sESTemplateTemplateSubjectPart = Nothing
  , _sESTemplateTemplateTemplateName = Nothing
  , _sESTemplateTemplateTextPart = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-template-template.html#cfn-ses-template-template-htmlpart
sesttHtmlPart :: Lens' SESTemplateTemplate (Maybe (Val Text))
sesttHtmlPart = lens _sESTemplateTemplateHtmlPart (\s a -> s { _sESTemplateTemplateHtmlPart = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-template-template.html#cfn-ses-template-template-subjectpart
sesttSubjectPart :: Lens' SESTemplateTemplate (Maybe (Val Text))
sesttSubjectPart = lens _sESTemplateTemplateSubjectPart (\s a -> s { _sESTemplateTemplateSubjectPart = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-template-template.html#cfn-ses-template-template-templatename
sesttTemplateName :: Lens' SESTemplateTemplate (Maybe (Val Text))
sesttTemplateName = lens _sESTemplateTemplateTemplateName (\s a -> s { _sESTemplateTemplateTemplateName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-template-template.html#cfn-ses-template-template-textpart
sesttTextPart :: Lens' SESTemplateTemplate (Maybe (Val Text))
sesttTextPart = lens _sESTemplateTemplateTextPart (\s a -> s { _sESTemplateTemplateTextPart = a })
