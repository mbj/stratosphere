{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-singularsourceproperties.html

module Stratosphere.ResourceProperties.AppFlowFlowSingularSourceProperties where

import Stratosphere.ResourceImports


-- | Full data type definition for AppFlowFlowSingularSourceProperties. See
-- 'appFlowFlowSingularSourceProperties' for a more convenient constructor.
data AppFlowFlowSingularSourceProperties =
  AppFlowFlowSingularSourceProperties
  { _appFlowFlowSingularSourcePropertiesObject :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppFlowFlowSingularSourceProperties where
  toJSON AppFlowFlowSingularSourceProperties{..} =
    object $
    catMaybes
    [ (Just . ("Object",) . toJSON) _appFlowFlowSingularSourcePropertiesObject
    ]

-- | Constructor for 'AppFlowFlowSingularSourceProperties' containing required
-- fields as arguments.
appFlowFlowSingularSourceProperties
  :: Val Text -- ^ 'affsspObject'
  -> AppFlowFlowSingularSourceProperties
appFlowFlowSingularSourceProperties objectarg =
  AppFlowFlowSingularSourceProperties
  { _appFlowFlowSingularSourcePropertiesObject = objectarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-singularsourceproperties.html#cfn-appflow-flow-singularsourceproperties-object
affsspObject :: Lens' AppFlowFlowSingularSourceProperties (Val Text)
affsspObject = lens _appFlowFlowSingularSourcePropertiesObject (\s a -> s { _appFlowFlowSingularSourcePropertiesObject = a })
