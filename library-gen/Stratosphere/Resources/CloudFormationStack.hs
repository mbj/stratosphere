{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stack.html

module Stratosphere.Resources.CloudFormationStack where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for CloudFormationStack. See
-- 'cloudFormationStack' for a more convenient constructor.
data CloudFormationStack =
  CloudFormationStack
  { _cloudFormationStackNotificationARNs :: Maybe (ValList Text)
  , _cloudFormationStackParameters :: Maybe Object
  , _cloudFormationStackTags :: Maybe [Tag]
  , _cloudFormationStackTemplateURL :: Val Text
  , _cloudFormationStackTimeoutInMinutes :: Maybe (Val Integer')
  } deriving (Show, Eq)

instance ToJSON CloudFormationStack where
  toJSON CloudFormationStack{..} =
    object $
    catMaybes
    [ ("NotificationARNs" .=) <$> _cloudFormationStackNotificationARNs
    , ("Parameters" .=) <$> _cloudFormationStackParameters
    , ("Tags" .=) <$> _cloudFormationStackTags
    , Just ("TemplateURL" .= _cloudFormationStackTemplateURL)
    , ("TimeoutInMinutes" .=) <$> _cloudFormationStackTimeoutInMinutes
    ]

instance FromJSON CloudFormationStack where
  parseJSON (Object obj) =
    CloudFormationStack <$>
      obj .:? "NotificationARNs" <*>
      obj .:? "Parameters" <*>
      obj .:? "Tags" <*>
      obj .: "TemplateURL" <*>
      obj .:? "TimeoutInMinutes"
  parseJSON _ = mempty

-- | Constructor for 'CloudFormationStack' containing required fields as
-- arguments.
cloudFormationStack
  :: Val Text -- ^ 'cfsTemplateURL'
  -> CloudFormationStack
cloudFormationStack templateURLarg =
  CloudFormationStack
  { _cloudFormationStackNotificationARNs = Nothing
  , _cloudFormationStackParameters = Nothing
  , _cloudFormationStackTags = Nothing
  , _cloudFormationStackTemplateURL = templateURLarg
  , _cloudFormationStackTimeoutInMinutes = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stack.html#cfn-cloudformation-stack-notificationarns
cfsNotificationARNs :: Lens' CloudFormationStack (Maybe (ValList Text))
cfsNotificationARNs = lens _cloudFormationStackNotificationARNs (\s a -> s { _cloudFormationStackNotificationARNs = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stack.html#cfn-cloudformation-stack-parameters
cfsParameters :: Lens' CloudFormationStack (Maybe Object)
cfsParameters = lens _cloudFormationStackParameters (\s a -> s { _cloudFormationStackParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stack.html#cfn-cloudformation-stack-tags
cfsTags :: Lens' CloudFormationStack (Maybe [Tag])
cfsTags = lens _cloudFormationStackTags (\s a -> s { _cloudFormationStackTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stack.html#cfn-cloudformation-stack-templateurl
cfsTemplateURL :: Lens' CloudFormationStack (Val Text)
cfsTemplateURL = lens _cloudFormationStackTemplateURL (\s a -> s { _cloudFormationStackTemplateURL = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stack.html#cfn-cloudformation-stack-timeoutinminutes
cfsTimeoutInMinutes :: Lens' CloudFormationStack (Maybe (Val Integer'))
cfsTimeoutInMinutes = lens _cloudFormationStackTimeoutInMinutes (\s a -> s { _cloudFormationStackTimeoutInMinutes = a })
