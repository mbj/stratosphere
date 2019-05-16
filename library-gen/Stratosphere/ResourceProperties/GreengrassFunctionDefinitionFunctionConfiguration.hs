{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-functionconfiguration.html

module Stratosphere.ResourceProperties.GreengrassFunctionDefinitionFunctionConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GreengrassFunctionDefinitionEnvironment

-- | Full data type definition for
-- GreengrassFunctionDefinitionFunctionConfiguration. See
-- 'greengrassFunctionDefinitionFunctionConfiguration' for a more convenient
-- constructor.
data GreengrassFunctionDefinitionFunctionConfiguration =
  GreengrassFunctionDefinitionFunctionConfiguration
  { _greengrassFunctionDefinitionFunctionConfigurationEncodingType :: Maybe (Val Text)
  , _greengrassFunctionDefinitionFunctionConfigurationEnvironment :: Maybe GreengrassFunctionDefinitionEnvironment
  , _greengrassFunctionDefinitionFunctionConfigurationExecArgs :: Maybe (Val Text)
  , _greengrassFunctionDefinitionFunctionConfigurationExecutable :: Maybe (Val Text)
  , _greengrassFunctionDefinitionFunctionConfigurationMemorySize :: Maybe (Val Integer)
  , _greengrassFunctionDefinitionFunctionConfigurationPinned :: Maybe (Val Bool)
  , _greengrassFunctionDefinitionFunctionConfigurationTimeout :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON GreengrassFunctionDefinitionFunctionConfiguration where
  toJSON GreengrassFunctionDefinitionFunctionConfiguration{..} =
    object $
    catMaybes
    [ fmap (("EncodingType",) . toJSON) _greengrassFunctionDefinitionFunctionConfigurationEncodingType
    , fmap (("Environment",) . toJSON) _greengrassFunctionDefinitionFunctionConfigurationEnvironment
    , fmap (("ExecArgs",) . toJSON) _greengrassFunctionDefinitionFunctionConfigurationExecArgs
    , fmap (("Executable",) . toJSON) _greengrassFunctionDefinitionFunctionConfigurationExecutable
    , fmap (("MemorySize",) . toJSON) _greengrassFunctionDefinitionFunctionConfigurationMemorySize
    , fmap (("Pinned",) . toJSON) _greengrassFunctionDefinitionFunctionConfigurationPinned
    , fmap (("Timeout",) . toJSON) _greengrassFunctionDefinitionFunctionConfigurationTimeout
    ]

-- | Constructor for 'GreengrassFunctionDefinitionFunctionConfiguration'
-- containing required fields as arguments.
greengrassFunctionDefinitionFunctionConfiguration
  :: GreengrassFunctionDefinitionFunctionConfiguration
greengrassFunctionDefinitionFunctionConfiguration  =
  GreengrassFunctionDefinitionFunctionConfiguration
  { _greengrassFunctionDefinitionFunctionConfigurationEncodingType = Nothing
  , _greengrassFunctionDefinitionFunctionConfigurationEnvironment = Nothing
  , _greengrassFunctionDefinitionFunctionConfigurationExecArgs = Nothing
  , _greengrassFunctionDefinitionFunctionConfigurationExecutable = Nothing
  , _greengrassFunctionDefinitionFunctionConfigurationMemorySize = Nothing
  , _greengrassFunctionDefinitionFunctionConfigurationPinned = Nothing
  , _greengrassFunctionDefinitionFunctionConfigurationTimeout = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-functionconfiguration.html#cfn-greengrass-functiondefinition-functionconfiguration-encodingtype
gfdfcEncodingType :: Lens' GreengrassFunctionDefinitionFunctionConfiguration (Maybe (Val Text))
gfdfcEncodingType = lens _greengrassFunctionDefinitionFunctionConfigurationEncodingType (\s a -> s { _greengrassFunctionDefinitionFunctionConfigurationEncodingType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-functionconfiguration.html#cfn-greengrass-functiondefinition-functionconfiguration-environment
gfdfcEnvironment :: Lens' GreengrassFunctionDefinitionFunctionConfiguration (Maybe GreengrassFunctionDefinitionEnvironment)
gfdfcEnvironment = lens _greengrassFunctionDefinitionFunctionConfigurationEnvironment (\s a -> s { _greengrassFunctionDefinitionFunctionConfigurationEnvironment = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-functionconfiguration.html#cfn-greengrass-functiondefinition-functionconfiguration-execargs
gfdfcExecArgs :: Lens' GreengrassFunctionDefinitionFunctionConfiguration (Maybe (Val Text))
gfdfcExecArgs = lens _greengrassFunctionDefinitionFunctionConfigurationExecArgs (\s a -> s { _greengrassFunctionDefinitionFunctionConfigurationExecArgs = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-functionconfiguration.html#cfn-greengrass-functiondefinition-functionconfiguration-executable
gfdfcExecutable :: Lens' GreengrassFunctionDefinitionFunctionConfiguration (Maybe (Val Text))
gfdfcExecutable = lens _greengrassFunctionDefinitionFunctionConfigurationExecutable (\s a -> s { _greengrassFunctionDefinitionFunctionConfigurationExecutable = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-functionconfiguration.html#cfn-greengrass-functiondefinition-functionconfiguration-memorysize
gfdfcMemorySize :: Lens' GreengrassFunctionDefinitionFunctionConfiguration (Maybe (Val Integer))
gfdfcMemorySize = lens _greengrassFunctionDefinitionFunctionConfigurationMemorySize (\s a -> s { _greengrassFunctionDefinitionFunctionConfigurationMemorySize = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-functionconfiguration.html#cfn-greengrass-functiondefinition-functionconfiguration-pinned
gfdfcPinned :: Lens' GreengrassFunctionDefinitionFunctionConfiguration (Maybe (Val Bool))
gfdfcPinned = lens _greengrassFunctionDefinitionFunctionConfigurationPinned (\s a -> s { _greengrassFunctionDefinitionFunctionConfigurationPinned = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-functionconfiguration.html#cfn-greengrass-functiondefinition-functionconfiguration-timeout
gfdfcTimeout :: Lens' GreengrassFunctionDefinitionFunctionConfiguration (Maybe (Val Integer))
gfdfcTimeout = lens _greengrassFunctionDefinitionFunctionConfigurationTimeout (\s a -> s { _greengrassFunctionDefinitionFunctionConfigurationTimeout = a })
