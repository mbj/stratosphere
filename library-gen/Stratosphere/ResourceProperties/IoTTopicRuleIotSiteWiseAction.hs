
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-iotsitewiseaction.html

module Stratosphere.ResourceProperties.IoTTopicRuleIotSiteWiseAction where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.IoTTopicRulePutAssetPropertyValueEntry

-- | Full data type definition for IoTTopicRuleIotSiteWiseAction. See
-- 'ioTTopicRuleIotSiteWiseAction' for a more convenient constructor.
data IoTTopicRuleIotSiteWiseAction =
  IoTTopicRuleIotSiteWiseAction
  { _ioTTopicRuleIotSiteWiseActionPutAssetPropertyValueEntries :: [IoTTopicRulePutAssetPropertyValueEntry]
  , _ioTTopicRuleIotSiteWiseActionRoleArn :: Val Text
  } deriving (Show, Eq)

instance ToJSON IoTTopicRuleIotSiteWiseAction where
  toJSON IoTTopicRuleIotSiteWiseAction{..} =
    object $
    catMaybes
    [ (Just . ("PutAssetPropertyValueEntries",) . toJSON) _ioTTopicRuleIotSiteWiseActionPutAssetPropertyValueEntries
    , (Just . ("RoleArn",) . toJSON) _ioTTopicRuleIotSiteWiseActionRoleArn
    ]

-- | Constructor for 'IoTTopicRuleIotSiteWiseAction' containing required
-- fields as arguments.
ioTTopicRuleIotSiteWiseAction
  :: [IoTTopicRulePutAssetPropertyValueEntry] -- ^ 'ittriswaPutAssetPropertyValueEntries'
  -> Val Text -- ^ 'ittriswaRoleArn'
  -> IoTTopicRuleIotSiteWiseAction
ioTTopicRuleIotSiteWiseAction putAssetPropertyValueEntriesarg roleArnarg =
  IoTTopicRuleIotSiteWiseAction
  { _ioTTopicRuleIotSiteWiseActionPutAssetPropertyValueEntries = putAssetPropertyValueEntriesarg
  , _ioTTopicRuleIotSiteWiseActionRoleArn = roleArnarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-iotsitewiseaction.html#cfn-iot-topicrule-iotsitewiseaction-putassetpropertyvalueentries
ittriswaPutAssetPropertyValueEntries :: Lens' IoTTopicRuleIotSiteWiseAction [IoTTopicRulePutAssetPropertyValueEntry]
ittriswaPutAssetPropertyValueEntries = lens _ioTTopicRuleIotSiteWiseActionPutAssetPropertyValueEntries (\s a -> s { _ioTTopicRuleIotSiteWiseActionPutAssetPropertyValueEntries = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-iotsitewiseaction.html#cfn-iot-topicrule-iotsitewiseaction-rolearn
ittriswaRoleArn :: Lens' IoTTopicRuleIotSiteWiseAction (Val Text)
ittriswaRoleArn = lens _ioTTopicRuleIotSiteWiseActionRoleArn (\s a -> s { _ioTTopicRuleIotSiteWiseActionRoleArn = a })
