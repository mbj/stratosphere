{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-emailtemplate.html

module Stratosphere.Resources.PinpointEmailTemplate where

import Stratosphere.ResourceImports


-- | Full data type definition for PinpointEmailTemplate. See
-- 'pinpointEmailTemplate' for a more convenient constructor.
data PinpointEmailTemplate =
  PinpointEmailTemplate
  { _pinpointEmailTemplateDefaultSubstitutions :: Maybe (Val Text)
  , _pinpointEmailTemplateHtmlPart :: Maybe (Val Text)
  , _pinpointEmailTemplateSubject :: Val Text
  , _pinpointEmailTemplateTags :: Maybe Object
  , _pinpointEmailTemplateTemplateDescription :: Maybe (Val Text)
  , _pinpointEmailTemplateTemplateName :: Val Text
  , _pinpointEmailTemplateTextPart :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties PinpointEmailTemplate where
  toResourceProperties PinpointEmailTemplate{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Pinpoint::EmailTemplate"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("DefaultSubstitutions",) . toJSON) _pinpointEmailTemplateDefaultSubstitutions
        , fmap (("HtmlPart",) . toJSON) _pinpointEmailTemplateHtmlPart
        , (Just . ("Subject",) . toJSON) _pinpointEmailTemplateSubject
        , fmap (("Tags",) . toJSON) _pinpointEmailTemplateTags
        , fmap (("TemplateDescription",) . toJSON) _pinpointEmailTemplateTemplateDescription
        , (Just . ("TemplateName",) . toJSON) _pinpointEmailTemplateTemplateName
        , fmap (("TextPart",) . toJSON) _pinpointEmailTemplateTextPart
        ]
    }

-- | Constructor for 'PinpointEmailTemplate' containing required fields as
-- arguments.
pinpointEmailTemplate
  :: Val Text -- ^ 'petSubject'
  -> Val Text -- ^ 'petTemplateName'
  -> PinpointEmailTemplate
pinpointEmailTemplate subjectarg templateNamearg =
  PinpointEmailTemplate
  { _pinpointEmailTemplateDefaultSubstitutions = Nothing
  , _pinpointEmailTemplateHtmlPart = Nothing
  , _pinpointEmailTemplateSubject = subjectarg
  , _pinpointEmailTemplateTags = Nothing
  , _pinpointEmailTemplateTemplateDescription = Nothing
  , _pinpointEmailTemplateTemplateName = templateNamearg
  , _pinpointEmailTemplateTextPart = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-emailtemplate.html#cfn-pinpoint-emailtemplate-defaultsubstitutions
petDefaultSubstitutions :: Lens' PinpointEmailTemplate (Maybe (Val Text))
petDefaultSubstitutions = lens _pinpointEmailTemplateDefaultSubstitutions (\s a -> s { _pinpointEmailTemplateDefaultSubstitutions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-emailtemplate.html#cfn-pinpoint-emailtemplate-htmlpart
petHtmlPart :: Lens' PinpointEmailTemplate (Maybe (Val Text))
petHtmlPart = lens _pinpointEmailTemplateHtmlPart (\s a -> s { _pinpointEmailTemplateHtmlPart = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-emailtemplate.html#cfn-pinpoint-emailtemplate-subject
petSubject :: Lens' PinpointEmailTemplate (Val Text)
petSubject = lens _pinpointEmailTemplateSubject (\s a -> s { _pinpointEmailTemplateSubject = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-emailtemplate.html#cfn-pinpoint-emailtemplate-tags
petTags :: Lens' PinpointEmailTemplate (Maybe Object)
petTags = lens _pinpointEmailTemplateTags (\s a -> s { _pinpointEmailTemplateTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-emailtemplate.html#cfn-pinpoint-emailtemplate-templatedescription
petTemplateDescription :: Lens' PinpointEmailTemplate (Maybe (Val Text))
petTemplateDescription = lens _pinpointEmailTemplateTemplateDescription (\s a -> s { _pinpointEmailTemplateTemplateDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-emailtemplate.html#cfn-pinpoint-emailtemplate-templatename
petTemplateName :: Lens' PinpointEmailTemplate (Val Text)
petTemplateName = lens _pinpointEmailTemplateTemplateName (\s a -> s { _pinpointEmailTemplateTemplateName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-emailtemplate.html#cfn-pinpoint-emailtemplate-textpart
petTextPart :: Lens' PinpointEmailTemplate (Maybe (Val Text))
petTextPart = lens _pinpointEmailTemplateTextPart (\s a -> s { _pinpointEmailTemplateTextPart = a })
