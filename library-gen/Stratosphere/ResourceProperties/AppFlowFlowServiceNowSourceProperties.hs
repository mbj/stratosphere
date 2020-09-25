{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-servicenowsourceproperties.html

module Stratosphere.ResourceProperties.AppFlowFlowServiceNowSourceProperties where

import Stratosphere.ResourceImports


-- | Full data type definition for AppFlowFlowServiceNowSourceProperties. See
-- 'appFlowFlowServiceNowSourceProperties' for a more convenient
-- constructor.
data AppFlowFlowServiceNowSourceProperties =
  AppFlowFlowServiceNowSourceProperties
  { _appFlowFlowServiceNowSourcePropertiesObject :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppFlowFlowServiceNowSourceProperties where
  toJSON AppFlowFlowServiceNowSourceProperties{..} =
    object $
    catMaybes
    [ (Just . ("Object",) . toJSON) _appFlowFlowServiceNowSourcePropertiesObject
    ]

-- | Constructor for 'AppFlowFlowServiceNowSourceProperties' containing
-- required fields as arguments.
appFlowFlowServiceNowSourceProperties
  :: Val Text -- ^ 'affsnspObject'
  -> AppFlowFlowServiceNowSourceProperties
appFlowFlowServiceNowSourceProperties objectarg =
  AppFlowFlowServiceNowSourceProperties
  { _appFlowFlowServiceNowSourcePropertiesObject = objectarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-servicenowsourceproperties.html#cfn-appflow-flow-servicenowsourceproperties-object
affsnspObject :: Lens' AppFlowFlowServiceNowSourceProperties (Val Text)
affsnspObject = lens _appFlowFlowServiceNowSourcePropertiesObject (\s a -> s { _appFlowFlowServiceNowSourcePropertiesObject = a })
