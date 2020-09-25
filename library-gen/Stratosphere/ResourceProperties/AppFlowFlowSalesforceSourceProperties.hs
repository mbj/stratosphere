{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-salesforcesourceproperties.html

module Stratosphere.ResourceProperties.AppFlowFlowSalesforceSourceProperties where

import Stratosphere.ResourceImports


-- | Full data type definition for AppFlowFlowSalesforceSourceProperties. See
-- 'appFlowFlowSalesforceSourceProperties' for a more convenient
-- constructor.
data AppFlowFlowSalesforceSourceProperties =
  AppFlowFlowSalesforceSourceProperties
  { _appFlowFlowSalesforceSourcePropertiesEnableDynamicFieldUpdate :: Maybe (Val Bool)
  , _appFlowFlowSalesforceSourcePropertiesIncludeDeletedRecords :: Maybe (Val Bool)
  , _appFlowFlowSalesforceSourcePropertiesObject :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppFlowFlowSalesforceSourceProperties where
  toJSON AppFlowFlowSalesforceSourceProperties{..} =
    object $
    catMaybes
    [ fmap (("EnableDynamicFieldUpdate",) . toJSON) _appFlowFlowSalesforceSourcePropertiesEnableDynamicFieldUpdate
    , fmap (("IncludeDeletedRecords",) . toJSON) _appFlowFlowSalesforceSourcePropertiesIncludeDeletedRecords
    , (Just . ("Object",) . toJSON) _appFlowFlowSalesforceSourcePropertiesObject
    ]

-- | Constructor for 'AppFlowFlowSalesforceSourceProperties' containing
-- required fields as arguments.
appFlowFlowSalesforceSourceProperties
  :: Val Text -- ^ 'affsspObject'
  -> AppFlowFlowSalesforceSourceProperties
appFlowFlowSalesforceSourceProperties objectarg =
  AppFlowFlowSalesforceSourceProperties
  { _appFlowFlowSalesforceSourcePropertiesEnableDynamicFieldUpdate = Nothing
  , _appFlowFlowSalesforceSourcePropertiesIncludeDeletedRecords = Nothing
  , _appFlowFlowSalesforceSourcePropertiesObject = objectarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-salesforcesourceproperties.html#cfn-appflow-flow-salesforcesourceproperties-enabledynamicfieldupdate
affsspEnableDynamicFieldUpdate :: Lens' AppFlowFlowSalesforceSourceProperties (Maybe (Val Bool))
affsspEnableDynamicFieldUpdate = lens _appFlowFlowSalesforceSourcePropertiesEnableDynamicFieldUpdate (\s a -> s { _appFlowFlowSalesforceSourcePropertiesEnableDynamicFieldUpdate = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-salesforcesourceproperties.html#cfn-appflow-flow-salesforcesourceproperties-includedeletedrecords
affsspIncludeDeletedRecords :: Lens' AppFlowFlowSalesforceSourceProperties (Maybe (Val Bool))
affsspIncludeDeletedRecords = lens _appFlowFlowSalesforceSourcePropertiesIncludeDeletedRecords (\s a -> s { _appFlowFlowSalesforceSourcePropertiesIncludeDeletedRecords = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-salesforcesourceproperties.html#cfn-appflow-flow-salesforcesourceproperties-object
affsspObject :: Lens' AppFlowFlowSalesforceSourceProperties (Val Text)
affsspObject = lens _appFlowFlowSalesforceSourcePropertiesObject (\s a -> s { _appFlowFlowSalesforceSourcePropertiesObject = a })
