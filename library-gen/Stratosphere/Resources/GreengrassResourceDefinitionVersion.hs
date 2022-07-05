{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-resourcedefinitionversion.html

module Stratosphere.Resources.GreengrassResourceDefinitionVersion where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GreengrassResourceDefinitionVersionResourceInstance

-- | Full data type definition for GreengrassResourceDefinitionVersion. See
-- 'greengrassResourceDefinitionVersion' for a more convenient constructor.
data GreengrassResourceDefinitionVersion =
  GreengrassResourceDefinitionVersion
  { _greengrassResourceDefinitionVersionResourceDefinitionId :: Val Text
  , _greengrassResourceDefinitionVersionResources :: [GreengrassResourceDefinitionVersionResourceInstance]
  } deriving (Show, Eq)

instance ToResourceProperties GreengrassResourceDefinitionVersion where
  toResourceProperties GreengrassResourceDefinitionVersion{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Greengrass::ResourceDefinitionVersion"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("ResourceDefinitionId",) . toJSON) _greengrassResourceDefinitionVersionResourceDefinitionId
        , (Just . ("Resources",) . toJSON) _greengrassResourceDefinitionVersionResources
        ]
    }

-- | Constructor for 'GreengrassResourceDefinitionVersion' containing required
-- fields as arguments.
greengrassResourceDefinitionVersion
  :: Val Text -- ^ 'grdvResourceDefinitionId'
  -> [GreengrassResourceDefinitionVersionResourceInstance] -- ^ 'grdvResources'
  -> GreengrassResourceDefinitionVersion
greengrassResourceDefinitionVersion resourceDefinitionIdarg resourcesarg =
  GreengrassResourceDefinitionVersion
  { _greengrassResourceDefinitionVersionResourceDefinitionId = resourceDefinitionIdarg
  , _greengrassResourceDefinitionVersionResources = resourcesarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-resourcedefinitionversion.html#cfn-greengrass-resourcedefinitionversion-resourcedefinitionid
grdvResourceDefinitionId :: Lens' GreengrassResourceDefinitionVersion (Val Text)
grdvResourceDefinitionId = lens _greengrassResourceDefinitionVersionResourceDefinitionId (\s a -> s { _greengrassResourceDefinitionVersionResourceDefinitionId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-resourcedefinitionversion.html#cfn-greengrass-resourcedefinitionversion-resources
grdvResources :: Lens' GreengrassResourceDefinitionVersion [GreengrassResourceDefinitionVersionResourceInstance]
grdvResources = lens _greengrassResourceDefinitionVersionResources (\s a -> s { _greengrassResourceDefinitionVersionResources = a })
