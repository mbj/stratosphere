{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The AWS::CloudFormation::Stack type nests a stack as a resource in a
-- top-level template. You can add output values from a nested stack within
-- the containing template. You use the GetAtt function with the nested
-- stack's logical name and the name of the output value in the nested stack
-- in the format Outputs.NestedStackOutputName. When you apply template
-- changes to update a top-level stack, AWS CloudFormation updates the
-- top-level stack and initiates an update to its nested stacks. AWS
-- CloudFormation updates the resources of modified nested stacks, but does
-- not update the resources of unmodified nested stacks. For more information,
-- see AWS CloudFormation Stacks Updates.

module Stratosphere.Resources.Stack where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.ResourceTag
import Stratosphere.Parameters

data Stack =
  Stack
  { _stackNotificationARNs :: Maybe [Val Text]
  , _stackParameters :: Maybe Parameters
  , _stackResourceTags :: Maybe [ResourceTag]
  , _stackTemplateURL :: Val Text
  , _stackTimeoutInMinutes :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON Stack where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 6, omitNothingFields = True }

instance FromJSON Stack where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 6, omitNothingFields = True }

stack
  :: Val Text -- ^ TemplateURL
  -> Stack
stack templateURLarg =
  Stack
  { _stackNotificationARNs = Nothing
  , _stackParameters = Nothing
  , _stackResourceTags = Nothing
  , _stackTemplateURL = templateURLarg
  , _stackTimeoutInMinutes = Nothing
  }

-- | A list of existing Amazon SNS topics where notifications about stack
-- events are sent.
sNotificationARNs :: Lens' Stack (Maybe [Val Text])
sNotificationARNs = lens _stackNotificationARNs (\s a -> s { _stackNotificationARNs = a })

-- | The set of parameters passed to AWS CloudFormation when this nested stack
-- is created. Note If you use the ref function to pass a parameter value to a
-- nested stack, comma-delimited list parameters must be of type String. In
-- other words, you cannot pass values that are of type CommaDelimitedList to
-- nested stacks.
sParameters :: Lens' Stack (Maybe Parameters)
sParameters = lens _stackParameters (\s a -> s { _stackParameters = a })

-- | An arbitrary set of tags (key–value pairs) to describe this stack.
sResourceTags :: Lens' Stack (Maybe [ResourceTag])
sResourceTags = lens _stackResourceTags (\s a -> s { _stackResourceTags = a })

-- | The URL of a template that specifies the stack that you want to create as
-- a resource. The template must be stored on an Amazon S3 bucket, so the URL
-- must have the form: https://s3.amazonaws.com/.../TemplateName.template
sTemplateURL :: Lens' Stack (Val Text)
sTemplateURL = lens _stackTemplateURL (\s a -> s { _stackTemplateURL = a })

-- | The length of time, in minutes, that AWS CloudFormation waits for the
-- nested stack to reach the CREATE_COMPLETE state. The default is no timeout.
-- When AWS CloudFormation detects that the nested stack has reached the
-- CREATE_COMPLETE state, it marks the nested stack resource as
-- CREATE_COMPLETE in the parent stack and resumes creating the parent stack.
-- If the timeout period expires before the nested stack reaches
-- CREATE_COMPLETE, AWS CloudFormation marks the nested stack as failed and
-- rolls back both the nested stack and parent stack.
sTimeoutInMinutes :: Lens' Stack (Maybe (Val Text))
sTimeoutInMinutes = lens _stackTimeoutInMinutes (\s a -> s { _stackTimeoutInMinutes = a })