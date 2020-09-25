{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-slacksourceproperties.html

module Stratosphere.ResourceProperties.AppFlowFlowSlackSourceProperties where

import Stratosphere.ResourceImports


-- | Full data type definition for AppFlowFlowSlackSourceProperties. See
-- 'appFlowFlowSlackSourceProperties' for a more convenient constructor.
data AppFlowFlowSlackSourceProperties =
  AppFlowFlowSlackSourceProperties
  { _appFlowFlowSlackSourcePropertiesObject :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppFlowFlowSlackSourceProperties where
  toJSON AppFlowFlowSlackSourceProperties{..} =
    object $
    catMaybes
    [ (Just . ("Object",) . toJSON) _appFlowFlowSlackSourcePropertiesObject
    ]

-- | Constructor for 'AppFlowFlowSlackSourceProperties' containing required
-- fields as arguments.
appFlowFlowSlackSourceProperties
  :: Val Text -- ^ 'affsspObject'
  -> AppFlowFlowSlackSourceProperties
appFlowFlowSlackSourceProperties objectarg =
  AppFlowFlowSlackSourceProperties
  { _appFlowFlowSlackSourcePropertiesObject = objectarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-slacksourceproperties.html#cfn-appflow-flow-slacksourceproperties-object
affsspObject :: Lens' AppFlowFlowSlackSourceProperties (Val Text)
affsspObject = lens _appFlowFlowSlackSourcePropertiesObject (\s a -> s { _appFlowFlowSlackSourcePropertiesObject = a })
