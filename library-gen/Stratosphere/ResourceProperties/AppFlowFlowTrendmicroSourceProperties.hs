{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-trendmicrosourceproperties.html

module Stratosphere.ResourceProperties.AppFlowFlowTrendmicroSourceProperties where

import Stratosphere.ResourceImports


-- | Full data type definition for AppFlowFlowTrendmicroSourceProperties. See
-- 'appFlowFlowTrendmicroSourceProperties' for a more convenient
-- constructor.
data AppFlowFlowTrendmicroSourceProperties =
  AppFlowFlowTrendmicroSourceProperties
  { _appFlowFlowTrendmicroSourcePropertiesObject :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppFlowFlowTrendmicroSourceProperties where
  toJSON AppFlowFlowTrendmicroSourceProperties{..} =
    object $
    catMaybes
    [ (Just . ("Object",) . toJSON) _appFlowFlowTrendmicroSourcePropertiesObject
    ]

-- | Constructor for 'AppFlowFlowTrendmicroSourceProperties' containing
-- required fields as arguments.
appFlowFlowTrendmicroSourceProperties
  :: Val Text -- ^ 'afftspObject'
  -> AppFlowFlowTrendmicroSourceProperties
appFlowFlowTrendmicroSourceProperties objectarg =
  AppFlowFlowTrendmicroSourceProperties
  { _appFlowFlowTrendmicroSourcePropertiesObject = objectarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-trendmicrosourceproperties.html#cfn-appflow-flow-trendmicrosourceproperties-object
afftspObject :: Lens' AppFlowFlowTrendmicroSourceProperties (Val Text)
afftspObject = lens _appFlowFlowTrendmicroSourcePropertiesObject (\s a -> s { _appFlowFlowTrendmicroSourcePropertiesObject = a })
