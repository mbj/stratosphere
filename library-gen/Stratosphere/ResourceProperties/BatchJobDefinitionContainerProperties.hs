
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html

module Stratosphere.ResourceProperties.BatchJobDefinitionContainerProperties where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.BatchJobDefinitionEnvironment
import Stratosphere.ResourceProperties.BatchJobDefinitionLinuxParameters
import Stratosphere.ResourceProperties.BatchJobDefinitionMountPoints
import Stratosphere.ResourceProperties.BatchJobDefinitionResourceRequirement
import Stratosphere.ResourceProperties.BatchJobDefinitionUlimit
import Stratosphere.ResourceProperties.BatchJobDefinitionVolumes

-- | Full data type definition for BatchJobDefinitionContainerProperties. See
-- 'batchJobDefinitionContainerProperties' for a more convenient
-- constructor.
data BatchJobDefinitionContainerProperties =
  BatchJobDefinitionContainerProperties
  { _batchJobDefinitionContainerPropertiesCommand :: Maybe (ValList Text)
  , _batchJobDefinitionContainerPropertiesEnvironment :: Maybe [BatchJobDefinitionEnvironment]
  , _batchJobDefinitionContainerPropertiesImage :: Val Text
  , _batchJobDefinitionContainerPropertiesInstanceType :: Maybe (Val Text)
  , _batchJobDefinitionContainerPropertiesJobRoleArn :: Maybe (Val Text)
  , _batchJobDefinitionContainerPropertiesLinuxParameters :: Maybe BatchJobDefinitionLinuxParameters
  , _batchJobDefinitionContainerPropertiesMemory :: Maybe (Val Integer)
  , _batchJobDefinitionContainerPropertiesMountPoints :: Maybe [BatchJobDefinitionMountPoints]
  , _batchJobDefinitionContainerPropertiesPrivileged :: Maybe (Val Bool)
  , _batchJobDefinitionContainerPropertiesReadonlyRootFilesystem :: Maybe (Val Bool)
  , _batchJobDefinitionContainerPropertiesResourceRequirements :: Maybe [BatchJobDefinitionResourceRequirement]
  , _batchJobDefinitionContainerPropertiesUlimits :: Maybe [BatchJobDefinitionUlimit]
  , _batchJobDefinitionContainerPropertiesUser :: Maybe (Val Text)
  , _batchJobDefinitionContainerPropertiesVcpus :: Maybe (Val Integer)
  , _batchJobDefinitionContainerPropertiesVolumes :: Maybe [BatchJobDefinitionVolumes]
  } deriving (Show, Eq)

instance ToJSON BatchJobDefinitionContainerProperties where
  toJSON BatchJobDefinitionContainerProperties{..} =
    object $
    catMaybes
    [ fmap (("Command",) . toJSON) _batchJobDefinitionContainerPropertiesCommand
    , fmap (("Environment",) . toJSON) _batchJobDefinitionContainerPropertiesEnvironment
    , (Just . ("Image",) . toJSON) _batchJobDefinitionContainerPropertiesImage
    , fmap (("InstanceType",) . toJSON) _batchJobDefinitionContainerPropertiesInstanceType
    , fmap (("JobRoleArn",) . toJSON) _batchJobDefinitionContainerPropertiesJobRoleArn
    , fmap (("LinuxParameters",) . toJSON) _batchJobDefinitionContainerPropertiesLinuxParameters
    , fmap (("Memory",) . toJSON) _batchJobDefinitionContainerPropertiesMemory
    , fmap (("MountPoints",) . toJSON) _batchJobDefinitionContainerPropertiesMountPoints
    , fmap (("Privileged",) . toJSON) _batchJobDefinitionContainerPropertiesPrivileged
    , fmap (("ReadonlyRootFilesystem",) . toJSON) _batchJobDefinitionContainerPropertiesReadonlyRootFilesystem
    , fmap (("ResourceRequirements",) . toJSON) _batchJobDefinitionContainerPropertiesResourceRequirements
    , fmap (("Ulimits",) . toJSON) _batchJobDefinitionContainerPropertiesUlimits
    , fmap (("User",) . toJSON) _batchJobDefinitionContainerPropertiesUser
    , fmap (("Vcpus",) . toJSON) _batchJobDefinitionContainerPropertiesVcpus
    , fmap (("Volumes",) . toJSON) _batchJobDefinitionContainerPropertiesVolumes
    ]

-- | Constructor for 'BatchJobDefinitionContainerProperties' containing
-- required fields as arguments.
batchJobDefinitionContainerProperties
  :: Val Text -- ^ 'bjdcpImage'
  -> BatchJobDefinitionContainerProperties
batchJobDefinitionContainerProperties imagearg =
  BatchJobDefinitionContainerProperties
  { _batchJobDefinitionContainerPropertiesCommand = Nothing
  , _batchJobDefinitionContainerPropertiesEnvironment = Nothing
  , _batchJobDefinitionContainerPropertiesImage = imagearg
  , _batchJobDefinitionContainerPropertiesInstanceType = Nothing
  , _batchJobDefinitionContainerPropertiesJobRoleArn = Nothing
  , _batchJobDefinitionContainerPropertiesLinuxParameters = Nothing
  , _batchJobDefinitionContainerPropertiesMemory = Nothing
  , _batchJobDefinitionContainerPropertiesMountPoints = Nothing
  , _batchJobDefinitionContainerPropertiesPrivileged = Nothing
  , _batchJobDefinitionContainerPropertiesReadonlyRootFilesystem = Nothing
  , _batchJobDefinitionContainerPropertiesResourceRequirements = Nothing
  , _batchJobDefinitionContainerPropertiesUlimits = Nothing
  , _batchJobDefinitionContainerPropertiesUser = Nothing
  , _batchJobDefinitionContainerPropertiesVcpus = Nothing
  , _batchJobDefinitionContainerPropertiesVolumes = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-command
bjdcpCommand :: Lens' BatchJobDefinitionContainerProperties (Maybe (ValList Text))
bjdcpCommand = lens _batchJobDefinitionContainerPropertiesCommand (\s a -> s { _batchJobDefinitionContainerPropertiesCommand = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-environment
bjdcpEnvironment :: Lens' BatchJobDefinitionContainerProperties (Maybe [BatchJobDefinitionEnvironment])
bjdcpEnvironment = lens _batchJobDefinitionContainerPropertiesEnvironment (\s a -> s { _batchJobDefinitionContainerPropertiesEnvironment = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-image
bjdcpImage :: Lens' BatchJobDefinitionContainerProperties (Val Text)
bjdcpImage = lens _batchJobDefinitionContainerPropertiesImage (\s a -> s { _batchJobDefinitionContainerPropertiesImage = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-instancetype
bjdcpInstanceType :: Lens' BatchJobDefinitionContainerProperties (Maybe (Val Text))
bjdcpInstanceType = lens _batchJobDefinitionContainerPropertiesInstanceType (\s a -> s { _batchJobDefinitionContainerPropertiesInstanceType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-jobrolearn
bjdcpJobRoleArn :: Lens' BatchJobDefinitionContainerProperties (Maybe (Val Text))
bjdcpJobRoleArn = lens _batchJobDefinitionContainerPropertiesJobRoleArn (\s a -> s { _batchJobDefinitionContainerPropertiesJobRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-linuxparameters
bjdcpLinuxParameters :: Lens' BatchJobDefinitionContainerProperties (Maybe BatchJobDefinitionLinuxParameters)
bjdcpLinuxParameters = lens _batchJobDefinitionContainerPropertiesLinuxParameters (\s a -> s { _batchJobDefinitionContainerPropertiesLinuxParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-memory
bjdcpMemory :: Lens' BatchJobDefinitionContainerProperties (Maybe (Val Integer))
bjdcpMemory = lens _batchJobDefinitionContainerPropertiesMemory (\s a -> s { _batchJobDefinitionContainerPropertiesMemory = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-mountpoints
bjdcpMountPoints :: Lens' BatchJobDefinitionContainerProperties (Maybe [BatchJobDefinitionMountPoints])
bjdcpMountPoints = lens _batchJobDefinitionContainerPropertiesMountPoints (\s a -> s { _batchJobDefinitionContainerPropertiesMountPoints = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-privileged
bjdcpPrivileged :: Lens' BatchJobDefinitionContainerProperties (Maybe (Val Bool))
bjdcpPrivileged = lens _batchJobDefinitionContainerPropertiesPrivileged (\s a -> s { _batchJobDefinitionContainerPropertiesPrivileged = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-readonlyrootfilesystem
bjdcpReadonlyRootFilesystem :: Lens' BatchJobDefinitionContainerProperties (Maybe (Val Bool))
bjdcpReadonlyRootFilesystem = lens _batchJobDefinitionContainerPropertiesReadonlyRootFilesystem (\s a -> s { _batchJobDefinitionContainerPropertiesReadonlyRootFilesystem = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-resourcerequirements
bjdcpResourceRequirements :: Lens' BatchJobDefinitionContainerProperties (Maybe [BatchJobDefinitionResourceRequirement])
bjdcpResourceRequirements = lens _batchJobDefinitionContainerPropertiesResourceRequirements (\s a -> s { _batchJobDefinitionContainerPropertiesResourceRequirements = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-ulimits
bjdcpUlimits :: Lens' BatchJobDefinitionContainerProperties (Maybe [BatchJobDefinitionUlimit])
bjdcpUlimits = lens _batchJobDefinitionContainerPropertiesUlimits (\s a -> s { _batchJobDefinitionContainerPropertiesUlimits = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-user
bjdcpUser :: Lens' BatchJobDefinitionContainerProperties (Maybe (Val Text))
bjdcpUser = lens _batchJobDefinitionContainerPropertiesUser (\s a -> s { _batchJobDefinitionContainerPropertiesUser = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-vcpus
bjdcpVcpus :: Lens' BatchJobDefinitionContainerProperties (Maybe (Val Integer))
bjdcpVcpus = lens _batchJobDefinitionContainerPropertiesVcpus (\s a -> s { _batchJobDefinitionContainerPropertiesVcpus = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-volumes
bjdcpVolumes :: Lens' BatchJobDefinitionContainerProperties (Maybe [BatchJobDefinitionVolumes])
bjdcpVolumes = lens _batchJobDefinitionContainerPropertiesVolumes (\s a -> s { _batchJobDefinitionContainerPropertiesVolumes = a })
