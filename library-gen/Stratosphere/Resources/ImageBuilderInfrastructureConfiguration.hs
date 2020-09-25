{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-infrastructureconfiguration.html

module Stratosphere.Resources.ImageBuilderInfrastructureConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ImageBuilderInfrastructureConfigurationLogging

-- | Full data type definition for ImageBuilderInfrastructureConfiguration.
-- See 'imageBuilderInfrastructureConfiguration' for a more convenient
-- constructor.
data ImageBuilderInfrastructureConfiguration =
  ImageBuilderInfrastructureConfiguration
  { _imageBuilderInfrastructureConfigurationDescription :: Maybe (Val Text)
  , _imageBuilderInfrastructureConfigurationInstanceProfileName :: Val Text
  , _imageBuilderInfrastructureConfigurationInstanceTypes :: Maybe (ValList Text)
  , _imageBuilderInfrastructureConfigurationKeyPair :: Maybe (Val Text)
  , _imageBuilderInfrastructureConfigurationLogging :: Maybe ImageBuilderInfrastructureConfigurationLogging
  , _imageBuilderInfrastructureConfigurationName :: Val Text
  , _imageBuilderInfrastructureConfigurationResourceTags :: Maybe Object
  , _imageBuilderInfrastructureConfigurationSecurityGroupIds :: Maybe (ValList Text)
  , _imageBuilderInfrastructureConfigurationSnsTopicArn :: Maybe (Val Text)
  , _imageBuilderInfrastructureConfigurationSubnetId :: Maybe (Val Text)
  , _imageBuilderInfrastructureConfigurationTags :: Maybe Object
  , _imageBuilderInfrastructureConfigurationTerminateInstanceOnFailure :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToResourceProperties ImageBuilderInfrastructureConfiguration where
  toResourceProperties ImageBuilderInfrastructureConfiguration{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ImageBuilder::InfrastructureConfiguration"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
        [ fmap (("Description",) . toJSON) _imageBuilderInfrastructureConfigurationDescription
        , (Just . ("InstanceProfileName",) . toJSON) _imageBuilderInfrastructureConfigurationInstanceProfileName
        , fmap (("InstanceTypes",) . toJSON) _imageBuilderInfrastructureConfigurationInstanceTypes
        , fmap (("KeyPair",) . toJSON) _imageBuilderInfrastructureConfigurationKeyPair
        , fmap (("Logging",) . toJSON) _imageBuilderInfrastructureConfigurationLogging
        , (Just . ("Name",) . toJSON) _imageBuilderInfrastructureConfigurationName
        , fmap (("ResourceTags",) . toJSON) _imageBuilderInfrastructureConfigurationResourceTags
        , fmap (("SecurityGroupIds",) . toJSON) _imageBuilderInfrastructureConfigurationSecurityGroupIds
        , fmap (("SnsTopicArn",) . toJSON) _imageBuilderInfrastructureConfigurationSnsTopicArn
        , fmap (("SubnetId",) . toJSON) _imageBuilderInfrastructureConfigurationSubnetId
        , fmap (("Tags",) . toJSON) _imageBuilderInfrastructureConfigurationTags
        , fmap (("TerminateInstanceOnFailure",) . toJSON) _imageBuilderInfrastructureConfigurationTerminateInstanceOnFailure
        ]
    }

-- | Constructor for 'ImageBuilderInfrastructureConfiguration' containing
-- required fields as arguments.
imageBuilderInfrastructureConfiguration
  :: Val Text -- ^ 'ibicInstanceProfileName'
  -> Val Text -- ^ 'ibicName'
  -> ImageBuilderInfrastructureConfiguration
imageBuilderInfrastructureConfiguration instanceProfileNamearg namearg =
  ImageBuilderInfrastructureConfiguration
  { _imageBuilderInfrastructureConfigurationDescription = Nothing
  , _imageBuilderInfrastructureConfigurationInstanceProfileName = instanceProfileNamearg
  , _imageBuilderInfrastructureConfigurationInstanceTypes = Nothing
  , _imageBuilderInfrastructureConfigurationKeyPair = Nothing
  , _imageBuilderInfrastructureConfigurationLogging = Nothing
  , _imageBuilderInfrastructureConfigurationName = namearg
  , _imageBuilderInfrastructureConfigurationResourceTags = Nothing
  , _imageBuilderInfrastructureConfigurationSecurityGroupIds = Nothing
  , _imageBuilderInfrastructureConfigurationSnsTopicArn = Nothing
  , _imageBuilderInfrastructureConfigurationSubnetId = Nothing
  , _imageBuilderInfrastructureConfigurationTags = Nothing
  , _imageBuilderInfrastructureConfigurationTerminateInstanceOnFailure = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-infrastructureconfiguration.html#cfn-imagebuilder-infrastructureconfiguration-description
ibicDescription :: Lens' ImageBuilderInfrastructureConfiguration (Maybe (Val Text))
ibicDescription = lens _imageBuilderInfrastructureConfigurationDescription (\s a -> s { _imageBuilderInfrastructureConfigurationDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-infrastructureconfiguration.html#cfn-imagebuilder-infrastructureconfiguration-instanceprofilename
ibicInstanceProfileName :: Lens' ImageBuilderInfrastructureConfiguration (Val Text)
ibicInstanceProfileName = lens _imageBuilderInfrastructureConfigurationInstanceProfileName (\s a -> s { _imageBuilderInfrastructureConfigurationInstanceProfileName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-infrastructureconfiguration.html#cfn-imagebuilder-infrastructureconfiguration-instancetypes
ibicInstanceTypes :: Lens' ImageBuilderInfrastructureConfiguration (Maybe (ValList Text))
ibicInstanceTypes = lens _imageBuilderInfrastructureConfigurationInstanceTypes (\s a -> s { _imageBuilderInfrastructureConfigurationInstanceTypes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-infrastructureconfiguration.html#cfn-imagebuilder-infrastructureconfiguration-keypair
ibicKeyPair :: Lens' ImageBuilderInfrastructureConfiguration (Maybe (Val Text))
ibicKeyPair = lens _imageBuilderInfrastructureConfigurationKeyPair (\s a -> s { _imageBuilderInfrastructureConfigurationKeyPair = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-infrastructureconfiguration.html#cfn-imagebuilder-infrastructureconfiguration-logging
ibicLogging :: Lens' ImageBuilderInfrastructureConfiguration (Maybe ImageBuilderInfrastructureConfigurationLogging)
ibicLogging = lens _imageBuilderInfrastructureConfigurationLogging (\s a -> s { _imageBuilderInfrastructureConfigurationLogging = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-infrastructureconfiguration.html#cfn-imagebuilder-infrastructureconfiguration-name
ibicName :: Lens' ImageBuilderInfrastructureConfiguration (Val Text)
ibicName = lens _imageBuilderInfrastructureConfigurationName (\s a -> s { _imageBuilderInfrastructureConfigurationName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-infrastructureconfiguration.html#cfn-imagebuilder-infrastructureconfiguration-resourcetags
ibicResourceTags :: Lens' ImageBuilderInfrastructureConfiguration (Maybe Object)
ibicResourceTags = lens _imageBuilderInfrastructureConfigurationResourceTags (\s a -> s { _imageBuilderInfrastructureConfigurationResourceTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-infrastructureconfiguration.html#cfn-imagebuilder-infrastructureconfiguration-securitygroupids
ibicSecurityGroupIds :: Lens' ImageBuilderInfrastructureConfiguration (Maybe (ValList Text))
ibicSecurityGroupIds = lens _imageBuilderInfrastructureConfigurationSecurityGroupIds (\s a -> s { _imageBuilderInfrastructureConfigurationSecurityGroupIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-infrastructureconfiguration.html#cfn-imagebuilder-infrastructureconfiguration-snstopicarn
ibicSnsTopicArn :: Lens' ImageBuilderInfrastructureConfiguration (Maybe (Val Text))
ibicSnsTopicArn = lens _imageBuilderInfrastructureConfigurationSnsTopicArn (\s a -> s { _imageBuilderInfrastructureConfigurationSnsTopicArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-infrastructureconfiguration.html#cfn-imagebuilder-infrastructureconfiguration-subnetid
ibicSubnetId :: Lens' ImageBuilderInfrastructureConfiguration (Maybe (Val Text))
ibicSubnetId = lens _imageBuilderInfrastructureConfigurationSubnetId (\s a -> s { _imageBuilderInfrastructureConfigurationSubnetId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-infrastructureconfiguration.html#cfn-imagebuilder-infrastructureconfiguration-tags
ibicTags :: Lens' ImageBuilderInfrastructureConfiguration (Maybe Object)
ibicTags = lens _imageBuilderInfrastructureConfigurationTags (\s a -> s { _imageBuilderInfrastructureConfigurationTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-infrastructureconfiguration.html#cfn-imagebuilder-infrastructureconfiguration-terminateinstanceonfailure
ibicTerminateInstanceOnFailure :: Lens' ImageBuilderInfrastructureConfiguration (Maybe (Val Bool))
ibicTerminateInstanceOnFailure = lens _imageBuilderInfrastructureConfigurationTerminateInstanceOnFailure (\s a -> s { _imageBuilderInfrastructureConfigurationTerminateInstanceOnFailure = a })
