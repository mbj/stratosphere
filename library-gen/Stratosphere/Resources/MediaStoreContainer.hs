{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediastore-container.html

module Stratosphere.Resources.MediaStoreContainer where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MediaStoreContainerCorsRule
import Stratosphere.ResourceProperties.MediaStoreContainerMetricPolicy
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for MediaStoreContainer. See
-- 'mediaStoreContainer' for a more convenient constructor.
data MediaStoreContainer =
  MediaStoreContainer
  { _mediaStoreContainerAccessLoggingEnabled :: Maybe (Val Bool)
  , _mediaStoreContainerContainerName :: Val Text
  , _mediaStoreContainerCorsPolicy :: Maybe [MediaStoreContainerCorsRule]
  , _mediaStoreContainerLifecyclePolicy :: Maybe (Val Text)
  , _mediaStoreContainerMetricPolicy :: Maybe MediaStoreContainerMetricPolicy
  , _mediaStoreContainerPolicy :: Maybe (Val Text)
  , _mediaStoreContainerTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties MediaStoreContainer where
  toResourceProperties MediaStoreContainer{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::MediaStore::Container"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("AccessLoggingEnabled",) . toJSON) _mediaStoreContainerAccessLoggingEnabled
        , (Just . ("ContainerName",) . toJSON) _mediaStoreContainerContainerName
        , fmap (("CorsPolicy",) . toJSON) _mediaStoreContainerCorsPolicy
        , fmap (("LifecyclePolicy",) . toJSON) _mediaStoreContainerLifecyclePolicy
        , fmap (("MetricPolicy",) . toJSON) _mediaStoreContainerMetricPolicy
        , fmap (("Policy",) . toJSON) _mediaStoreContainerPolicy
        , fmap (("Tags",) . toJSON) _mediaStoreContainerTags
        ]
    }

-- | Constructor for 'MediaStoreContainer' containing required fields as
-- arguments.
mediaStoreContainer
  :: Val Text -- ^ 'mscContainerName'
  -> MediaStoreContainer
mediaStoreContainer containerNamearg =
  MediaStoreContainer
  { _mediaStoreContainerAccessLoggingEnabled = Nothing
  , _mediaStoreContainerContainerName = containerNamearg
  , _mediaStoreContainerCorsPolicy = Nothing
  , _mediaStoreContainerLifecyclePolicy = Nothing
  , _mediaStoreContainerMetricPolicy = Nothing
  , _mediaStoreContainerPolicy = Nothing
  , _mediaStoreContainerTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediastore-container.html#cfn-mediastore-container-accessloggingenabled
mscAccessLoggingEnabled :: Lens' MediaStoreContainer (Maybe (Val Bool))
mscAccessLoggingEnabled = lens _mediaStoreContainerAccessLoggingEnabled (\s a -> s { _mediaStoreContainerAccessLoggingEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediastore-container.html#cfn-mediastore-container-containername
mscContainerName :: Lens' MediaStoreContainer (Val Text)
mscContainerName = lens _mediaStoreContainerContainerName (\s a -> s { _mediaStoreContainerContainerName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediastore-container.html#cfn-mediastore-container-corspolicy
mscCorsPolicy :: Lens' MediaStoreContainer (Maybe [MediaStoreContainerCorsRule])
mscCorsPolicy = lens _mediaStoreContainerCorsPolicy (\s a -> s { _mediaStoreContainerCorsPolicy = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediastore-container.html#cfn-mediastore-container-lifecyclepolicy
mscLifecyclePolicy :: Lens' MediaStoreContainer (Maybe (Val Text))
mscLifecyclePolicy = lens _mediaStoreContainerLifecyclePolicy (\s a -> s { _mediaStoreContainerLifecyclePolicy = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediastore-container.html#cfn-mediastore-container-metricpolicy
mscMetricPolicy :: Lens' MediaStoreContainer (Maybe MediaStoreContainerMetricPolicy)
mscMetricPolicy = lens _mediaStoreContainerMetricPolicy (\s a -> s { _mediaStoreContainerMetricPolicy = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediastore-container.html#cfn-mediastore-container-policy
mscPolicy :: Lens' MediaStoreContainer (Maybe (Val Text))
mscPolicy = lens _mediaStoreContainerPolicy (\s a -> s { _mediaStoreContainerPolicy = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediastore-container.html#cfn-mediastore-container-tags
mscTags :: Lens' MediaStoreContainer (Maybe [Tag])
mscTags = lens _mediaStoreContainerTags (\s a -> s { _mediaStoreContainerTags = a })
