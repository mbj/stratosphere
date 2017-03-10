{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html

module Stratosphere.ResourceProperties.S3BucketRule where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.S3BucketNoncurrentVersionTransition
import Stratosphere.ResourceProperties.S3BucketTransition

-- | Full data type definition for S3BucketRule. See 's3BucketRule' for a more
-- convenient constructor.
data S3BucketRule =
  S3BucketRule
  { _s3BucketRuleExpirationDate :: Maybe (Val Text)
  , _s3BucketRuleExpirationInDays :: Maybe (Val Integer')
  , _s3BucketRuleId :: Maybe (Val Text)
  , _s3BucketRuleNoncurrentVersionExpirationInDays :: Maybe (Val Integer')
  , _s3BucketRuleNoncurrentVersionTransition :: Maybe S3BucketNoncurrentVersionTransition
  , _s3BucketRuleNoncurrentVersionTransitions :: Maybe S3BucketNoncurrentVersionTransition
  , _s3BucketRulePrefix :: Maybe (Val Text)
  , _s3BucketRuleStatus :: Val Text
  , _s3BucketRuleTransition :: Maybe S3BucketTransition
  , _s3BucketRuleTransitions :: Maybe S3BucketTransition
  } deriving (Show, Eq)

instance ToJSON S3BucketRule where
  toJSON S3BucketRule{..} =
    object $
    catMaybes
    [ ("ExpirationDate" .=) <$> _s3BucketRuleExpirationDate
    , ("ExpirationInDays" .=) <$> _s3BucketRuleExpirationInDays
    , ("Id" .=) <$> _s3BucketRuleId
    , ("NoncurrentVersionExpirationInDays" .=) <$> _s3BucketRuleNoncurrentVersionExpirationInDays
    , ("NoncurrentVersionTransition" .=) <$> _s3BucketRuleNoncurrentVersionTransition
    , ("NoncurrentVersionTransitions" .=) <$> _s3BucketRuleNoncurrentVersionTransitions
    , ("Prefix" .=) <$> _s3BucketRulePrefix
    , Just ("Status" .= _s3BucketRuleStatus)
    , ("Transition" .=) <$> _s3BucketRuleTransition
    , ("Transitions" .=) <$> _s3BucketRuleTransitions
    ]

instance FromJSON S3BucketRule where
  parseJSON (Object obj) =
    S3BucketRule <$>
      obj .:? "ExpirationDate" <*>
      obj .:? "ExpirationInDays" <*>
      obj .:? "Id" <*>
      obj .:? "NoncurrentVersionExpirationInDays" <*>
      obj .:? "NoncurrentVersionTransition" <*>
      obj .:? "NoncurrentVersionTransitions" <*>
      obj .:? "Prefix" <*>
      obj .: "Status" <*>
      obj .:? "Transition" <*>
      obj .:? "Transitions"
  parseJSON _ = mempty

-- | Constructor for 'S3BucketRule' containing required fields as arguments.
s3BucketRule
  :: Val Text -- ^ 'sbrStatus'
  -> S3BucketRule
s3BucketRule statusarg =
  S3BucketRule
  { _s3BucketRuleExpirationDate = Nothing
  , _s3BucketRuleExpirationInDays = Nothing
  , _s3BucketRuleId = Nothing
  , _s3BucketRuleNoncurrentVersionExpirationInDays = Nothing
  , _s3BucketRuleNoncurrentVersionTransition = Nothing
  , _s3BucketRuleNoncurrentVersionTransitions = Nothing
  , _s3BucketRulePrefix = Nothing
  , _s3BucketRuleStatus = statusarg
  , _s3BucketRuleTransition = Nothing
  , _s3BucketRuleTransitions = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-lifecycleconfig-rule-expirationdate
sbrExpirationDate :: Lens' S3BucketRule (Maybe (Val Text))
sbrExpirationDate = lens _s3BucketRuleExpirationDate (\s a -> s { _s3BucketRuleExpirationDate = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-lifecycleconfig-rule-expirationindays
sbrExpirationInDays :: Lens' S3BucketRule (Maybe (Val Integer'))
sbrExpirationInDays = lens _s3BucketRuleExpirationInDays (\s a -> s { _s3BucketRuleExpirationInDays = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-lifecycleconfig-rule-id
sbrId :: Lens' S3BucketRule (Maybe (Val Text))
sbrId = lens _s3BucketRuleId (\s a -> s { _s3BucketRuleId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-lifecycleconfig-rule-noncurrentversionexpirationindays
sbrNoncurrentVersionExpirationInDays :: Lens' S3BucketRule (Maybe (Val Integer'))
sbrNoncurrentVersionExpirationInDays = lens _s3BucketRuleNoncurrentVersionExpirationInDays (\s a -> s { _s3BucketRuleNoncurrentVersionExpirationInDays = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-lifecycleconfig-rule-noncurrentversiontransition
sbrNoncurrentVersionTransition :: Lens' S3BucketRule (Maybe S3BucketNoncurrentVersionTransition)
sbrNoncurrentVersionTransition = lens _s3BucketRuleNoncurrentVersionTransition (\s a -> s { _s3BucketRuleNoncurrentVersionTransition = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-lifecycleconfig-rule-noncurrentversiontransitions
sbrNoncurrentVersionTransitions :: Lens' S3BucketRule (Maybe S3BucketNoncurrentVersionTransition)
sbrNoncurrentVersionTransitions = lens _s3BucketRuleNoncurrentVersionTransitions (\s a -> s { _s3BucketRuleNoncurrentVersionTransitions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-lifecycleconfig-rule-prefix
sbrPrefix :: Lens' S3BucketRule (Maybe (Val Text))
sbrPrefix = lens _s3BucketRulePrefix (\s a -> s { _s3BucketRulePrefix = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-lifecycleconfig-rule-status
sbrStatus :: Lens' S3BucketRule (Val Text)
sbrStatus = lens _s3BucketRuleStatus (\s a -> s { _s3BucketRuleStatus = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-lifecycleconfig-rule-transition
sbrTransition :: Lens' S3BucketRule (Maybe S3BucketTransition)
sbrTransition = lens _s3BucketRuleTransition (\s a -> s { _s3BucketRuleTransition = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-lifecycleconfig-rule-transitions
sbrTransitions :: Lens' S3BucketRule (Maybe S3BucketTransition)
sbrTransitions = lens _s3BucketRuleTransitions (\s a -> s { _s3BucketRuleTransitions = a })
