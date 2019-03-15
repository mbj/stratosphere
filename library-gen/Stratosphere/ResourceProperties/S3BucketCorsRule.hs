{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-cors-corsrule.html

module Stratosphere.ResourceProperties.S3BucketCorsRule where

import Stratosphere.ResourceImports


-- | Full data type definition for S3BucketCorsRule. See 's3BucketCorsRule'
-- for a more convenient constructor.
data S3BucketCorsRule =
  S3BucketCorsRule
  { _s3BucketCorsRuleAllowedHeaders :: Maybe (ValList Text)
  , _s3BucketCorsRuleAllowedMethods :: ValList Text
  , _s3BucketCorsRuleAllowedOrigins :: ValList Text
  , _s3BucketCorsRuleExposedHeaders :: Maybe (ValList Text)
  , _s3BucketCorsRuleId :: Maybe (Val Text)
  , _s3BucketCorsRuleMaxAge :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON S3BucketCorsRule where
  toJSON S3BucketCorsRule{..} =
    object $
    catMaybes
    [ fmap (("AllowedHeaders",) . toJSON) _s3BucketCorsRuleAllowedHeaders
    , (Just . ("AllowedMethods",) . toJSON) _s3BucketCorsRuleAllowedMethods
    , (Just . ("AllowedOrigins",) . toJSON) _s3BucketCorsRuleAllowedOrigins
    , fmap (("ExposedHeaders",) . toJSON) _s3BucketCorsRuleExposedHeaders
    , fmap (("Id",) . toJSON) _s3BucketCorsRuleId
    , fmap (("MaxAge",) . toJSON) _s3BucketCorsRuleMaxAge
    ]

-- | Constructor for 'S3BucketCorsRule' containing required fields as
-- arguments.
s3BucketCorsRule
  :: ValList Text -- ^ 'sbcrAllowedMethods'
  -> ValList Text -- ^ 'sbcrAllowedOrigins'
  -> S3BucketCorsRule
s3BucketCorsRule allowedMethodsarg allowedOriginsarg =
  S3BucketCorsRule
  { _s3BucketCorsRuleAllowedHeaders = Nothing
  , _s3BucketCorsRuleAllowedMethods = allowedMethodsarg
  , _s3BucketCorsRuleAllowedOrigins = allowedOriginsarg
  , _s3BucketCorsRuleExposedHeaders = Nothing
  , _s3BucketCorsRuleId = Nothing
  , _s3BucketCorsRuleMaxAge = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-cors-corsrule.html#cfn-s3-bucket-cors-corsrule-allowedheaders
sbcrAllowedHeaders :: Lens' S3BucketCorsRule (Maybe (ValList Text))
sbcrAllowedHeaders = lens _s3BucketCorsRuleAllowedHeaders (\s a -> s { _s3BucketCorsRuleAllowedHeaders = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-cors-corsrule.html#cfn-s3-bucket-cors-corsrule-allowedmethods
sbcrAllowedMethods :: Lens' S3BucketCorsRule (ValList Text)
sbcrAllowedMethods = lens _s3BucketCorsRuleAllowedMethods (\s a -> s { _s3BucketCorsRuleAllowedMethods = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-cors-corsrule.html#cfn-s3-bucket-cors-corsrule-allowedorigins
sbcrAllowedOrigins :: Lens' S3BucketCorsRule (ValList Text)
sbcrAllowedOrigins = lens _s3BucketCorsRuleAllowedOrigins (\s a -> s { _s3BucketCorsRuleAllowedOrigins = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-cors-corsrule.html#cfn-s3-bucket-cors-corsrule-exposedheaders
sbcrExposedHeaders :: Lens' S3BucketCorsRule (Maybe (ValList Text))
sbcrExposedHeaders = lens _s3BucketCorsRuleExposedHeaders (\s a -> s { _s3BucketCorsRuleExposedHeaders = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-cors-corsrule.html#cfn-s3-bucket-cors-corsrule-id
sbcrId :: Lens' S3BucketCorsRule (Maybe (Val Text))
sbcrId = lens _s3BucketCorsRuleId (\s a -> s { _s3BucketCorsRuleId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-cors-corsrule.html#cfn-s3-bucket-cors-corsrule-maxage
sbcrMaxAge :: Lens' S3BucketCorsRule (Maybe (Val Integer))
sbcrMaxAge = lens _s3BucketCorsRuleMaxAge (\s a -> s { _s3BucketCorsRuleMaxAge = a })
