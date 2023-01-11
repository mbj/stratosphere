
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-functionconfiguration.html

module Stratosphere.ResourceProperties.GreengrassFunctionDefinitionVersionFunctionConfiguration where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GreengrassFunctionDefinitionVersionEnvironment

-- | Full data type definition for
-- GreengrassFunctionDefinitionVersionFunctionConfiguration. See
-- 'greengrassFunctionDefinitionVersionFunctionConfiguration' for a more
-- convenient constructor.
data GreengrassFunctionDefinitionVersionFunctionConfiguration =
  GreengrassFunctionDefinitionVersionFunctionConfiguration
  { _greengrassFunctionDefinitionVersionFunctionConfigurationEncodingType :: Maybe (Val Text)
  , _greengrassFunctionDefinitionVersionFunctionConfigurationEnvironment :: Maybe GreengrassFunctionDefinitionVersionEnvironment
  , _greengrassFunctionDefinitionVersionFunctionConfigurationExecArgs :: Maybe (Val Text)
  , _greengrassFunctionDefinitionVersionFunctionConfigurationExecutable :: Maybe (Val Text)
  , _greengrassFunctionDefinitionVersionFunctionConfigurationMemorySize :: Maybe (Val Integer)
  , _greengrassFunctionDefinitionVersionFunctionConfigurationPinned :: Maybe (Val Bool)
  , _greengrassFunctionDefinitionVersionFunctionConfigurationTimeout :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON GreengrassFunctionDefinitionVersionFunctionConfiguration where
  toJSON GreengrassFunctionDefinitionVersionFunctionConfiguration{..} =
    object $
    catMaybes
    [ fmap (("EncodingType",) . toJSON) _greengrassFunctionDefinitionVersionFunctionConfigurationEncodingType
    , fmap (("Environment",) . toJSON) _greengrassFunctionDefinitionVersionFunctionConfigurationEnvironment
    , fmap (("ExecArgs",) . toJSON) _greengrassFunctionDefinitionVersionFunctionConfigurationExecArgs
    , fmap (("Executable",) . toJSON) _greengrassFunctionDefinitionVersionFunctionConfigurationExecutable
    , fmap (("MemorySize",) . toJSON) _greengrassFunctionDefinitionVersionFunctionConfigurationMemorySize
    , fmap (("Pinned",) . toJSON) _greengrassFunctionDefinitionVersionFunctionConfigurationPinned
    , fmap (("Timeout",) . toJSON) _greengrassFunctionDefinitionVersionFunctionConfigurationTimeout
    ]

-- | Constructor for
-- 'GreengrassFunctionDefinitionVersionFunctionConfiguration' containing
-- required fields as arguments.
greengrassFunctionDefinitionVersionFunctionConfiguration
  :: GreengrassFunctionDefinitionVersionFunctionConfiguration
greengrassFunctionDefinitionVersionFunctionConfiguration  =
  GreengrassFunctionDefinitionVersionFunctionConfiguration
  { _greengrassFunctionDefinitionVersionFunctionConfigurationEncodingType = Nothing
  , _greengrassFunctionDefinitionVersionFunctionConfigurationEnvironment = Nothing
  , _greengrassFunctionDefinitionVersionFunctionConfigurationExecArgs = Nothing
  , _greengrassFunctionDefinitionVersionFunctionConfigurationExecutable = Nothing
  , _greengrassFunctionDefinitionVersionFunctionConfigurationMemorySize = Nothing
  , _greengrassFunctionDefinitionVersionFunctionConfigurationPinned = Nothing
  , _greengrassFunctionDefinitionVersionFunctionConfigurationTimeout = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-functionconfiguration.html#cfn-greengrass-functiondefinitionversion-functionconfiguration-encodingtype
gfdvfcEncodingType :: Lens' GreengrassFunctionDefinitionVersionFunctionConfiguration (Maybe (Val Text))
gfdvfcEncodingType = lens _greengrassFunctionDefinitionVersionFunctionConfigurationEncodingType (\s a -> s { _greengrassFunctionDefinitionVersionFunctionConfigurationEncodingType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-functionconfiguration.html#cfn-greengrass-functiondefinitionversion-functionconfiguration-environment
gfdvfcEnvironment :: Lens' GreengrassFunctionDefinitionVersionFunctionConfiguration (Maybe GreengrassFunctionDefinitionVersionEnvironment)
gfdvfcEnvironment = lens _greengrassFunctionDefinitionVersionFunctionConfigurationEnvironment (\s a -> s { _greengrassFunctionDefinitionVersionFunctionConfigurationEnvironment = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-functionconfiguration.html#cfn-greengrass-functiondefinitionversion-functionconfiguration-execargs
gfdvfcExecArgs :: Lens' GreengrassFunctionDefinitionVersionFunctionConfiguration (Maybe (Val Text))
gfdvfcExecArgs = lens _greengrassFunctionDefinitionVersionFunctionConfigurationExecArgs (\s a -> s { _greengrassFunctionDefinitionVersionFunctionConfigurationExecArgs = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-functionconfiguration.html#cfn-greengrass-functiondefinitionversion-functionconfiguration-executable
gfdvfcExecutable :: Lens' GreengrassFunctionDefinitionVersionFunctionConfiguration (Maybe (Val Text))
gfdvfcExecutable = lens _greengrassFunctionDefinitionVersionFunctionConfigurationExecutable (\s a -> s { _greengrassFunctionDefinitionVersionFunctionConfigurationExecutable = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-functionconfiguration.html#cfn-greengrass-functiondefinitionversion-functionconfiguration-memorysize
gfdvfcMemorySize :: Lens' GreengrassFunctionDefinitionVersionFunctionConfiguration (Maybe (Val Integer))
gfdvfcMemorySize = lens _greengrassFunctionDefinitionVersionFunctionConfigurationMemorySize (\s a -> s { _greengrassFunctionDefinitionVersionFunctionConfigurationMemorySize = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-functionconfiguration.html#cfn-greengrass-functiondefinitionversion-functionconfiguration-pinned
gfdvfcPinned :: Lens' GreengrassFunctionDefinitionVersionFunctionConfiguration (Maybe (Val Bool))
gfdvfcPinned = lens _greengrassFunctionDefinitionVersionFunctionConfigurationPinned (\s a -> s { _greengrassFunctionDefinitionVersionFunctionConfigurationPinned = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-functionconfiguration.html#cfn-greengrass-functiondefinitionversion-functionconfiguration-timeout
gfdvfcTimeout :: Lens' GreengrassFunctionDefinitionVersionFunctionConfiguration (Maybe (Val Integer))
gfdvfcTimeout = lens _greengrassFunctionDefinitionVersionFunctionConfigurationTimeout (\s a -> s { _greengrassFunctionDefinitionVersionFunctionConfigurationTimeout = a })
