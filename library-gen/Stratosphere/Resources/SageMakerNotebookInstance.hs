{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-notebookinstance.html

module Stratosphere.Resources.SageMakerNotebookInstance where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for SageMakerNotebookInstance. See
-- 'sageMakerNotebookInstance' for a more convenient constructor.
data SageMakerNotebookInstance =
  SageMakerNotebookInstance
  { _sageMakerNotebookInstanceAcceleratorTypes :: Maybe (ValList Text)
  , _sageMakerNotebookInstanceAdditionalCodeRepositories :: Maybe (ValList Text)
  , _sageMakerNotebookInstanceDefaultCodeRepository :: Maybe (Val Text)
  , _sageMakerNotebookInstanceDirectInternetAccess :: Maybe (Val Text)
  , _sageMakerNotebookInstanceInstanceType :: Val Text
  , _sageMakerNotebookInstanceKmsKeyId :: Maybe (Val Text)
  , _sageMakerNotebookInstanceLifecycleConfigName :: Maybe (Val Text)
  , _sageMakerNotebookInstanceNotebookInstanceName :: Maybe (Val Text)
  , _sageMakerNotebookInstanceRoleArn :: Val Text
  , _sageMakerNotebookInstanceRootAccess :: Maybe (Val Text)
  , _sageMakerNotebookInstanceSecurityGroupIds :: Maybe (ValList Text)
  , _sageMakerNotebookInstanceSubnetId :: Maybe (Val Text)
  , _sageMakerNotebookInstanceTags :: Maybe [Tag]
  , _sageMakerNotebookInstanceVolumeSizeInGB :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToResourceProperties SageMakerNotebookInstance where
  toResourceProperties SageMakerNotebookInstance{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::SageMaker::NotebookInstance"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("AcceleratorTypes",) . toJSON) _sageMakerNotebookInstanceAcceleratorTypes
        , fmap (("AdditionalCodeRepositories",) . toJSON) _sageMakerNotebookInstanceAdditionalCodeRepositories
        , fmap (("DefaultCodeRepository",) . toJSON) _sageMakerNotebookInstanceDefaultCodeRepository
        , fmap (("DirectInternetAccess",) . toJSON) _sageMakerNotebookInstanceDirectInternetAccess
        , (Just . ("InstanceType",) . toJSON) _sageMakerNotebookInstanceInstanceType
        , fmap (("KmsKeyId",) . toJSON) _sageMakerNotebookInstanceKmsKeyId
        , fmap (("LifecycleConfigName",) . toJSON) _sageMakerNotebookInstanceLifecycleConfigName
        , fmap (("NotebookInstanceName",) . toJSON) _sageMakerNotebookInstanceNotebookInstanceName
        , (Just . ("RoleArn",) . toJSON) _sageMakerNotebookInstanceRoleArn
        , fmap (("RootAccess",) . toJSON) _sageMakerNotebookInstanceRootAccess
        , fmap (("SecurityGroupIds",) . toJSON) _sageMakerNotebookInstanceSecurityGroupIds
        , fmap (("SubnetId",) . toJSON) _sageMakerNotebookInstanceSubnetId
        , fmap (("Tags",) . toJSON) _sageMakerNotebookInstanceTags
        , fmap (("VolumeSizeInGB",) . toJSON) _sageMakerNotebookInstanceVolumeSizeInGB
        ]
    }

-- | Constructor for 'SageMakerNotebookInstance' containing required fields as
-- arguments.
sageMakerNotebookInstance
  :: Val Text -- ^ 'smniInstanceType'
  -> Val Text -- ^ 'smniRoleArn'
  -> SageMakerNotebookInstance
sageMakerNotebookInstance instanceTypearg roleArnarg =
  SageMakerNotebookInstance
  { _sageMakerNotebookInstanceAcceleratorTypes = Nothing
  , _sageMakerNotebookInstanceAdditionalCodeRepositories = Nothing
  , _sageMakerNotebookInstanceDefaultCodeRepository = Nothing
  , _sageMakerNotebookInstanceDirectInternetAccess = Nothing
  , _sageMakerNotebookInstanceInstanceType = instanceTypearg
  , _sageMakerNotebookInstanceKmsKeyId = Nothing
  , _sageMakerNotebookInstanceLifecycleConfigName = Nothing
  , _sageMakerNotebookInstanceNotebookInstanceName = Nothing
  , _sageMakerNotebookInstanceRoleArn = roleArnarg
  , _sageMakerNotebookInstanceRootAccess = Nothing
  , _sageMakerNotebookInstanceSecurityGroupIds = Nothing
  , _sageMakerNotebookInstanceSubnetId = Nothing
  , _sageMakerNotebookInstanceTags = Nothing
  , _sageMakerNotebookInstanceVolumeSizeInGB = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-notebookinstance.html#cfn-sagemaker-notebookinstance-acceleratortypes
smniAcceleratorTypes :: Lens' SageMakerNotebookInstance (Maybe (ValList Text))
smniAcceleratorTypes = lens _sageMakerNotebookInstanceAcceleratorTypes (\s a -> s { _sageMakerNotebookInstanceAcceleratorTypes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-notebookinstance.html#cfn-sagemaker-notebookinstance-additionalcoderepositories
smniAdditionalCodeRepositories :: Lens' SageMakerNotebookInstance (Maybe (ValList Text))
smniAdditionalCodeRepositories = lens _sageMakerNotebookInstanceAdditionalCodeRepositories (\s a -> s { _sageMakerNotebookInstanceAdditionalCodeRepositories = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-notebookinstance.html#cfn-sagemaker-notebookinstance-defaultcoderepository
smniDefaultCodeRepository :: Lens' SageMakerNotebookInstance (Maybe (Val Text))
smniDefaultCodeRepository = lens _sageMakerNotebookInstanceDefaultCodeRepository (\s a -> s { _sageMakerNotebookInstanceDefaultCodeRepository = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-notebookinstance.html#cfn-sagemaker-notebookinstance-directinternetaccess
smniDirectInternetAccess :: Lens' SageMakerNotebookInstance (Maybe (Val Text))
smniDirectInternetAccess = lens _sageMakerNotebookInstanceDirectInternetAccess (\s a -> s { _sageMakerNotebookInstanceDirectInternetAccess = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-notebookinstance.html#cfn-sagemaker-notebookinstance-instancetype
smniInstanceType :: Lens' SageMakerNotebookInstance (Val Text)
smniInstanceType = lens _sageMakerNotebookInstanceInstanceType (\s a -> s { _sageMakerNotebookInstanceInstanceType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-notebookinstance.html#cfn-sagemaker-notebookinstance-kmskeyid
smniKmsKeyId :: Lens' SageMakerNotebookInstance (Maybe (Val Text))
smniKmsKeyId = lens _sageMakerNotebookInstanceKmsKeyId (\s a -> s { _sageMakerNotebookInstanceKmsKeyId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-notebookinstance.html#cfn-sagemaker-notebookinstance-lifecycleconfigname
smniLifecycleConfigName :: Lens' SageMakerNotebookInstance (Maybe (Val Text))
smniLifecycleConfigName = lens _sageMakerNotebookInstanceLifecycleConfigName (\s a -> s { _sageMakerNotebookInstanceLifecycleConfigName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-notebookinstance.html#cfn-sagemaker-notebookinstance-notebookinstancename
smniNotebookInstanceName :: Lens' SageMakerNotebookInstance (Maybe (Val Text))
smniNotebookInstanceName = lens _sageMakerNotebookInstanceNotebookInstanceName (\s a -> s { _sageMakerNotebookInstanceNotebookInstanceName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-notebookinstance.html#cfn-sagemaker-notebookinstance-rolearn
smniRoleArn :: Lens' SageMakerNotebookInstance (Val Text)
smniRoleArn = lens _sageMakerNotebookInstanceRoleArn (\s a -> s { _sageMakerNotebookInstanceRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-notebookinstance.html#cfn-sagemaker-notebookinstance-rootaccess
smniRootAccess :: Lens' SageMakerNotebookInstance (Maybe (Val Text))
smniRootAccess = lens _sageMakerNotebookInstanceRootAccess (\s a -> s { _sageMakerNotebookInstanceRootAccess = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-notebookinstance.html#cfn-sagemaker-notebookinstance-securitygroupids
smniSecurityGroupIds :: Lens' SageMakerNotebookInstance (Maybe (ValList Text))
smniSecurityGroupIds = lens _sageMakerNotebookInstanceSecurityGroupIds (\s a -> s { _sageMakerNotebookInstanceSecurityGroupIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-notebookinstance.html#cfn-sagemaker-notebookinstance-subnetid
smniSubnetId :: Lens' SageMakerNotebookInstance (Maybe (Val Text))
smniSubnetId = lens _sageMakerNotebookInstanceSubnetId (\s a -> s { _sageMakerNotebookInstanceSubnetId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-notebookinstance.html#cfn-sagemaker-notebookinstance-tags
smniTags :: Lens' SageMakerNotebookInstance (Maybe [Tag])
smniTags = lens _sageMakerNotebookInstanceTags (\s a -> s { _sageMakerNotebookInstanceTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-notebookinstance.html#cfn-sagemaker-notebookinstance-volumesizeingb
smniVolumeSizeInGB :: Lens' SageMakerNotebookInstance (Maybe (Val Integer))
smniVolumeSizeInGB = lens _sageMakerNotebookInstanceVolumeSizeInGB (\s a -> s { _sageMakerNotebookInstanceVolumeSizeInGB = a })
