{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-veevasourceproperties.html

module Stratosphere.ResourceProperties.AppFlowFlowVeevaSourceProperties where

import Stratosphere.ResourceImports


-- | Full data type definition for AppFlowFlowVeevaSourceProperties. See
-- 'appFlowFlowVeevaSourceProperties' for a more convenient constructor.
data AppFlowFlowVeevaSourceProperties =
  AppFlowFlowVeevaSourceProperties
  { _appFlowFlowVeevaSourcePropertiesObject :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppFlowFlowVeevaSourceProperties where
  toJSON AppFlowFlowVeevaSourceProperties{..} =
    object $
    catMaybes
    [ (Just . ("Object",) . toJSON) _appFlowFlowVeevaSourcePropertiesObject
    ]

-- | Constructor for 'AppFlowFlowVeevaSourceProperties' containing required
-- fields as arguments.
appFlowFlowVeevaSourceProperties
  :: Val Text -- ^ 'affvspObject'
  -> AppFlowFlowVeevaSourceProperties
appFlowFlowVeevaSourceProperties objectarg =
  AppFlowFlowVeevaSourceProperties
  { _appFlowFlowVeevaSourcePropertiesObject = objectarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-veevasourceproperties.html#cfn-appflow-flow-veevasourceproperties-object
affvspObject :: Lens' AppFlowFlowVeevaSourceProperties (Val Text)
affvspObject = lens _appFlowFlowVeevaSourcePropertiesObject (\s a -> s { _appFlowFlowVeevaSourcePropertiesObject = a })
