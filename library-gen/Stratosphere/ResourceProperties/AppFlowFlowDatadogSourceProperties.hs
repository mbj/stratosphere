{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-datadogsourceproperties.html

module Stratosphere.ResourceProperties.AppFlowFlowDatadogSourceProperties where

import Stratosphere.ResourceImports


-- | Full data type definition for AppFlowFlowDatadogSourceProperties. See
-- 'appFlowFlowDatadogSourceProperties' for a more convenient constructor.
data AppFlowFlowDatadogSourceProperties =
  AppFlowFlowDatadogSourceProperties
  { _appFlowFlowDatadogSourcePropertiesObject :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppFlowFlowDatadogSourceProperties where
  toJSON AppFlowFlowDatadogSourceProperties{..} =
    object $
    catMaybes
    [ (Just . ("Object",) . toJSON) _appFlowFlowDatadogSourcePropertiesObject
    ]

-- | Constructor for 'AppFlowFlowDatadogSourceProperties' containing required
-- fields as arguments.
appFlowFlowDatadogSourceProperties
  :: Val Text -- ^ 'affdspObject'
  -> AppFlowFlowDatadogSourceProperties
appFlowFlowDatadogSourceProperties objectarg =
  AppFlowFlowDatadogSourceProperties
  { _appFlowFlowDatadogSourcePropertiesObject = objectarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-datadogsourceproperties.html#cfn-appflow-flow-datadogsourceproperties-object
affdspObject :: Lens' AppFlowFlowDatadogSourceProperties (Val Text)
affdspObject = lens _appFlowFlowDatadogSourcePropertiesObject (\s a -> s { _appFlowFlowDatadogSourcePropertiesObject = a })
