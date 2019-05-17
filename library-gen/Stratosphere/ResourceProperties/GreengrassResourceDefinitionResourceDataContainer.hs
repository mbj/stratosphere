{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourcedatacontainer.html

module Stratosphere.ResourceProperties.GreengrassResourceDefinitionResourceDataContainer where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GreengrassResourceDefinitionLocalDeviceResourceData
import Stratosphere.ResourceProperties.GreengrassResourceDefinitionLocalVolumeResourceData
import Stratosphere.ResourceProperties.GreengrassResourceDefinitionS3MachineLearningModelResourceData
import Stratosphere.ResourceProperties.GreengrassResourceDefinitionSageMakerMachineLearningModelResourceData
import Stratosphere.ResourceProperties.GreengrassResourceDefinitionSecretsManagerSecretResourceData

-- | Full data type definition for
-- GreengrassResourceDefinitionResourceDataContainer. See
-- 'greengrassResourceDefinitionResourceDataContainer' for a more convenient
-- constructor.
data GreengrassResourceDefinitionResourceDataContainer =
  GreengrassResourceDefinitionResourceDataContainer
  { _greengrassResourceDefinitionResourceDataContainerLocalDeviceResourceData :: Maybe GreengrassResourceDefinitionLocalDeviceResourceData
  , _greengrassResourceDefinitionResourceDataContainerLocalVolumeResourceData :: Maybe GreengrassResourceDefinitionLocalVolumeResourceData
  , _greengrassResourceDefinitionResourceDataContainerS3MachineLearningModelResourceData :: Maybe GreengrassResourceDefinitionS3MachineLearningModelResourceData
  , _greengrassResourceDefinitionResourceDataContainerSageMakerMachineLearningModelResourceData :: Maybe GreengrassResourceDefinitionSageMakerMachineLearningModelResourceData
  , _greengrassResourceDefinitionResourceDataContainerSecretsManagerSecretResourceData :: Maybe GreengrassResourceDefinitionSecretsManagerSecretResourceData
  } deriving (Show, Eq)

instance ToJSON GreengrassResourceDefinitionResourceDataContainer where
  toJSON GreengrassResourceDefinitionResourceDataContainer{..} =
    object $
    catMaybes
    [ fmap (("LocalDeviceResourceData",) . toJSON) _greengrassResourceDefinitionResourceDataContainerLocalDeviceResourceData
    , fmap (("LocalVolumeResourceData",) . toJSON) _greengrassResourceDefinitionResourceDataContainerLocalVolumeResourceData
    , fmap (("S3MachineLearningModelResourceData",) . toJSON) _greengrassResourceDefinitionResourceDataContainerS3MachineLearningModelResourceData
    , fmap (("SageMakerMachineLearningModelResourceData",) . toJSON) _greengrassResourceDefinitionResourceDataContainerSageMakerMachineLearningModelResourceData
    , fmap (("SecretsManagerSecretResourceData",) . toJSON) _greengrassResourceDefinitionResourceDataContainerSecretsManagerSecretResourceData
    ]

-- | Constructor for 'GreengrassResourceDefinitionResourceDataContainer'
-- containing required fields as arguments.
greengrassResourceDefinitionResourceDataContainer
  :: GreengrassResourceDefinitionResourceDataContainer
greengrassResourceDefinitionResourceDataContainer  =
  GreengrassResourceDefinitionResourceDataContainer
  { _greengrassResourceDefinitionResourceDataContainerLocalDeviceResourceData = Nothing
  , _greengrassResourceDefinitionResourceDataContainerLocalVolumeResourceData = Nothing
  , _greengrassResourceDefinitionResourceDataContainerS3MachineLearningModelResourceData = Nothing
  , _greengrassResourceDefinitionResourceDataContainerSageMakerMachineLearningModelResourceData = Nothing
  , _greengrassResourceDefinitionResourceDataContainerSecretsManagerSecretResourceData = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourcedatacontainer.html#cfn-greengrass-resourcedefinition-resourcedatacontainer-localdeviceresourcedata
grdrdcLocalDeviceResourceData :: Lens' GreengrassResourceDefinitionResourceDataContainer (Maybe GreengrassResourceDefinitionLocalDeviceResourceData)
grdrdcLocalDeviceResourceData = lens _greengrassResourceDefinitionResourceDataContainerLocalDeviceResourceData (\s a -> s { _greengrassResourceDefinitionResourceDataContainerLocalDeviceResourceData = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourcedatacontainer.html#cfn-greengrass-resourcedefinition-resourcedatacontainer-localvolumeresourcedata
grdrdcLocalVolumeResourceData :: Lens' GreengrassResourceDefinitionResourceDataContainer (Maybe GreengrassResourceDefinitionLocalVolumeResourceData)
grdrdcLocalVolumeResourceData = lens _greengrassResourceDefinitionResourceDataContainerLocalVolumeResourceData (\s a -> s { _greengrassResourceDefinitionResourceDataContainerLocalVolumeResourceData = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourcedatacontainer.html#cfn-greengrass-resourcedefinition-resourcedatacontainer-s3machinelearningmodelresourcedata
grdrdcS3MachineLearningModelResourceData :: Lens' GreengrassResourceDefinitionResourceDataContainer (Maybe GreengrassResourceDefinitionS3MachineLearningModelResourceData)
grdrdcS3MachineLearningModelResourceData = lens _greengrassResourceDefinitionResourceDataContainerS3MachineLearningModelResourceData (\s a -> s { _greengrassResourceDefinitionResourceDataContainerS3MachineLearningModelResourceData = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourcedatacontainer.html#cfn-greengrass-resourcedefinition-resourcedatacontainer-sagemakermachinelearningmodelresourcedata
grdrdcSageMakerMachineLearningModelResourceData :: Lens' GreengrassResourceDefinitionResourceDataContainer (Maybe GreengrassResourceDefinitionSageMakerMachineLearningModelResourceData)
grdrdcSageMakerMachineLearningModelResourceData = lens _greengrassResourceDefinitionResourceDataContainerSageMakerMachineLearningModelResourceData (\s a -> s { _greengrassResourceDefinitionResourceDataContainerSageMakerMachineLearningModelResourceData = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourcedatacontainer.html#cfn-greengrass-resourcedefinition-resourcedatacontainer-secretsmanagersecretresourcedata
grdrdcSecretsManagerSecretResourceData :: Lens' GreengrassResourceDefinitionResourceDataContainer (Maybe GreengrassResourceDefinitionSecretsManagerSecretResourceData)
grdrdcSecretsManagerSecretResourceData = lens _greengrassResourceDefinitionResourceDataContainerSecretsManagerSecretResourceData (\s a -> s { _greengrassResourceDefinitionResourceDataContainerSecretsManagerSecretResourceData = a })
