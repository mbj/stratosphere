{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-functiondefinition.html

module Stratosphere.Resources.GreengrassFunctionDefinition where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GreengrassFunctionDefinitionFunctionDefinitionVersion

-- | Full data type definition for GreengrassFunctionDefinition. See
-- 'greengrassFunctionDefinition' for a more convenient constructor.
data GreengrassFunctionDefinition =
  GreengrassFunctionDefinition
  { _greengrassFunctionDefinitionInitialVersion :: Maybe GreengrassFunctionDefinitionFunctionDefinitionVersion
  , _greengrassFunctionDefinitionName :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties GreengrassFunctionDefinition where
  toResourceProperties GreengrassFunctionDefinition{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Greengrass::FunctionDefinition"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
        [ fmap (("InitialVersion",) . toJSON) _greengrassFunctionDefinitionInitialVersion
        , (Just . ("Name",) . toJSON) _greengrassFunctionDefinitionName
        ]
    }

-- | Constructor for 'GreengrassFunctionDefinition' containing required fields
-- as arguments.
greengrassFunctionDefinition
  :: Val Text -- ^ 'gfdName'
  -> GreengrassFunctionDefinition
greengrassFunctionDefinition namearg =
  GreengrassFunctionDefinition
  { _greengrassFunctionDefinitionInitialVersion = Nothing
  , _greengrassFunctionDefinitionName = namearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-functiondefinition.html#cfn-greengrass-functiondefinition-initialversion
gfdInitialVersion :: Lens' GreengrassFunctionDefinition (Maybe GreengrassFunctionDefinitionFunctionDefinitionVersion)
gfdInitialVersion = lens _greengrassFunctionDefinitionInitialVersion (\s a -> s { _greengrassFunctionDefinitionInitialVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-functiondefinition.html#cfn-greengrass-functiondefinition-name
gfdName :: Lens' GreengrassFunctionDefinition (Val Text)
gfdName = lens _greengrassFunctionDefinitionName (\s a -> s { _greengrassFunctionDefinitionName = a })
