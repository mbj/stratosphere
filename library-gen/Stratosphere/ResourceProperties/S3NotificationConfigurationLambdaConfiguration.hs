{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | LambdaConfigurations is a property of the Amazon S3
-- NotificationConfiguration property that describes the AWS Lambda (Lambda)
-- functions to invoke and the events for which to invoke them.

module Stratosphere.ResourceProperties.S3NotificationConfigurationLambdaConfiguration where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.S3NotificationConfigurationConfigFilter

-- | Full data type definition for
-- S3NotificationConfigurationLambdaConfiguration. See
-- 's3NotificationConfigurationLambdaConfiguration' for a more convenient
-- constructor.
data S3NotificationConfigurationLambdaConfiguration =
  S3NotificationConfigurationLambdaConfiguration
  { _s3NotificationConfigurationLambdaConfigurationEvent :: Val Text
  , _s3NotificationConfigurationLambdaConfigurationFilter :: Maybe S3NotificationConfigurationConfigFilter
  , _s3NotificationConfigurationLambdaConfigurationFunction :: Val Text
  } deriving (Show, Generic)

instance ToJSON S3NotificationConfigurationLambdaConfiguration where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 47, omitNothingFields = True }

instance FromJSON S3NotificationConfigurationLambdaConfiguration where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 47, omitNothingFields = True }

-- | Constructor for 'S3NotificationConfigurationLambdaConfiguration'
-- containing required fields as arguments.
s3NotificationConfigurationLambdaConfiguration
  :: Val Text -- ^ 'snclcEvent'
  -> Val Text -- ^ 'snclcFunction'
  -> S3NotificationConfigurationLambdaConfiguration
s3NotificationConfigurationLambdaConfiguration eventarg functionarg =
  S3NotificationConfigurationLambdaConfiguration
  { _s3NotificationConfigurationLambdaConfigurationEvent = eventarg
  , _s3NotificationConfigurationLambdaConfigurationFilter = Nothing
  , _s3NotificationConfigurationLambdaConfigurationFunction = functionarg
  }

-- | The S3 bucket event for which to invoke the Lambda function. For more
-- information, see Supported Event Types in the Amazon Simple Storage Service
-- Developer Guide.
snclcEvent :: Lens' S3NotificationConfigurationLambdaConfiguration (Val Text)
snclcEvent = lens _s3NotificationConfigurationLambdaConfigurationEvent (\s a -> s { _s3NotificationConfigurationLambdaConfigurationEvent = a })

-- | The filtering rules that determine which objects invoke the Lambda
-- function. For example, you can create a filter so that only image files
-- with a .jpg extension invoke the function when they are added to the S3
-- bucket.
snclcFilter :: Lens' S3NotificationConfigurationLambdaConfiguration (Maybe S3NotificationConfigurationConfigFilter)
snclcFilter = lens _s3NotificationConfigurationLambdaConfigurationFilter (\s a -> s { _s3NotificationConfigurationLambdaConfigurationFilter = a })

-- | The Amazon Resource Name (ARN) of the Lambda function that Amazon S3
-- invokes when the specified event type occurs.
snclcFunction :: Lens' S3NotificationConfigurationLambdaConfiguration (Val Text)
snclcFunction = lens _s3NotificationConfigurationLambdaConfigurationFunction (\s a -> s { _s3NotificationConfigurationLambdaConfigurationFunction = a })