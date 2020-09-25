{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-infornexussourceproperties.html

module Stratosphere.ResourceProperties.AppFlowFlowInforNexusSourceProperties where

import Stratosphere.ResourceImports


-- | Full data type definition for AppFlowFlowInforNexusSourceProperties. See
-- 'appFlowFlowInforNexusSourceProperties' for a more convenient
-- constructor.
data AppFlowFlowInforNexusSourceProperties =
  AppFlowFlowInforNexusSourceProperties
  { _appFlowFlowInforNexusSourcePropertiesObject :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppFlowFlowInforNexusSourceProperties where
  toJSON AppFlowFlowInforNexusSourceProperties{..} =
    object $
    catMaybes
    [ (Just . ("Object",) . toJSON) _appFlowFlowInforNexusSourcePropertiesObject
    ]

-- | Constructor for 'AppFlowFlowInforNexusSourceProperties' containing
-- required fields as arguments.
appFlowFlowInforNexusSourceProperties
  :: Val Text -- ^ 'affinspObject'
  -> AppFlowFlowInforNexusSourceProperties
appFlowFlowInforNexusSourceProperties objectarg =
  AppFlowFlowInforNexusSourceProperties
  { _appFlowFlowInforNexusSourcePropertiesObject = objectarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-infornexussourceproperties.html#cfn-appflow-flow-infornexussourceproperties-object
affinspObject :: Lens' AppFlowFlowInforNexusSourceProperties (Val Text)
affinspObject = lens _appFlowFlowInforNexusSourcePropertiesObject (\s a -> s { _appFlowFlowInforNexusSourcePropertiesObject = a })
