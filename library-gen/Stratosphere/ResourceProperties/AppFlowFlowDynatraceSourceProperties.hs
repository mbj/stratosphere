{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-dynatracesourceproperties.html

module Stratosphere.ResourceProperties.AppFlowFlowDynatraceSourceProperties where

import Stratosphere.ResourceImports


-- | Full data type definition for AppFlowFlowDynatraceSourceProperties. See
-- 'appFlowFlowDynatraceSourceProperties' for a more convenient constructor.
data AppFlowFlowDynatraceSourceProperties =
  AppFlowFlowDynatraceSourceProperties
  { _appFlowFlowDynatraceSourcePropertiesObject :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppFlowFlowDynatraceSourceProperties where
  toJSON AppFlowFlowDynatraceSourceProperties{..} =
    object $
    catMaybes
    [ (Just . ("Object",) . toJSON) _appFlowFlowDynatraceSourcePropertiesObject
    ]

-- | Constructor for 'AppFlowFlowDynatraceSourceProperties' containing
-- required fields as arguments.
appFlowFlowDynatraceSourceProperties
  :: Val Text -- ^ 'affdspObject'
  -> AppFlowFlowDynatraceSourceProperties
appFlowFlowDynatraceSourceProperties objectarg =
  AppFlowFlowDynatraceSourceProperties
  { _appFlowFlowDynatraceSourcePropertiesObject = objectarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-dynatracesourceproperties.html#cfn-appflow-flow-dynatracesourceproperties-object
affdspObject :: Lens' AppFlowFlowDynatraceSourceProperties (Val Text)
affdspObject = lens _appFlowFlowDynatraceSourcePropertiesObject (\s a -> s { _appFlowFlowDynatraceSourcePropertiesObject = a })
