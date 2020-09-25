{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-amplitudesourceproperties.html

module Stratosphere.ResourceProperties.AppFlowFlowAmplitudeSourceProperties where

import Stratosphere.ResourceImports


-- | Full data type definition for AppFlowFlowAmplitudeSourceProperties. See
-- 'appFlowFlowAmplitudeSourceProperties' for a more convenient constructor.
data AppFlowFlowAmplitudeSourceProperties =
  AppFlowFlowAmplitudeSourceProperties
  { _appFlowFlowAmplitudeSourcePropertiesObject :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppFlowFlowAmplitudeSourceProperties where
  toJSON AppFlowFlowAmplitudeSourceProperties{..} =
    object $
    catMaybes
    [ (Just . ("Object",) . toJSON) _appFlowFlowAmplitudeSourcePropertiesObject
    ]

-- | Constructor for 'AppFlowFlowAmplitudeSourceProperties' containing
-- required fields as arguments.
appFlowFlowAmplitudeSourceProperties
  :: Val Text -- ^ 'affaspObject'
  -> AppFlowFlowAmplitudeSourceProperties
appFlowFlowAmplitudeSourceProperties objectarg =
  AppFlowFlowAmplitudeSourceProperties
  { _appFlowFlowAmplitudeSourcePropertiesObject = objectarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-amplitudesourceproperties.html#cfn-appflow-flow-amplitudesourceproperties-object
affaspObject :: Lens' AppFlowFlowAmplitudeSourceProperties (Val Text)
affaspObject = lens _appFlowFlowAmplitudeSourcePropertiesObject (\s a -> s { _appFlowFlowAmplitudeSourcePropertiesObject = a })
