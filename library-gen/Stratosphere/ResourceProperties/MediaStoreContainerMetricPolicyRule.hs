
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediastore-container-metricpolicyrule.html

module Stratosphere.ResourceProperties.MediaStoreContainerMetricPolicyRule where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for MediaStoreContainerMetricPolicyRule. See
-- 'mediaStoreContainerMetricPolicyRule' for a more convenient constructor.
data MediaStoreContainerMetricPolicyRule =
  MediaStoreContainerMetricPolicyRule
  { _mediaStoreContainerMetricPolicyRuleObjectGroup :: Val Text
  , _mediaStoreContainerMetricPolicyRuleObjectGroupName :: Val Text
  } deriving (Show, Eq)

instance ToJSON MediaStoreContainerMetricPolicyRule where
  toJSON MediaStoreContainerMetricPolicyRule{..} =
    object $
    catMaybes
    [ (Just . ("ObjectGroup",) . toJSON) _mediaStoreContainerMetricPolicyRuleObjectGroup
    , (Just . ("ObjectGroupName",) . toJSON) _mediaStoreContainerMetricPolicyRuleObjectGroupName
    ]

-- | Constructor for 'MediaStoreContainerMetricPolicyRule' containing required
-- fields as arguments.
mediaStoreContainerMetricPolicyRule
  :: Val Text -- ^ 'mscmprObjectGroup'
  -> Val Text -- ^ 'mscmprObjectGroupName'
  -> MediaStoreContainerMetricPolicyRule
mediaStoreContainerMetricPolicyRule objectGrouparg objectGroupNamearg =
  MediaStoreContainerMetricPolicyRule
  { _mediaStoreContainerMetricPolicyRuleObjectGroup = objectGrouparg
  , _mediaStoreContainerMetricPolicyRuleObjectGroupName = objectGroupNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediastore-container-metricpolicyrule.html#cfn-mediastore-container-metricpolicyrule-objectgroup
mscmprObjectGroup :: Lens' MediaStoreContainerMetricPolicyRule (Val Text)
mscmprObjectGroup = lens _mediaStoreContainerMetricPolicyRuleObjectGroup (\s a -> s { _mediaStoreContainerMetricPolicyRuleObjectGroup = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediastore-container-metricpolicyrule.html#cfn-mediastore-container-metricpolicyrule-objectgroupname
mscmprObjectGroupName :: Lens' MediaStoreContainerMetricPolicyRule (Val Text)
mscmprObjectGroupName = lens _mediaStoreContainerMetricPolicyRuleObjectGroupName (\s a -> s { _mediaStoreContainerMetricPolicyRuleObjectGroupName = a })
