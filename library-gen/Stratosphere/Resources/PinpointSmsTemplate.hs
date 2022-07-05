{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-smstemplate.html

module Stratosphere.Resources.PinpointSmsTemplate where

import Stratosphere.ResourceImports


-- | Full data type definition for PinpointSmsTemplate. See
-- 'pinpointSmsTemplate' for a more convenient constructor.
data PinpointSmsTemplate =
  PinpointSmsTemplate
  { _pinpointSmsTemplateBody :: Val Text
  , _pinpointSmsTemplateDefaultSubstitutions :: Maybe (Val Text)
  , _pinpointSmsTemplateTags :: Maybe Object
  , _pinpointSmsTemplateTemplateDescription :: Maybe (Val Text)
  , _pinpointSmsTemplateTemplateName :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties PinpointSmsTemplate where
  toResourceProperties PinpointSmsTemplate{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Pinpoint::SmsTemplate"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("Body",) . toJSON) _pinpointSmsTemplateBody
        , fmap (("DefaultSubstitutions",) . toJSON) _pinpointSmsTemplateDefaultSubstitutions
        , fmap (("Tags",) . toJSON) _pinpointSmsTemplateTags
        , fmap (("TemplateDescription",) . toJSON) _pinpointSmsTemplateTemplateDescription
        , (Just . ("TemplateName",) . toJSON) _pinpointSmsTemplateTemplateName
        ]
    }

-- | Constructor for 'PinpointSmsTemplate' containing required fields as
-- arguments.
pinpointSmsTemplate
  :: Val Text -- ^ 'pstBody'
  -> Val Text -- ^ 'pstTemplateName'
  -> PinpointSmsTemplate
pinpointSmsTemplate bodyarg templateNamearg =
  PinpointSmsTemplate
  { _pinpointSmsTemplateBody = bodyarg
  , _pinpointSmsTemplateDefaultSubstitutions = Nothing
  , _pinpointSmsTemplateTags = Nothing
  , _pinpointSmsTemplateTemplateDescription = Nothing
  , _pinpointSmsTemplateTemplateName = templateNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-smstemplate.html#cfn-pinpoint-smstemplate-body
pstBody :: Lens' PinpointSmsTemplate (Val Text)
pstBody = lens _pinpointSmsTemplateBody (\s a -> s { _pinpointSmsTemplateBody = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-smstemplate.html#cfn-pinpoint-smstemplate-defaultsubstitutions
pstDefaultSubstitutions :: Lens' PinpointSmsTemplate (Maybe (Val Text))
pstDefaultSubstitutions = lens _pinpointSmsTemplateDefaultSubstitutions (\s a -> s { _pinpointSmsTemplateDefaultSubstitutions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-smstemplate.html#cfn-pinpoint-smstemplate-tags
pstTags :: Lens' PinpointSmsTemplate (Maybe Object)
pstTags = lens _pinpointSmsTemplateTags (\s a -> s { _pinpointSmsTemplateTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-smstemplate.html#cfn-pinpoint-smstemplate-templatedescription
pstTemplateDescription :: Lens' PinpointSmsTemplate (Maybe (Val Text))
pstTemplateDescription = lens _pinpointSmsTemplateTemplateDescription (\s a -> s { _pinpointSmsTemplateTemplateDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-smstemplate.html#cfn-pinpoint-smstemplate-templatename
pstTemplateName :: Lens' PinpointSmsTemplate (Val Text)
pstTemplateName = lens _pinpointSmsTemplateTemplateName (\s a -> s { _pinpointSmsTemplateTemplateName = a })
