
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourcedefinitionversion.html

module Stratosphere.ResourceProperties.GreengrassResourceDefinitionResourceDefinitionVersion where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GreengrassResourceDefinitionResourceInstance

-- | Full data type definition for
-- GreengrassResourceDefinitionResourceDefinitionVersion. See
-- 'greengrassResourceDefinitionResourceDefinitionVersion' for a more
-- convenient constructor.
data GreengrassResourceDefinitionResourceDefinitionVersion =
  GreengrassResourceDefinitionResourceDefinitionVersion
  { _greengrassResourceDefinitionResourceDefinitionVersionResources :: [GreengrassResourceDefinitionResourceInstance]
  } deriving (Show, Eq)

instance ToJSON GreengrassResourceDefinitionResourceDefinitionVersion where
  toJSON GreengrassResourceDefinitionResourceDefinitionVersion{..} =
    object $
    catMaybes
    [ (Just . ("Resources",) . toJSON) _greengrassResourceDefinitionResourceDefinitionVersionResources
    ]

-- | Constructor for 'GreengrassResourceDefinitionResourceDefinitionVersion'
-- containing required fields as arguments.
greengrassResourceDefinitionResourceDefinitionVersion
  :: [GreengrassResourceDefinitionResourceInstance] -- ^ 'grdrdvResources'
  -> GreengrassResourceDefinitionResourceDefinitionVersion
greengrassResourceDefinitionResourceDefinitionVersion resourcesarg =
  GreengrassResourceDefinitionResourceDefinitionVersion
  { _greengrassResourceDefinitionResourceDefinitionVersionResources = resourcesarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourcedefinitionversion.html#cfn-greengrass-resourcedefinition-resourcedefinitionversion-resources
grdrdvResources :: Lens' GreengrassResourceDefinitionResourceDefinitionVersion [GreengrassResourceDefinitionResourceInstance]
grdrdvResources = lens _greengrassResourceDefinitionResourceDefinitionVersionResources (\s a -> s { _greengrassResourceDefinitionResourceDefinitionVersionResources = a })
