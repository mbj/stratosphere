{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-groupversion.html

module Stratosphere.Resources.GreengrassGroupVersion where

import Stratosphere.ResourceImports


-- | Full data type definition for GreengrassGroupVersion. See
-- 'greengrassGroupVersion' for a more convenient constructor.
data GreengrassGroupVersion =
  GreengrassGroupVersion
  { _greengrassGroupVersionConnectorDefinitionVersionArn :: Maybe (Val Text)
  , _greengrassGroupVersionCoreDefinitionVersionArn :: Maybe (Val Text)
  , _greengrassGroupVersionDeviceDefinitionVersionArn :: Maybe (Val Text)
  , _greengrassGroupVersionFunctionDefinitionVersionArn :: Maybe (Val Text)
  , _greengrassGroupVersionGroupId :: Val Text
  , _greengrassGroupVersionLoggerDefinitionVersionArn :: Maybe (Val Text)
  , _greengrassGroupVersionResourceDefinitionVersionArn :: Maybe (Val Text)
  , _greengrassGroupVersionSubscriptionDefinitionVersionArn :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties GreengrassGroupVersion where
  toResourceProperties GreengrassGroupVersion{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Greengrass::GroupVersion"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("ConnectorDefinitionVersionArn",) . toJSON) _greengrassGroupVersionConnectorDefinitionVersionArn
        , fmap (("CoreDefinitionVersionArn",) . toJSON) _greengrassGroupVersionCoreDefinitionVersionArn
        , fmap (("DeviceDefinitionVersionArn",) . toJSON) _greengrassGroupVersionDeviceDefinitionVersionArn
        , fmap (("FunctionDefinitionVersionArn",) . toJSON) _greengrassGroupVersionFunctionDefinitionVersionArn
        , (Just . ("GroupId",) . toJSON) _greengrassGroupVersionGroupId
        , fmap (("LoggerDefinitionVersionArn",) . toJSON) _greengrassGroupVersionLoggerDefinitionVersionArn
        , fmap (("ResourceDefinitionVersionArn",) . toJSON) _greengrassGroupVersionResourceDefinitionVersionArn
        , fmap (("SubscriptionDefinitionVersionArn",) . toJSON) _greengrassGroupVersionSubscriptionDefinitionVersionArn
        ]
    }

-- | Constructor for 'GreengrassGroupVersion' containing required fields as
-- arguments.
greengrassGroupVersion
  :: Val Text -- ^ 'ggvGroupId'
  -> GreengrassGroupVersion
greengrassGroupVersion groupIdarg =
  GreengrassGroupVersion
  { _greengrassGroupVersionConnectorDefinitionVersionArn = Nothing
  , _greengrassGroupVersionCoreDefinitionVersionArn = Nothing
  , _greengrassGroupVersionDeviceDefinitionVersionArn = Nothing
  , _greengrassGroupVersionFunctionDefinitionVersionArn = Nothing
  , _greengrassGroupVersionGroupId = groupIdarg
  , _greengrassGroupVersionLoggerDefinitionVersionArn = Nothing
  , _greengrassGroupVersionResourceDefinitionVersionArn = Nothing
  , _greengrassGroupVersionSubscriptionDefinitionVersionArn = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-groupversion.html#cfn-greengrass-groupversion-connectordefinitionversionarn
ggvConnectorDefinitionVersionArn :: Lens' GreengrassGroupVersion (Maybe (Val Text))
ggvConnectorDefinitionVersionArn = lens _greengrassGroupVersionConnectorDefinitionVersionArn (\s a -> s { _greengrassGroupVersionConnectorDefinitionVersionArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-groupversion.html#cfn-greengrass-groupversion-coredefinitionversionarn
ggvCoreDefinitionVersionArn :: Lens' GreengrassGroupVersion (Maybe (Val Text))
ggvCoreDefinitionVersionArn = lens _greengrassGroupVersionCoreDefinitionVersionArn (\s a -> s { _greengrassGroupVersionCoreDefinitionVersionArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-groupversion.html#cfn-greengrass-groupversion-devicedefinitionversionarn
ggvDeviceDefinitionVersionArn :: Lens' GreengrassGroupVersion (Maybe (Val Text))
ggvDeviceDefinitionVersionArn = lens _greengrassGroupVersionDeviceDefinitionVersionArn (\s a -> s { _greengrassGroupVersionDeviceDefinitionVersionArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-groupversion.html#cfn-greengrass-groupversion-functiondefinitionversionarn
ggvFunctionDefinitionVersionArn :: Lens' GreengrassGroupVersion (Maybe (Val Text))
ggvFunctionDefinitionVersionArn = lens _greengrassGroupVersionFunctionDefinitionVersionArn (\s a -> s { _greengrassGroupVersionFunctionDefinitionVersionArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-groupversion.html#cfn-greengrass-groupversion-groupid
ggvGroupId :: Lens' GreengrassGroupVersion (Val Text)
ggvGroupId = lens _greengrassGroupVersionGroupId (\s a -> s { _greengrassGroupVersionGroupId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-groupversion.html#cfn-greengrass-groupversion-loggerdefinitionversionarn
ggvLoggerDefinitionVersionArn :: Lens' GreengrassGroupVersion (Maybe (Val Text))
ggvLoggerDefinitionVersionArn = lens _greengrassGroupVersionLoggerDefinitionVersionArn (\s a -> s { _greengrassGroupVersionLoggerDefinitionVersionArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-groupversion.html#cfn-greengrass-groupversion-resourcedefinitionversionarn
ggvResourceDefinitionVersionArn :: Lens' GreengrassGroupVersion (Maybe (Val Text))
ggvResourceDefinitionVersionArn = lens _greengrassGroupVersionResourceDefinitionVersionArn (\s a -> s { _greengrassGroupVersionResourceDefinitionVersionArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-groupversion.html#cfn-greengrass-groupversion-subscriptiondefinitionversionarn
ggvSubscriptionDefinitionVersionArn :: Lens' GreengrassGroupVersion (Maybe (Val Text))
ggvSubscriptionDefinitionVersionArn = lens _greengrassGroupVersionSubscriptionDefinitionVersionArn (\s a -> s { _greengrassGroupVersionSubscriptionDefinitionVersionArn = a })
