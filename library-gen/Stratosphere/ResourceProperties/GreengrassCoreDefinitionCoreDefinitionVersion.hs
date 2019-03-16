{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-coredefinition-coredefinitionversion.html

module Stratosphere.ResourceProperties.GreengrassCoreDefinitionCoreDefinitionVersion where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GreengrassCoreDefinitionCore

-- | Full data type definition for
-- GreengrassCoreDefinitionCoreDefinitionVersion. See
-- 'greengrassCoreDefinitionCoreDefinitionVersion' for a more convenient
-- constructor.
data GreengrassCoreDefinitionCoreDefinitionVersion =
  GreengrassCoreDefinitionCoreDefinitionVersion
  { _greengrassCoreDefinitionCoreDefinitionVersionCores :: [GreengrassCoreDefinitionCore]
  } deriving (Show, Eq)

instance ToJSON GreengrassCoreDefinitionCoreDefinitionVersion where
  toJSON GreengrassCoreDefinitionCoreDefinitionVersion{..} =
    object $
    catMaybes
    [ (Just . ("Cores",) . toJSON) _greengrassCoreDefinitionCoreDefinitionVersionCores
    ]

-- | Constructor for 'GreengrassCoreDefinitionCoreDefinitionVersion'
-- containing required fields as arguments.
greengrassCoreDefinitionCoreDefinitionVersion
  :: [GreengrassCoreDefinitionCore] -- ^ 'gcdcdvCores'
  -> GreengrassCoreDefinitionCoreDefinitionVersion
greengrassCoreDefinitionCoreDefinitionVersion coresarg =
  GreengrassCoreDefinitionCoreDefinitionVersion
  { _greengrassCoreDefinitionCoreDefinitionVersionCores = coresarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-coredefinition-coredefinitionversion.html#cfn-greengrass-coredefinition-coredefinitionversion-cores
gcdcdvCores :: Lens' GreengrassCoreDefinitionCoreDefinitionVersion [GreengrassCoreDefinitionCore]
gcdcdvCores = lens _greengrassCoreDefinitionCoreDefinitionVersionCores (\s a -> s { _greengrassCoreDefinitionCoreDefinitionVersionCores = a })
