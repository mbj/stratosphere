
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-group-groupversion.html

module Stratosphere.ResourceProperties.GreengrassGroupGroupVersion where

import Stratosphere.ResourceImports


-- | Full data type definition for GreengrassGroupGroupVersion. See
-- 'greengrassGroupGroupVersion' for a more convenient constructor.
data GreengrassGroupGroupVersion =
  GreengrassGroupGroupVersion
  { _greengrassGroupGroupVersionConnectorDefinitionVersionArn :: Maybe (Val Text)
  , _greengrassGroupGroupVersionCoreDefinitionVersionArn :: Maybe (Val Text)
  , _greengrassGroupGroupVersionDeviceDefinitionVersionArn :: Maybe (Val Text)
  , _greengrassGroupGroupVersionFunctionDefinitionVersionArn :: Maybe (Val Text)
  , _greengrassGroupGroupVersionLoggerDefinitionVersionArn :: Maybe (Val Text)
  , _greengrassGroupGroupVersionResourceDefinitionVersionArn :: Maybe (Val Text)
  , _greengrassGroupGroupVersionSubscriptionDefinitionVersionArn :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON GreengrassGroupGroupVersion where
  toJSON GreengrassGroupGroupVersion{..} =
    object $
    catMaybes
    [ fmap (("ConnectorDefinitionVersionArn",) . toJSON) _greengrassGroupGroupVersionConnectorDefinitionVersionArn
    , fmap (("CoreDefinitionVersionArn",) . toJSON) _greengrassGroupGroupVersionCoreDefinitionVersionArn
    , fmap (("DeviceDefinitionVersionArn",) . toJSON) _greengrassGroupGroupVersionDeviceDefinitionVersionArn
    , fmap (("FunctionDefinitionVersionArn",) . toJSON) _greengrassGroupGroupVersionFunctionDefinitionVersionArn
    , fmap (("LoggerDefinitionVersionArn",) . toJSON) _greengrassGroupGroupVersionLoggerDefinitionVersionArn
    , fmap (("ResourceDefinitionVersionArn",) . toJSON) _greengrassGroupGroupVersionResourceDefinitionVersionArn
    , fmap (("SubscriptionDefinitionVersionArn",) . toJSON) _greengrassGroupGroupVersionSubscriptionDefinitionVersionArn
    ]

-- | Constructor for 'GreengrassGroupGroupVersion' containing required fields
-- as arguments.
greengrassGroupGroupVersion
  :: GreengrassGroupGroupVersion
greengrassGroupGroupVersion  =
  GreengrassGroupGroupVersion
  { _greengrassGroupGroupVersionConnectorDefinitionVersionArn = Nothing
  , _greengrassGroupGroupVersionCoreDefinitionVersionArn = Nothing
  , _greengrassGroupGroupVersionDeviceDefinitionVersionArn = Nothing
  , _greengrassGroupGroupVersionFunctionDefinitionVersionArn = Nothing
  , _greengrassGroupGroupVersionLoggerDefinitionVersionArn = Nothing
  , _greengrassGroupGroupVersionResourceDefinitionVersionArn = Nothing
  , _greengrassGroupGroupVersionSubscriptionDefinitionVersionArn = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-group-groupversion.html#cfn-greengrass-group-groupversion-connectordefinitionversionarn
gggvConnectorDefinitionVersionArn :: Lens' GreengrassGroupGroupVersion (Maybe (Val Text))
gggvConnectorDefinitionVersionArn = lens _greengrassGroupGroupVersionConnectorDefinitionVersionArn (\s a -> s { _greengrassGroupGroupVersionConnectorDefinitionVersionArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-group-groupversion.html#cfn-greengrass-group-groupversion-coredefinitionversionarn
gggvCoreDefinitionVersionArn :: Lens' GreengrassGroupGroupVersion (Maybe (Val Text))
gggvCoreDefinitionVersionArn = lens _greengrassGroupGroupVersionCoreDefinitionVersionArn (\s a -> s { _greengrassGroupGroupVersionCoreDefinitionVersionArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-group-groupversion.html#cfn-greengrass-group-groupversion-devicedefinitionversionarn
gggvDeviceDefinitionVersionArn :: Lens' GreengrassGroupGroupVersion (Maybe (Val Text))
gggvDeviceDefinitionVersionArn = lens _greengrassGroupGroupVersionDeviceDefinitionVersionArn (\s a -> s { _greengrassGroupGroupVersionDeviceDefinitionVersionArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-group-groupversion.html#cfn-greengrass-group-groupversion-functiondefinitionversionarn
gggvFunctionDefinitionVersionArn :: Lens' GreengrassGroupGroupVersion (Maybe (Val Text))
gggvFunctionDefinitionVersionArn = lens _greengrassGroupGroupVersionFunctionDefinitionVersionArn (\s a -> s { _greengrassGroupGroupVersionFunctionDefinitionVersionArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-group-groupversion.html#cfn-greengrass-group-groupversion-loggerdefinitionversionarn
gggvLoggerDefinitionVersionArn :: Lens' GreengrassGroupGroupVersion (Maybe (Val Text))
gggvLoggerDefinitionVersionArn = lens _greengrassGroupGroupVersionLoggerDefinitionVersionArn (\s a -> s { _greengrassGroupGroupVersionLoggerDefinitionVersionArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-group-groupversion.html#cfn-greengrass-group-groupversion-resourcedefinitionversionarn
gggvResourceDefinitionVersionArn :: Lens' GreengrassGroupGroupVersion (Maybe (Val Text))
gggvResourceDefinitionVersionArn = lens _greengrassGroupGroupVersionResourceDefinitionVersionArn (\s a -> s { _greengrassGroupGroupVersionResourceDefinitionVersionArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-group-groupversion.html#cfn-greengrass-group-groupversion-subscriptiondefinitionversionarn
gggvSubscriptionDefinitionVersionArn :: Lens' GreengrassGroupGroupVersion (Maybe (Val Text))
gggvSubscriptionDefinitionVersionArn = lens _greengrassGroupGroupVersionSubscriptionDefinitionVersionArn (\s a -> s { _greengrassGroupGroupVersionSubscriptionDefinitionVersionArn = a })
