{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-marketosourceproperties.html

module Stratosphere.ResourceProperties.AppFlowFlowMarketoSourceProperties where

import Stratosphere.ResourceImports


-- | Full data type definition for AppFlowFlowMarketoSourceProperties. See
-- 'appFlowFlowMarketoSourceProperties' for a more convenient constructor.
data AppFlowFlowMarketoSourceProperties =
  AppFlowFlowMarketoSourceProperties
  { _appFlowFlowMarketoSourcePropertiesObject :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppFlowFlowMarketoSourceProperties where
  toJSON AppFlowFlowMarketoSourceProperties{..} =
    object $
    catMaybes
    [ (Just . ("Object",) . toJSON) _appFlowFlowMarketoSourcePropertiesObject
    ]

-- | Constructor for 'AppFlowFlowMarketoSourceProperties' containing required
-- fields as arguments.
appFlowFlowMarketoSourceProperties
  :: Val Text -- ^ 'affmspObject'
  -> AppFlowFlowMarketoSourceProperties
appFlowFlowMarketoSourceProperties objectarg =
  AppFlowFlowMarketoSourceProperties
  { _appFlowFlowMarketoSourcePropertiesObject = objectarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-marketosourceproperties.html#cfn-appflow-flow-marketosourceproperties-object
affmspObject :: Lens' AppFlowFlowMarketoSourceProperties (Val Text)
affmspObject = lens _appFlowFlowMarketoSourcePropertiesObject (\s a -> s { _appFlowFlowMarketoSourcePropertiesObject = a })
