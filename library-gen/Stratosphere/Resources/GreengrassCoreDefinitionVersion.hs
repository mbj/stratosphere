{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-coredefinitionversion.html

module Stratosphere.Resources.GreengrassCoreDefinitionVersion where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GreengrassCoreDefinitionVersionCore

-- | Full data type definition for GreengrassCoreDefinitionVersion. See
-- 'greengrassCoreDefinitionVersion' for a more convenient constructor.
data GreengrassCoreDefinitionVersion =
  GreengrassCoreDefinitionVersion
  { _greengrassCoreDefinitionVersionCoreDefinitionId :: Val Text
  , _greengrassCoreDefinitionVersionCores :: [GreengrassCoreDefinitionVersionCore]
  } deriving (Show, Eq)

instance ToResourceProperties GreengrassCoreDefinitionVersion where
  toResourceProperties GreengrassCoreDefinitionVersion{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Greengrass::CoreDefinitionVersion"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("CoreDefinitionId",) . toJSON) _greengrassCoreDefinitionVersionCoreDefinitionId
        , (Just . ("Cores",) . toJSON) _greengrassCoreDefinitionVersionCores
        ]
    }

-- | Constructor for 'GreengrassCoreDefinitionVersion' containing required
-- fields as arguments.
greengrassCoreDefinitionVersion
  :: Val Text -- ^ 'gcdvCoreDefinitionId'
  -> [GreengrassCoreDefinitionVersionCore] -- ^ 'gcdvCores'
  -> GreengrassCoreDefinitionVersion
greengrassCoreDefinitionVersion coreDefinitionIdarg coresarg =
  GreengrassCoreDefinitionVersion
  { _greengrassCoreDefinitionVersionCoreDefinitionId = coreDefinitionIdarg
  , _greengrassCoreDefinitionVersionCores = coresarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-coredefinitionversion.html#cfn-greengrass-coredefinitionversion-coredefinitionid
gcdvCoreDefinitionId :: Lens' GreengrassCoreDefinitionVersion (Val Text)
gcdvCoreDefinitionId = lens _greengrassCoreDefinitionVersionCoreDefinitionId (\s a -> s { _greengrassCoreDefinitionVersionCoreDefinitionId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-coredefinitionversion.html#cfn-greengrass-coredefinitionversion-cores
gcdvCores :: Lens' GreengrassCoreDefinitionVersion [GreengrassCoreDefinitionVersionCore]
gcdvCores = lens _greengrassCoreDefinitionVersionCores (\s a -> s { _greengrassCoreDefinitionVersionCores = a })
