
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-putassetpropertyvalueentry.html

module Stratosphere.ResourceProperties.IoTTopicRulePutAssetPropertyValueEntry where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.IoTTopicRuleAssetPropertyValue

-- | Full data type definition for IoTTopicRulePutAssetPropertyValueEntry. See
-- 'ioTTopicRulePutAssetPropertyValueEntry' for a more convenient
-- constructor.
data IoTTopicRulePutAssetPropertyValueEntry =
  IoTTopicRulePutAssetPropertyValueEntry
  { _ioTTopicRulePutAssetPropertyValueEntryAssetId :: Maybe (Val Text)
  , _ioTTopicRulePutAssetPropertyValueEntryEntryId :: Maybe (Val Text)
  , _ioTTopicRulePutAssetPropertyValueEntryPropertyAlias :: Maybe (Val Text)
  , _ioTTopicRulePutAssetPropertyValueEntryPropertyId :: Maybe (Val Text)
  , _ioTTopicRulePutAssetPropertyValueEntryPropertyValues :: [IoTTopicRuleAssetPropertyValue]
  } deriving (Show, Eq)

instance ToJSON IoTTopicRulePutAssetPropertyValueEntry where
  toJSON IoTTopicRulePutAssetPropertyValueEntry{..} =
    object $
    catMaybes
    [ fmap (("AssetId",) . toJSON) _ioTTopicRulePutAssetPropertyValueEntryAssetId
    , fmap (("EntryId",) . toJSON) _ioTTopicRulePutAssetPropertyValueEntryEntryId
    , fmap (("PropertyAlias",) . toJSON) _ioTTopicRulePutAssetPropertyValueEntryPropertyAlias
    , fmap (("PropertyId",) . toJSON) _ioTTopicRulePutAssetPropertyValueEntryPropertyId
    , (Just . ("PropertyValues",) . toJSON) _ioTTopicRulePutAssetPropertyValueEntryPropertyValues
    ]

-- | Constructor for 'IoTTopicRulePutAssetPropertyValueEntry' containing
-- required fields as arguments.
ioTTopicRulePutAssetPropertyValueEntry
  :: [IoTTopicRuleAssetPropertyValue] -- ^ 'ittrpapvePropertyValues'
  -> IoTTopicRulePutAssetPropertyValueEntry
ioTTopicRulePutAssetPropertyValueEntry propertyValuesarg =
  IoTTopicRulePutAssetPropertyValueEntry
  { _ioTTopicRulePutAssetPropertyValueEntryAssetId = Nothing
  , _ioTTopicRulePutAssetPropertyValueEntryEntryId = Nothing
  , _ioTTopicRulePutAssetPropertyValueEntryPropertyAlias = Nothing
  , _ioTTopicRulePutAssetPropertyValueEntryPropertyId = Nothing
  , _ioTTopicRulePutAssetPropertyValueEntryPropertyValues = propertyValuesarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-putassetpropertyvalueentry.html#cfn-iot-topicrule-putassetpropertyvalueentry-assetid
ittrpapveAssetId :: Lens' IoTTopicRulePutAssetPropertyValueEntry (Maybe (Val Text))
ittrpapveAssetId = lens _ioTTopicRulePutAssetPropertyValueEntryAssetId (\s a -> s { _ioTTopicRulePutAssetPropertyValueEntryAssetId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-putassetpropertyvalueentry.html#cfn-iot-topicrule-putassetpropertyvalueentry-entryid
ittrpapveEntryId :: Lens' IoTTopicRulePutAssetPropertyValueEntry (Maybe (Val Text))
ittrpapveEntryId = lens _ioTTopicRulePutAssetPropertyValueEntryEntryId (\s a -> s { _ioTTopicRulePutAssetPropertyValueEntryEntryId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-putassetpropertyvalueentry.html#cfn-iot-topicrule-putassetpropertyvalueentry-propertyalias
ittrpapvePropertyAlias :: Lens' IoTTopicRulePutAssetPropertyValueEntry (Maybe (Val Text))
ittrpapvePropertyAlias = lens _ioTTopicRulePutAssetPropertyValueEntryPropertyAlias (\s a -> s { _ioTTopicRulePutAssetPropertyValueEntryPropertyAlias = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-putassetpropertyvalueentry.html#cfn-iot-topicrule-putassetpropertyvalueentry-propertyid
ittrpapvePropertyId :: Lens' IoTTopicRulePutAssetPropertyValueEntry (Maybe (Val Text))
ittrpapvePropertyId = lens _ioTTopicRulePutAssetPropertyValueEntryPropertyId (\s a -> s { _ioTTopicRulePutAssetPropertyValueEntryPropertyId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-putassetpropertyvalueentry.html#cfn-iot-topicrule-putassetpropertyvalueentry-propertyvalues
ittrpapvePropertyValues :: Lens' IoTTopicRulePutAssetPropertyValueEntry [IoTTopicRuleAssetPropertyValue]
ittrpapvePropertyValues = lens _ioTTopicRulePutAssetPropertyValueEntryPropertyValues (\s a -> s { _ioTTopicRulePutAssetPropertyValueEntryPropertyValues = a })
