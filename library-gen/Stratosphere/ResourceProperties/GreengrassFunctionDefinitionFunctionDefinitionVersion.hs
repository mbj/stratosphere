{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-functiondefinitionversion.html

module Stratosphere.ResourceProperties.GreengrassFunctionDefinitionFunctionDefinitionVersion where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GreengrassFunctionDefinitionDefaultConfig
import Stratosphere.ResourceProperties.GreengrassFunctionDefinitionFunction

-- | Full data type definition for
-- GreengrassFunctionDefinitionFunctionDefinitionVersion. See
-- 'greengrassFunctionDefinitionFunctionDefinitionVersion' for a more
-- convenient constructor.
data GreengrassFunctionDefinitionFunctionDefinitionVersion =
  GreengrassFunctionDefinitionFunctionDefinitionVersion
  { _greengrassFunctionDefinitionFunctionDefinitionVersionDefaultConfig :: Maybe GreengrassFunctionDefinitionDefaultConfig
  , _greengrassFunctionDefinitionFunctionDefinitionVersionFunctions :: [GreengrassFunctionDefinitionFunction]
  } deriving (Show, Eq)

instance ToJSON GreengrassFunctionDefinitionFunctionDefinitionVersion where
  toJSON GreengrassFunctionDefinitionFunctionDefinitionVersion{..} =
    object $
    catMaybes
    [ fmap (("DefaultConfig",) . toJSON) _greengrassFunctionDefinitionFunctionDefinitionVersionDefaultConfig
    , (Just . ("Functions",) . toJSON) _greengrassFunctionDefinitionFunctionDefinitionVersionFunctions
    ]

-- | Constructor for 'GreengrassFunctionDefinitionFunctionDefinitionVersion'
-- containing required fields as arguments.
greengrassFunctionDefinitionFunctionDefinitionVersion
  :: [GreengrassFunctionDefinitionFunction] -- ^ 'gfdfdvFunctions'
  -> GreengrassFunctionDefinitionFunctionDefinitionVersion
greengrassFunctionDefinitionFunctionDefinitionVersion functionsarg =
  GreengrassFunctionDefinitionFunctionDefinitionVersion
  { _greengrassFunctionDefinitionFunctionDefinitionVersionDefaultConfig = Nothing
  , _greengrassFunctionDefinitionFunctionDefinitionVersionFunctions = functionsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-functiondefinitionversion.html#cfn-greengrass-functiondefinition-functiondefinitionversion-defaultconfig
gfdfdvDefaultConfig :: Lens' GreengrassFunctionDefinitionFunctionDefinitionVersion (Maybe GreengrassFunctionDefinitionDefaultConfig)
gfdfdvDefaultConfig = lens _greengrassFunctionDefinitionFunctionDefinitionVersionDefaultConfig (\s a -> s { _greengrassFunctionDefinitionFunctionDefinitionVersionDefaultConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-functiondefinitionversion.html#cfn-greengrass-functiondefinition-functiondefinitionversion-functions
gfdfdvFunctions :: Lens' GreengrassFunctionDefinitionFunctionDefinitionVersion [GreengrassFunctionDefinitionFunction]
gfdfdvFunctions = lens _greengrassFunctionDefinitionFunctionDefinitionVersionFunctions (\s a -> s { _greengrassFunctionDefinitionFunctionDefinitionVersionFunctions = a })
