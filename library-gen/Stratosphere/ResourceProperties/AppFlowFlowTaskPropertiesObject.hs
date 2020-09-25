{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-taskpropertiesobject.html

module Stratosphere.ResourceProperties.AppFlowFlowTaskPropertiesObject where

import Stratosphere.ResourceImports


-- | Full data type definition for AppFlowFlowTaskPropertiesObject. See
-- 'appFlowFlowTaskPropertiesObject' for a more convenient constructor.
data AppFlowFlowTaskPropertiesObject =
  AppFlowFlowTaskPropertiesObject
  { _appFlowFlowTaskPropertiesObjectKey :: Val Text
  , _appFlowFlowTaskPropertiesObjectValue :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppFlowFlowTaskPropertiesObject where
  toJSON AppFlowFlowTaskPropertiesObject{..} =
    object $
    catMaybes
    [ (Just . ("Key",) . toJSON) _appFlowFlowTaskPropertiesObjectKey
    , (Just . ("Value",) . toJSON) _appFlowFlowTaskPropertiesObjectValue
    ]

-- | Constructor for 'AppFlowFlowTaskPropertiesObject' containing required
-- fields as arguments.
appFlowFlowTaskPropertiesObject
  :: Val Text -- ^ 'afftpoKey'
  -> Val Text -- ^ 'afftpoValue'
  -> AppFlowFlowTaskPropertiesObject
appFlowFlowTaskPropertiesObject keyarg valuearg =
  AppFlowFlowTaskPropertiesObject
  { _appFlowFlowTaskPropertiesObjectKey = keyarg
  , _appFlowFlowTaskPropertiesObjectValue = valuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-taskpropertiesobject.html#cfn-appflow-flow-taskpropertiesobject-key
afftpoKey :: Lens' AppFlowFlowTaskPropertiesObject (Val Text)
afftpoKey = lens _appFlowFlowTaskPropertiesObjectKey (\s a -> s { _appFlowFlowTaskPropertiesObjectKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-taskpropertiesobject.html#cfn-appflow-flow-taskpropertiesobject-value
afftpoValue :: Lens' AppFlowFlowTaskPropertiesObject (Val Text)
afftpoValue = lens _appFlowFlowTaskPropertiesObjectValue (\s a -> s { _appFlowFlowTaskPropertiesObjectValue = a })
