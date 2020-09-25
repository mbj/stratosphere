{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-zendesksourceproperties.html

module Stratosphere.ResourceProperties.AppFlowFlowZendeskSourceProperties where

import Stratosphere.ResourceImports


-- | Full data type definition for AppFlowFlowZendeskSourceProperties. See
-- 'appFlowFlowZendeskSourceProperties' for a more convenient constructor.
data AppFlowFlowZendeskSourceProperties =
  AppFlowFlowZendeskSourceProperties
  { _appFlowFlowZendeskSourcePropertiesObject :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppFlowFlowZendeskSourceProperties where
  toJSON AppFlowFlowZendeskSourceProperties{..} =
    object $
    catMaybes
    [ (Just . ("Object",) . toJSON) _appFlowFlowZendeskSourcePropertiesObject
    ]

-- | Constructor for 'AppFlowFlowZendeskSourceProperties' containing required
-- fields as arguments.
appFlowFlowZendeskSourceProperties
  :: Val Text -- ^ 'affzspObject'
  -> AppFlowFlowZendeskSourceProperties
appFlowFlowZendeskSourceProperties objectarg =
  AppFlowFlowZendeskSourceProperties
  { _appFlowFlowZendeskSourcePropertiesObject = objectarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-zendesksourceproperties.html#cfn-appflow-flow-zendesksourceproperties-object
affzspObject :: Lens' AppFlowFlowZendeskSourceProperties (Val Text)
affzspObject = lens _appFlowFlowZendeskSourcePropertiesObject (\s a -> s { _appFlowFlowZendeskSourcePropertiesObject = a })
