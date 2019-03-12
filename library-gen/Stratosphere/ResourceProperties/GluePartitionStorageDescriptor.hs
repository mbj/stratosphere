{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-storagedescriptor.html

module Stratosphere.ResourceProperties.GluePartitionStorageDescriptor where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GluePartitionColumn
import Stratosphere.ResourceProperties.GluePartitionSerdeInfo
import Stratosphere.ResourceProperties.GluePartitionSkewedInfo
import Stratosphere.ResourceProperties.GluePartitionOrder

-- | Full data type definition for GluePartitionStorageDescriptor. See
-- 'gluePartitionStorageDescriptor' for a more convenient constructor.
data GluePartitionStorageDescriptor =
  GluePartitionStorageDescriptor
  { _gluePartitionStorageDescriptorBucketColumns :: Maybe (ValList Text)
  , _gluePartitionStorageDescriptorColumns :: Maybe [GluePartitionColumn]
  , _gluePartitionStorageDescriptorCompressed :: Maybe (Val Bool)
  , _gluePartitionStorageDescriptorInputFormat :: Maybe (Val Text)
  , _gluePartitionStorageDescriptorLocation :: Maybe (Val Text)
  , _gluePartitionStorageDescriptorNumberOfBuckets :: Maybe (Val Integer)
  , _gluePartitionStorageDescriptorOutputFormat :: Maybe (Val Text)
  , _gluePartitionStorageDescriptorParameters :: Maybe Object
  , _gluePartitionStorageDescriptorSerdeInfo :: Maybe GluePartitionSerdeInfo
  , _gluePartitionStorageDescriptorSkewedInfo :: Maybe GluePartitionSkewedInfo
  , _gluePartitionStorageDescriptorSortColumns :: Maybe [GluePartitionOrder]
  , _gluePartitionStorageDescriptorStoredAsSubDirectories :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToJSON GluePartitionStorageDescriptor where
  toJSON GluePartitionStorageDescriptor{..} =
    object $
    catMaybes
    [ fmap (("BucketColumns",) . toJSON) _gluePartitionStorageDescriptorBucketColumns
    , fmap (("Columns",) . toJSON) _gluePartitionStorageDescriptorColumns
    , fmap (("Compressed",) . toJSON) _gluePartitionStorageDescriptorCompressed
    , fmap (("InputFormat",) . toJSON) _gluePartitionStorageDescriptorInputFormat
    , fmap (("Location",) . toJSON) _gluePartitionStorageDescriptorLocation
    , fmap (("NumberOfBuckets",) . toJSON) _gluePartitionStorageDescriptorNumberOfBuckets
    , fmap (("OutputFormat",) . toJSON) _gluePartitionStorageDescriptorOutputFormat
    , fmap (("Parameters",) . toJSON) _gluePartitionStorageDescriptorParameters
    , fmap (("SerdeInfo",) . toJSON) _gluePartitionStorageDescriptorSerdeInfo
    , fmap (("SkewedInfo",) . toJSON) _gluePartitionStorageDescriptorSkewedInfo
    , fmap (("SortColumns",) . toJSON) _gluePartitionStorageDescriptorSortColumns
    , fmap (("StoredAsSubDirectories",) . toJSON) _gluePartitionStorageDescriptorStoredAsSubDirectories
    ]

-- | Constructor for 'GluePartitionStorageDescriptor' containing required
-- fields as arguments.
gluePartitionStorageDescriptor
  :: GluePartitionStorageDescriptor
gluePartitionStorageDescriptor  =
  GluePartitionStorageDescriptor
  { _gluePartitionStorageDescriptorBucketColumns = Nothing
  , _gluePartitionStorageDescriptorColumns = Nothing
  , _gluePartitionStorageDescriptorCompressed = Nothing
  , _gluePartitionStorageDescriptorInputFormat = Nothing
  , _gluePartitionStorageDescriptorLocation = Nothing
  , _gluePartitionStorageDescriptorNumberOfBuckets = Nothing
  , _gluePartitionStorageDescriptorOutputFormat = Nothing
  , _gluePartitionStorageDescriptorParameters = Nothing
  , _gluePartitionStorageDescriptorSerdeInfo = Nothing
  , _gluePartitionStorageDescriptorSkewedInfo = Nothing
  , _gluePartitionStorageDescriptorSortColumns = Nothing
  , _gluePartitionStorageDescriptorStoredAsSubDirectories = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-storagedescriptor.html#cfn-glue-partition-storagedescriptor-bucketcolumns
gpsdBucketColumns :: Lens' GluePartitionStorageDescriptor (Maybe (ValList Text))
gpsdBucketColumns = lens _gluePartitionStorageDescriptorBucketColumns (\s a -> s { _gluePartitionStorageDescriptorBucketColumns = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-storagedescriptor.html#cfn-glue-partition-storagedescriptor-columns
gpsdColumns :: Lens' GluePartitionStorageDescriptor (Maybe [GluePartitionColumn])
gpsdColumns = lens _gluePartitionStorageDescriptorColumns (\s a -> s { _gluePartitionStorageDescriptorColumns = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-storagedescriptor.html#cfn-glue-partition-storagedescriptor-compressed
gpsdCompressed :: Lens' GluePartitionStorageDescriptor (Maybe (Val Bool))
gpsdCompressed = lens _gluePartitionStorageDescriptorCompressed (\s a -> s { _gluePartitionStorageDescriptorCompressed = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-storagedescriptor.html#cfn-glue-partition-storagedescriptor-inputformat
gpsdInputFormat :: Lens' GluePartitionStorageDescriptor (Maybe (Val Text))
gpsdInputFormat = lens _gluePartitionStorageDescriptorInputFormat (\s a -> s { _gluePartitionStorageDescriptorInputFormat = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-storagedescriptor.html#cfn-glue-partition-storagedescriptor-location
gpsdLocation :: Lens' GluePartitionStorageDescriptor (Maybe (Val Text))
gpsdLocation = lens _gluePartitionStorageDescriptorLocation (\s a -> s { _gluePartitionStorageDescriptorLocation = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-storagedescriptor.html#cfn-glue-partition-storagedescriptor-numberofbuckets
gpsdNumberOfBuckets :: Lens' GluePartitionStorageDescriptor (Maybe (Val Integer))
gpsdNumberOfBuckets = lens _gluePartitionStorageDescriptorNumberOfBuckets (\s a -> s { _gluePartitionStorageDescriptorNumberOfBuckets = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-storagedescriptor.html#cfn-glue-partition-storagedescriptor-outputformat
gpsdOutputFormat :: Lens' GluePartitionStorageDescriptor (Maybe (Val Text))
gpsdOutputFormat = lens _gluePartitionStorageDescriptorOutputFormat (\s a -> s { _gluePartitionStorageDescriptorOutputFormat = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-storagedescriptor.html#cfn-glue-partition-storagedescriptor-parameters
gpsdParameters :: Lens' GluePartitionStorageDescriptor (Maybe Object)
gpsdParameters = lens _gluePartitionStorageDescriptorParameters (\s a -> s { _gluePartitionStorageDescriptorParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-storagedescriptor.html#cfn-glue-partition-storagedescriptor-serdeinfo
gpsdSerdeInfo :: Lens' GluePartitionStorageDescriptor (Maybe GluePartitionSerdeInfo)
gpsdSerdeInfo = lens _gluePartitionStorageDescriptorSerdeInfo (\s a -> s { _gluePartitionStorageDescriptorSerdeInfo = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-storagedescriptor.html#cfn-glue-partition-storagedescriptor-skewedinfo
gpsdSkewedInfo :: Lens' GluePartitionStorageDescriptor (Maybe GluePartitionSkewedInfo)
gpsdSkewedInfo = lens _gluePartitionStorageDescriptorSkewedInfo (\s a -> s { _gluePartitionStorageDescriptorSkewedInfo = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-storagedescriptor.html#cfn-glue-partition-storagedescriptor-sortcolumns
gpsdSortColumns :: Lens' GluePartitionStorageDescriptor (Maybe [GluePartitionOrder])
gpsdSortColumns = lens _gluePartitionStorageDescriptorSortColumns (\s a -> s { _gluePartitionStorageDescriptorSortColumns = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-storagedescriptor.html#cfn-glue-partition-storagedescriptor-storedassubdirectories
gpsdStoredAsSubDirectories :: Lens' GluePartitionStorageDescriptor (Maybe (Val Bool))
gpsdStoredAsSubDirectories = lens _gluePartitionStorageDescriptorStoredAsSubDirectories (\s a -> s { _gluePartitionStorageDescriptorStoredAsSubDirectories = a })
