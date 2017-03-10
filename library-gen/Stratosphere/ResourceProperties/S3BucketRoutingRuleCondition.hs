{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-routingrules-routingrulecondition.html

module Stratosphere.ResourceProperties.S3BucketRoutingRuleCondition where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for S3BucketRoutingRuleCondition. See
-- 's3BucketRoutingRuleCondition' for a more convenient constructor.
data S3BucketRoutingRuleCondition =
  S3BucketRoutingRuleCondition
  { _s3BucketRoutingRuleConditionHttpErrorCodeReturnedEquals :: Maybe (Val Text)
  , _s3BucketRoutingRuleConditionKeyPrefixEquals :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON S3BucketRoutingRuleCondition where
  toJSON S3BucketRoutingRuleCondition{..} =
    object $
    catMaybes
    [ ("HttpErrorCodeReturnedEquals" .=) <$> _s3BucketRoutingRuleConditionHttpErrorCodeReturnedEquals
    , ("KeyPrefixEquals" .=) <$> _s3BucketRoutingRuleConditionKeyPrefixEquals
    ]

instance FromJSON S3BucketRoutingRuleCondition where
  parseJSON (Object obj) =
    S3BucketRoutingRuleCondition <$>
      obj .:? "HttpErrorCodeReturnedEquals" <*>
      obj .:? "KeyPrefixEquals"
  parseJSON _ = mempty

-- | Constructor for 'S3BucketRoutingRuleCondition' containing required fields
-- as arguments.
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
