{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediastore-container-metricpolicy.html

module Stratosphere.ResourceProperties.MediaStoreContainerMetricPolicy where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MediaStoreContainerMetricPolicyRule

-- | Full data type definition for MediaStoreContainerMetricPolicy. See
-- 'mediaStoreContainerMetricPolicy' for a more convenient constructor.
data MediaStoreContainerMetricPolicy =
  MediaStoreContainerMetricPolicy
  { _mediaStoreContainerMetricPolicyContainerLevelMetrics :: Val Text
  , _mediaStoreContainerMetricPolicyMetricPolicyRules :: Maybe [MediaStoreContainerMetricPolicyRule]
  } deriving (Show, Eq)

instance ToJSON MediaStoreContainerMetricPolicy where
  toJSON MediaStoreContainerMetricPolicy{..} =
    object $
    catMaybes
    [ (Just . ("ContainerLevelMetrics",) . toJSON) _mediaStoreContainerMetricPolicyContainerLevelMetrics
    , fmap (("MetricPolicyRules",) . toJSON) _mediaStoreContainerMetricPolicyMetricPolicyRules
    ]

-- | Constructor for 'MediaStoreContainerMetricPolicy' containing required
-- fields as arguments.
mediaStoreContainerMetricPolicy
  :: Val Text -- ^ 'mscmpContainerLevelMetrics'
  -> MediaStoreContainerMetricPolicy
mediaStoreContainerMetricPolicy containerLevelMetricsarg =
  MediaStoreContainerMetricPolicy
  { _mediaStoreContainerMetricPolicyContainerLevelMetrics = containerLevelMetricsarg
  , _mediaStoreContainerMetricPolicyMetricPolicyRules = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediastore-container-metricpolicy.html#cfn-mediastore-container-metricpolicy-containerlevelmetrics
mscmpContainerLevelMetrics :: Lens' MediaStoreContainerMetricPolicy (Val Text)
mscmpContainerLevelMetrics = lens _mediaStoreContainerMetricPolicyContainerLevelMetrics (\s a -> s { _mediaStoreContainerMetricPolicyContainerLevelMetrics = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediastore-container-metricpolicy.html#cfn-mediastore-container-metricpolicy-metricpolicyrules
mscmpMetricPolicyRules :: Lens' MediaStoreContainerMetricPolicy (Maybe [MediaStoreContainerMetricPolicyRule])
mscmpMetricPolicyRules = lens _mediaStoreContainerMetricPolicyMetricPolicyRules (\s a -> s { _mediaStoreContainerMetricPolicyMetricPolicyRules = a })
