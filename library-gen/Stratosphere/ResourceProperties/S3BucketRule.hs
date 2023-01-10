
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html

module Stratosphere.ResourceProperties.S3BucketRule where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.S3BucketAbortIncompleteMultipartUpload
import Stratosphere.ResourceProperties.S3BucketNoncurrentVersionTransition
import Stratosphere.ResourceProperties.S3BucketTagFilter
import Stratosphere.ResourceProperties.S3BucketTransition

-- | Full data type definition for S3BucketRule. See 's3BucketRule' for a more
-- convenient constructor.
data S3BucketRule =
  S3BucketRule
  { _s3BucketRuleAbortIncompleteMultipartUpload :: Maybe S3BucketAbortIncompleteMultipartUpload
  , _s3BucketRuleExpirationDate :: Maybe (Val Text)
  , _s3BucketRuleExpirationInDays :: Maybe (Val Integer)
  , _s3BucketRuleId :: Maybe (Val Text)
  , _s3BucketRuleNoncurrentVersionExpirationInDays :: Maybe (Val Integer)
  , _s3BucketRuleNoncurrentVersionTransition :: Maybe S3BucketNoncurrentVersionTransition
  , _s3BucketRuleNoncurrentVersionTransitions :: Maybe [S3BucketNoncurrentVersionTransition]
  , _s3BucketRulePrefix :: Maybe (Val Text)
  , _s3BucketRuleStatus :: Val Text
  , _s3BucketRuleTagFilters :: Maybe [S3BucketTagFilter]
  , _s3BucketRuleTransition :: Maybe S3BucketTransition
  , _s3BucketRuleTransitions :: Maybe [S3BucketTransition]
  } deriving (Show, Eq)

instance ToJSON S3BucketRule where
  toJSON S3BucketRule{..} =
    object $
    catMaybes
    [ fmap (("AbortIncompleteMultipartUpload",) . toJSON) _s3BucketRuleAbortIncompleteMultipartUpload
    , fmap (("ExpirationDate",) . toJSON) _s3BucketRuleExpirationDate
    , fmap (("ExpirationInDays",) . toJSON) _s3BucketRuleExpirationInDays
    , fmap (("Id",) . toJSON) _s3BucketRuleId
    , fmap (("NoncurrentVersionExpirationInDays",) . toJSON) _s3BucketRuleNoncurrentVersionExpirationInDays
    , fmap (("NoncurrentVersionTransition",) . toJSON) _s3BucketRuleNoncurrentVersionTransition
    , fmap (("NoncurrentVersionTransitions",) . toJSON) _s3BucketRuleNoncurrentVersionTransitions
    , fmap (("Prefix",) . toJSON) _s3BucketRulePrefix
    , (Just . ("Status",) . toJSON) _s3BucketRuleStatus
    , fmap (("TagFilters",) . toJSON) _s3BucketRuleTagFilters
    , fmap (("Transition",) . toJSON) _s3BucketRuleTransition
    , fmap (("Transitions",) . toJSON) _s3BucketRuleTransitions
    ]

-- | Constructor for 'S3BucketRule' containing required fields as arguments.
s3BucketRule
  :: Val Text -- ^ 'sbrStatus'
  -> S3BucketRule
s3BucketRule statusarg =
  S3BucketRule
  { _s3BucketRuleAbortIncompleteMultipartUpload = Nothing
  , _s3BucketRuleExpirationDate = Nothing
  , _s3BucketRuleExpirationInDays = Nothing
  , _s3BucketRuleId = Nothing
  , _s3BucketRuleNoncurrentVersionExpirationInDays = Nothing
  , _s3BucketRuleNoncurrentVersionTransition = Nothing
  , _s3BucketRuleNoncurrentVersionTransitions = Nothing
  , _s3BucketRulePrefix = Nothing
  , _s3BucketRuleStatus = statusarg
  , _s3BucketRuleTagFilters = Nothing
  , _s3BucketRuleTransition = Nothing
  , _s3BucketRuleTransitions = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-rule-abortincompletemultipartupload
sbrAbortIncompleteMultipartUpload :: Lens' S3BucketRule (Maybe S3BucketAbortIncompleteMultipartUpload)
sbrAbortIncompleteMultipartUpload = lens _s3BucketRuleAbortIncompleteMultipartUpload (\s a -> s { _s3BucketRuleAbortIncompleteMultipartUpload = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-lifecycleconfig-rule-expirationdate
sbrExpirationDate :: Lens' S3BucketRule (Maybe (Val Text))
sbrExpirationDate = lens _s3BucketRuleExpirationDate (\s a -> s { _s3BucketRuleExpirationDate = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-lifecycleconfig-rule-expirationindays
sbrExpirationInDays :: Lens' S3BucketRule (Maybe (Val Integer))
sbrExpirationInDays = lens _s3BucketRuleExpirationInDays (\s a -> s { _s3BucketRuleExpirationInDays = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-lifecycleconfig-rule-id
sbrId :: Lens' S3BucketRule (Maybe (Val Text))
sbrId = lens _s3BucketRuleId (\s a -> s { _s3BucketRuleId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-lifecycleconfig-rule-noncurrentversionexpirationindays
sbrNoncurrentVersionExpirationInDays :: Lens' S3BucketRule (Maybe (Val Integer))
sbrNoncurrentVersionExpirationInDays = lens _s3BucketRuleNoncurrentVersionExpirationInDays (\s a -> s { _s3BucketRuleNoncurrentVersionExpirationInDays = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-lifecycleconfig-rule-noncurrentversiontransition
sbrNoncurrentVersionTransition :: Lens' S3BucketRule (Maybe S3BucketNoncurrentVersionTransition)
sbrNoncurrentVersionTransition = lens _s3BucketRuleNoncurrentVersionTransition (\s a -> s { _s3BucketRuleNoncurrentVersionTransition = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-lifecycleconfig-rule-noncurrentversiontransitions
sbrNoncurrentVersionTransitions :: Lens' S3BucketRule (Maybe [S3BucketNoncurrentVersionTransition])
sbrNoncurrentVersionTransitions = lens _s3BucketRuleNoncurrentVersionTransitions (\s a -> s { _s3BucketRuleNoncurrentVersionTransitions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-lifecycleconfig-rule-prefix
sbrPrefix :: Lens' S3BucketRule (Maybe (Val Text))
sbrPrefix = lens _s3BucketRulePrefix (\s a -> s { _s3BucketRulePrefix = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-lifecycleconfig-rule-status
sbrStatus :: Lens' S3BucketRule (Val Text)
sbrStatus = lens _s3BucketRuleStatus (\s a -> s { _s3BucketRuleStatus = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-rule-tagfilters
sbrTagFilters :: Lens' S3BucketRule (Maybe [S3BucketTagFilter])
sbrTagFilters = lens _s3BucketRuleTagFilters (\s a -> s { _s3BucketRuleTagFilters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-lifecycleconfig-rule-transition
sbrTransition :: Lens' S3BucketRule (Maybe S3BucketTransition)
sbrTransition = lens _s3BucketRuleTransition (\s a -> s { _s3BucketRuleTransition = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-lifecycleconfig-rule-transitions
sbrTransitions :: Lens' S3BucketRule (Maybe [S3BucketTransition])
sbrTransitions = lens _s3BucketRuleTransitions (\s a -> s { _s3BucketRuleTransitions = a })
