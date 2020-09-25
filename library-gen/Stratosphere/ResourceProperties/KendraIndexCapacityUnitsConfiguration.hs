{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-index-capacityunitsconfiguration.html

module Stratosphere.ResourceProperties.KendraIndexCapacityUnitsConfiguration where

import Stratosphere.ResourceImports


-- | Full data type definition for KendraIndexCapacityUnitsConfiguration. See
-- 'kendraIndexCapacityUnitsConfiguration' for a more convenient
-- constructor.
data KendraIndexCapacityUnitsConfiguration =
  KendraIndexCapacityUnitsConfiguration
  { _kendraIndexCapacityUnitsConfigurationQueryCapacityUnits :: Val Integer
  , _kendraIndexCapacityUnitsConfigurationStorageCapacityUnits :: Val Integer
  } deriving (Show, Eq)

instance ToJSON KendraIndexCapacityUnitsConfiguration where
  toJSON KendraIndexCapacityUnitsConfiguration{..} =
    object $
    catMaybes
    [ (Just . ("QueryCapacityUnits",) . toJSON) _kendraIndexCapacityUnitsConfigurationQueryCapacityUnits
    , (Just . ("StorageCapacityUnits",) . toJSON) _kendraIndexCapacityUnitsConfigurationStorageCapacityUnits
    ]

-- | Constructor for 'KendraIndexCapacityUnitsConfiguration' containing
-- required fields as arguments.
kendraIndexCapacityUnitsConfiguration
  :: Val Integer -- ^ 'kicucQueryCapacityUnits'
  -> Val Integer -- ^ 'kicucStorageCapacityUnits'
  -> KendraIndexCapacityUnitsConfiguration
kendraIndexCapacityUnitsConfiguration queryCapacityUnitsarg storageCapacityUnitsarg =
  KendraIndexCapacityUnitsConfiguration
  { _kendraIndexCapacityUnitsConfigurationQueryCapacityUnits = queryCapacityUnitsarg
  , _kendraIndexCapacityUnitsConfigurationStorageCapacityUnits = storageCapacityUnitsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-index-capacityunitsconfiguration.html#cfn-kendra-index-capacityunitsconfiguration-querycapacityunits
kicucQueryCapacityUnits :: Lens' KendraIndexCapacityUnitsConfiguration (Val Integer)
kicucQueryCapacityUnits = lens _kendraIndexCapacityUnitsConfigurationQueryCapacityUnits (\s a -> s { _kendraIndexCapacityUnitsConfigurationQueryCapacityUnits = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-index-capacityunitsconfiguration.html#cfn-kendra-index-capacityunitsconfiguration-storagecapacityunits
kicucStorageCapacityUnits :: Lens' KendraIndexCapacityUnitsConfiguration (Val Integer)
kicucStorageCapacityUnits = lens _kendraIndexCapacityUnitsConfigurationStorageCapacityUnits (\s a -> s { _kendraIndexCapacityUnitsConfigurationStorageCapacityUnits = a })
