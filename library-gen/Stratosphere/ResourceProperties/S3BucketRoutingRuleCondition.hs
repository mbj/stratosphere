{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-routingrules-routingrulecondition.html

module Stratosphere.ResourceProperties.S3BucketRoutingRuleCondition where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for S3BucketRoutingRuleCondition. See
-- | 's3BucketRoutingRuleCondition' for a more convenient constructor.
data S3BucketRoutingRuleCondition =
  S3BucketRoutingRuleCondition
  { _s3BucketRoutingRuleConditionHttpErrorCodeReturnedEquals :: Maybe (Val Text)
  , _s3BucketRoutingRuleConditionKeyPrefixEquals :: Maybe (Val Text)
  } deriving (Show, Eq, Generic)

instance ToJSON S3BucketRoutingRuleCondition where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 29, omitNothingFields = True }

instance FromJSON S3BucketRoutingRuleCondition where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 29, omitNothingFields = True }

-- | Constructor for 'S3BucketRoutingRuleCondition' containing required fields
-- | as arguments.
s3BucketRoutingRuleCondition
  :: S3BucketRoutingRuleCondition
s3BucketRoutingRuleCondition  =
  S3BucketRoutingRuleCondition
  { _s3BucketRoutingRuleConditionHttpErrorCodeReturnedEquals = Nothing
  , _s3BucketRoutingRuleConditionKeyPrefixEquals = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-routingrules-routingrulecondition.html#cfn-s3-websiteconfiguration-routingrules-routingrulecondition-httperrorcodereturnedequals
sbrrcHttpErrorCodeReturnedEquals :: Lens' S3BucketRoutingRuleCondition (Maybe (Val Text))
sbrrcHttpErrorCodeReturnedEquals = lens _s3BucketRoutingRuleConditionHttpErrorCodeReturnedEquals (\s a -> s { _s3BucketRoutingRuleConditionHttpErrorCodeReturnedEquals = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-routingrules-routingrulecondition.html#cfn-s3-websiteconfiguration-routingrules-routingrulecondition-keyprefixequals
sbrrcKeyPrefixEquals :: Lens' S3BucketRoutingRuleCondition (Maybe (Val Text))
sbrrcKeyPrefixEquals = lens _s3BucketRoutingRuleConditionKeyPrefixEquals (\s a -> s { _s3BucketRoutingRuleConditionKeyPrefixEquals = a })
