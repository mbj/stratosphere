{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-functiondefinitionversion.html

module Stratosphere.Resources.GreengrassFunctionDefinitionVersion where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GreengrassFunctionDefinitionVersionDefaultConfig
import Stratosphere.ResourceProperties.GreengrassFunctionDefinitionVersionFunction

-- | Full data type definition for GreengrassFunctionDefinitionVersion. See
-- 'greengrassFunctionDefinitionVersion' for a more convenient constructor.
data GreengrassFunctionDefinitionVersion =
  GreengrassFunctionDefinitionVersion
  { _greengrassFunctionDefinitionVersionDefaultConfig :: Maybe GreengrassFunctionDefinitionVersionDefaultConfig
  , _greengrassFunctionDefinitionVersionFunctionDefinitionId :: Val Text
  , _greengrassFunctionDefinitionVersionFunctions :: [GreengrassFunctionDefinitionVersionFunction]
  } deriving (Show, Eq)

instance ToResourceProperties GreengrassFunctionDefinitionVersion where
  toResourceProperties GreengrassFunctionDefinitionVersion{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Greengrass::FunctionDefinitionVersion"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("DefaultConfig",) . toJSON) _greengrassFunctionDefinitionVersionDefaultConfig
        , (Just . ("FunctionDefinitionId",) . toJSON) _greengrassFunctionDefinitionVersionFunctionDefinitionId
        , (Just . ("Functions",) . toJSON) _greengrassFunctionDefinitionVersionFunctions
        ]
    }

-- | Constructor for 'GreengrassFunctionDefinitionVersion' containing required
-- fields as arguments.
greengrassFunctionDefinitionVersion
  :: Val Text -- ^ 'gfdvFunctionDefinitionId'
  -> [GreengrassFunctionDefinitionVersionFunction] -- ^ 'gfdvFunctions'
  -> GreengrassFunctionDefinitionVersion
greengrassFunctionDefinitionVersion functionDefinitionIdarg functionsarg =
  GreengrassFunctionDefinitionVersion
  { _greengrassFunctionDefinitionVersionDefaultConfig = Nothing
  , _greengrassFunctionDefinitionVersionFunctionDefinitionId = functionDefinitionIdarg
  , _greengrassFunctionDefinitionVersionFunctions = functionsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-functiondefinitionversion.html#cfn-greengrass-functiondefinitionversion-defaultconfig
gfdvDefaultConfig :: Lens' GreengrassFunctionDefinitionVersion (Maybe GreengrassFunctionDefinitionVersionDefaultConfig)
gfdvDefaultConfig = lens _greengrassFunctionDefinitionVersionDefaultConfig (\s a -> s { _greengrassFunctionDefinitionVersionDefaultConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-functiondefinitionversion.html#cfn-greengrass-functiondefinitionversion-functiondefinitionid
gfdvFunctionDefinitionId :: Lens' GreengrassFunctionDefinitionVersion (Val Text)
gfdvFunctionDefinitionId = lens _greengrassFunctionDefinitionVersionFunctionDefinitionId (\s a -> s { _greengrassFunctionDefinitionVersionFunctionDefinitionId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-functiondefinitionversion.html#cfn-greengrass-functiondefinitionversion-functions
gfdvFunctions :: Lens' GreengrassFunctionDefinitionVersion [GreengrassFunctionDefinitionVersionFunction]
gfdvFunctions = lens _greengrassFunctionDefinitionVersionFunctions (\s a -> s { _greengrassFunctionDefinitionVersionFunctions = a })
