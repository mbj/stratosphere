{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-routingrules-routingrulecondition.html

module Stratosphere.ResourceProperties.S3BucketRoutingRuleCondition where

import Stratosphere.ResourceImports


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
    [ fmap (("HttpErrorCodeReturnedEquals",) . toJSON) _s3BucketRoutingRuleConditionHttpErrorCodeReturnedEquals
    , fmap (("KeyPrefixEquals",) . toJSON) _s3BucketRoutingRuleConditionKeyPrefixEquals
    ]

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
