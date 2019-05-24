{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediastore-container-corsrule.html

module Stratosphere.ResourceProperties.MediaStoreContainerCorsRule where

import Stratosphere.ResourceImports


-- | Full data type definition for MediaStoreContainerCorsRule. See
-- 'mediaStoreContainerCorsRule' for a more convenient constructor.
data MediaStoreContainerCorsRule =
  MediaStoreContainerCorsRule
  { _mediaStoreContainerCorsRuleAllowedHeaders :: Maybe (ValList Text)
  , _mediaStoreContainerCorsRuleAllowedMethods :: Maybe (ValList Text)
  , _mediaStoreContainerCorsRuleAllowedOrigins :: Maybe (ValList Text)
  , _mediaStoreContainerCorsRuleExposeHeaders :: Maybe (ValList Text)
  , _mediaStoreContainerCorsRuleMaxAgeSeconds :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON MediaStoreContainerCorsRule where
  toJSON MediaStoreContainerCorsRule{..} =
    object $
    catMaybes
    [ fmap (("AllowedHeaders",) . toJSON) _mediaStoreContainerCorsRuleAllowedHeaders
    , fmap (("AllowedMethods",) . toJSON) _mediaStoreContainerCorsRuleAllowedMethods
    , fmap (("AllowedOrigins",) . toJSON) _mediaStoreContainerCorsRuleAllowedOrigins
    , fmap (("ExposeHeaders",) . toJSON) _mediaStoreContainerCorsRuleExposeHeaders
    , fmap (("MaxAgeSeconds",) . toJSON) _mediaStoreContainerCorsRuleMaxAgeSeconds
    ]

-- | Constructor for 'MediaStoreContainerCorsRule' containing required fields
-- as arguments.
mediaStoreContainerCorsRule
  :: MediaStoreContainerCorsRule
mediaStoreContainerCorsRule  =
  MediaStoreContainerCorsRule
  { _mediaStoreContainerCorsRuleAllowedHeaders = Nothing
  , _mediaStoreContainerCorsRuleAllowedMethods = Nothing
  , _mediaStoreContainerCorsRuleAllowedOrigins = Nothing
  , _mediaStoreContainerCorsRuleExposeHeaders = Nothing
  , _mediaStoreContainerCorsRuleMaxAgeSeconds = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediastore-container-corsrule.html#cfn-mediastore-container-corsrule-allowedheaders
msccrAllowedHeaders :: Lens' MediaStoreContainerCorsRule (Maybe (ValList Text))
msccrAllowedHeaders = lens _mediaStoreContainerCorsRuleAllowedHeaders (\s a -> s { _mediaStoreContainerCorsRuleAllowedHeaders = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediastore-container-corsrule.html#cfn-mediastore-container-corsrule-allowedmethods
msccrAllowedMethods :: Lens' MediaStoreContainerCorsRule (Maybe (ValList Text))
msccrAllowedMethods = lens _mediaStoreContainerCorsRuleAllowedMethods (\s a -> s { _mediaStoreContainerCorsRuleAllowedMethods = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediastore-container-corsrule.html#cfn-mediastore-container-corsrule-allowedorigins
msccrAllowedOrigins :: Lens' MediaStoreContainerCorsRule (Maybe (ValList Text))
msccrAllowedOrigins = lens _mediaStoreContainerCorsRuleAllowedOrigins (\s a -> s { _mediaStoreContainerCorsRuleAllowedOrigins = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediastore-container-corsrule.html#cfn-mediastore-container-corsrule-exposeheaders
msccrExposeHeaders :: Lens' MediaStoreContainerCorsRule (Maybe (ValList Text))
msccrExposeHeaders = lens _mediaStoreContainerCorsRuleExposeHeaders (\s a -> s { _mediaStoreContainerCorsRuleExposeHeaders = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediastore-container-corsrule.html#cfn-mediastore-container-corsrule-maxageseconds
msccrMaxAgeSeconds :: Lens' MediaStoreContainerCorsRule (Maybe (Val Integer))
msccrMaxAgeSeconds = lens _mediaStoreContainerCorsRuleMaxAgeSeconds (\s a -> s { _mediaStoreContainerCorsRuleMaxAgeSeconds = a })
