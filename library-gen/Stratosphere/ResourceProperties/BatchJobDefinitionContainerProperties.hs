{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html

module Stratosphere.ResourceProperties.BatchJobDefinitionContainerProperties where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.BatchJobDefinitionEnvironment
import Stratosphere.ResourceProperties.BatchJobDefinitionMountPoints
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
  , _batchJobDefinitionContainerPropertiesJobRoleArn :: Maybe (Val Text)
  , _batchJobDefinitionContainerPropertiesMemory :: Val Integer
  , _batchJobDefinitionContainerPropertiesMountPoints :: Maybe [BatchJobDefinitionMountPoints]
  , _batchJobDefinitionContainerPropertiesPrivileged :: Maybe (Val Bool)
  , _batchJobDefinitionContainerPropertiesReadonlyRootFilesystem :: Maybe (Val Bool)
  , _batchJobDefinitionContainerPropertiesUlimits :: Maybe [BatchJobDefinitionUlimit]
  , _batchJobDefinitionContainerPropertiesUser :: Maybe (Val Text)
  , _batchJobDefinitionContainerPropertiesVcpus :: Val Integer
  , _batchJobDefinitionContainerPropertiesVolumes :: Maybe [BatchJobDefinitionVolumes]
  } deriving (Show, Eq)

instance ToJSON BatchJobDefinitionContainerProperties where
  toJSON BatchJobDefinitionContainerProperties{..} =
    object $
    catMaybes
    [ fmap (("Command",) . toJSON) _batchJobDefinitionContainerPropertiesCommand
    , fmap (("Environment",) . toJSON) _batchJobDefinitionContainerPropertiesEnvironment
    , (Just . ("Image",) . toJSON) _batchJobDefinitionContainerPropertiesImage
    , fmap (("JobRoleArn",) . toJSON) _batchJobDefinitionContainerPropertiesJobRoleArn
    , (Just . ("Memory",) . toJSON . fmap Integer') _batchJobDefinitionContainerPropertiesMemory
    , fmap (("MountPoints",) . toJSON) _batchJobDefinitionContainerPropertiesMountPoints
    , fmap (("Privileged",) . toJSON . fmap Bool') _batchJobDefinitionContainerPropertiesPrivileged
    , fmap (("ReadonlyRootFilesystem",) . toJSON . fmap Bool') _batchJobDefinitionContainerPropertiesReadonlyRootFilesystem
    , fmap (("Ulimits",) . toJSON) _batchJobDefinitionContainerPropertiesUlimits
    , fmap (("User",) . toJSON) _batchJobDefinitionContainerPropertiesUser
    , (Just . ("Vcpus",) . toJSON . fmap Integer') _batchJobDefinitionContainerPropertiesVcpus
    , fmap (("Volumes",) . toJSON) _batchJobDefinitionContainerPropertiesVolumes
    ]

instance FromJSON BatchJobDefinitionContainerProperties where
  parseJSON (Object obj) =
    BatchJobDefinitionContainerProperties <$>
      (obj .:? "Command") <*>
      (obj .:? "Environment") <*>
      (obj .: "Image") <*>
      (obj .:? "JobRoleArn") <*>
      fmap (fmap unInteger') (obj .: "Memory") <*>
      (obj .:? "MountPoints") <*>
      fmap (fmap (fmap unBool')) (obj .:? "Privileged") <*>
      fmap (fmap (fmap unBool')) (obj .:? "ReadonlyRootFilesystem") <*>
      (obj .:? "Ulimits") <*>
      (obj .:? "User") <*>
      fmap (fmap unInteger') (obj .: "Vcpus") <*>
      (obj .:? "Volumes")
  parseJSON _ = mempty

-- | Constructor for 'BatchJobDefinitionContainerProperties' containing
-- required fields as arguments.
batchJobDefinitionContainerProperties
  :: Val Text -- ^ 'bjdcpImage'
  -> Val Integer -- ^ 'bjdcpMemory'
  -> Val Integer -- ^ 'bjdcpVcpus'
  -> BatchJobDefinitionContainerProperties
batchJobDefinitionContainerProperties imagearg memoryarg vcpusarg =
  BatchJobDefinitionContainerProperties
  { _batchJobDefinitionContainerPropertiesCommand = Nothing
  , _batchJobDefinitionContainerPropertiesEnvironment = Nothing
  , _batchJobDefinitionContainerPropertiesImage = imagearg
  , _batchJobDefinitionContainerPropertiesJobRoleArn = Nothing
  , _batchJobDefinitionContainerPropertiesMemory = memoryarg
  , _batchJobDefinitionContainerPropertiesMountPoints = Nothing
  , _batchJobDefinitionContainerPropertiesPrivileged = Nothing
  , _batchJobDefinitionContainerPropertiesReadonlyRootFilesystem = Nothing
  , _batchJobDefinitionContainerPropertiesUlimits = Nothing
  , _batchJobDefinitionContainerPropertiesUser = Nothing
  , _batchJobDefinitionContainerPropertiesVcpus = vcpusarg
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

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-jobrolearn
bjdcpJobRoleArn :: Lens' BatchJobDefinitionContainerProperties (Maybe (Val Text))
bjdcpJobRoleArn = lens _batchJobDefinitionContainerPropertiesJobRoleArn (\s a -> s { _batchJobDefinitionContainerPropertiesJobRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-memory
bjdcpMemory :: Lens' BatchJobDefinitionContainerProperties (Val Integer)
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

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-ulimits
bjdcpUlimits :: Lens' BatchJobDefinitionContainerProperties (Maybe [BatchJobDefinitionUlimit])
bjdcpUlimits = lens _batchJobDefinitionContainerPropertiesUlimits (\s a -> s { _batchJobDefinitionContainerPropertiesUlimits = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-user
bjdcpUser :: Lens' BatchJobDefinitionContainerProperties (Maybe (Val Text))
bjdcpUser = lens _batchJobDefinitionContainerPropertiesUser (\s a -> s { _batchJobDefinitionContainerPropertiesUser = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-vcpus
bjdcpVcpus :: Lens' BatchJobDefinitionContainerProperties (Val Integer)
bjdcpVcpus = lens _batchJobDefinitionContainerPropertiesVcpus (\s a -> s { _batchJobDefinitionContainerPropertiesVcpus = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-volumes
bjdcpVolumes :: Lens' BatchJobDefinitionContainerProperties (Maybe [BatchJobDefinitionVolumes])
bjdcpVolumes = lens _batchJobDefinitionContainerPropertiesVolumes (\s a -> s { _batchJobDefinitionContainerPropertiesVolumes = a })
