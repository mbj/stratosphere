{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-routingrules.html

module Stratosphere.ResourceProperties.S3BucketRoutingRule where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.S3BucketRedirectRule
import Stratosphere.ResourceProperties.S3BucketRoutingRuleCondition

-- | Full data type definition for S3BucketRoutingRule. See
-- | 's3BucketRoutingRule' for a more convenient constructor.
data S3BucketRoutingRule =
  S3BucketRoutingRule
  { _s3BucketRoutingRuleRedirectRule :: S3BucketRedirectRule
  , _s3BucketRoutingRuleRoutingRuleCondition :: Maybe S3BucketRoutingRuleCondition
  } deriving (Show, Eq)

instance ToJSON S3BucketRoutingRule where
  toJSON S3BucketRoutingRule{..} =
    object $
    catMaybes
    [ Just ("RedirectRule" .= _s3BucketRoutingRuleRedirectRule)
    , ("RoutingRuleCondition" .=) <$> _s3BucketRoutingRuleRoutingRuleCondition
    ]

instance FromJSON S3BucketRoutingRule where
  parseJSON (Object obj) =
    S3BucketRoutingRule <$>
      obj .: "RedirectRule" <*>
      obj .:? "RoutingRuleCondition"
  parseJSON _ = mempty

-- | Constructor for 'S3BucketRoutingRule' containing required fields as
-- | arguments.
s3BucketRoutingRule
  :: S3BucketRedirectRule -- ^ 'sbrrRedirectRule'
  -> S3BucketRoutingRule
s3BucketRoutingRule redirectRulearg =
  S3BucketRoutingRule
  { _s3BucketRoutingRuleRedirectRule = redirectRulearg
  , _s3BucketRoutingRuleRoutingRuleCondition = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-routingrules.html#cfn-s3-websiteconfiguration-routingrules-redirectrule
sbrrRedirectRule :: Lens' S3BucketRoutingRule S3BucketRedirectRule
sbrrRedirectRule = lens _s3BucketRoutingRuleRedirectRule (\s a -> s { _s3BucketRoutingRuleRedirectRule = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-routingrules.html#cfn-s3-websiteconfiguration-routingrules-routingrulecondition
sbrrRoutingRuleCondition :: Lens' S3BucketRoutingRule (Maybe S3BucketRoutingRuleCondition)
sbrrRoutingRuleCondition = lens _s3BucketRoutingRuleRoutingRuleCondition (\s a -> s { _s3BucketRoutingRuleRoutingRuleCondition = a })
