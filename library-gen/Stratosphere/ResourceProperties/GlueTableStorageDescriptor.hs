{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-storagedescriptor.html

module Stratosphere.ResourceProperties.GlueTableStorageDescriptor where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GlueTableColumn
import Stratosphere.ResourceProperties.GlueTableSerdeInfo
import Stratosphere.ResourceProperties.GlueTableSkewedInfo
import Stratosphere.ResourceProperties.GlueTableOrder

-- | Full data type definition for GlueTableStorageDescriptor. See
-- 'glueTableStorageDescriptor' for a more convenient constructor.
data GlueTableStorageDescriptor =
  GlueTableStorageDescriptor
  { _glueTableStorageDescriptorBucketColumns :: Maybe (ValList Text)
  , _glueTableStorageDescriptorColumns :: Maybe [GlueTableColumn]
  , _glueTableStorageDescriptorCompressed :: Maybe (Val Bool)
  , _glueTableStorageDescriptorInputFormat :: Maybe (Val Text)
  , _glueTableStorageDescriptorLocation :: Maybe (Val Text)
  , _glueTableStorageDescriptorNumberOfBuckets :: Maybe (Val Integer)
  , _glueTableStorageDescriptorOutputFormat :: Maybe (Val Text)
  , _glueTableStorageDescriptorParameters :: Maybe Object
  , _glueTableStorageDescriptorSerdeInfo :: Maybe GlueTableSerdeInfo
  , _glueTableStorageDescriptorSkewedInfo :: Maybe GlueTableSkewedInfo
  , _glueTableStorageDescriptorSortColumns :: Maybe [GlueTableOrder]
  , _glueTableStorageDescriptorStoredAsSubDirectories :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToJSON GlueTableStorageDescriptor where
  toJSON GlueTableStorageDescriptor{..} =
    object $
    catMaybes
    [ fmap (("BucketColumns",) . toJSON) _glueTableStorageDescriptorBucketColumns
    , fmap (("Columns",) . toJSON) _glueTableStorageDescriptorColumns
    , fmap (("Compressed",) . toJSON) _glueTableStorageDescriptorCompressed
    , fmap (("InputFormat",) . toJSON) _glueTableStorageDescriptorInputFormat
    , fmap (("Location",) . toJSON) _glueTableStorageDescriptorLocation
    , fmap (("NumberOfBuckets",) . toJSON) _glueTableStorageDescriptorNumberOfBuckets
    , fmap (("OutputFormat",) . toJSON) _glueTableStorageDescriptorOutputFormat
    , fmap (("Parameters",) . toJSON) _glueTableStorageDescriptorParameters
    , fmap (("SerdeInfo",) . toJSON) _glueTableStorageDescriptorSerdeInfo
    , fmap (("SkewedInfo",) . toJSON) _glueTableStorageDescriptorSkewedInfo
    , fmap (("SortColumns",) . toJSON) _glueTableStorageDescriptorSortColumns
    , fmap (("StoredAsSubDirectories",) . toJSON) _glueTableStorageDescriptorStoredAsSubDirectories
    ]

-- | Constructor for 'GlueTableStorageDescriptor' containing required fields
-- as arguments.
glueTableStorageDescriptor
  :: GlueTableStorageDescriptor
glueTableStorageDescriptor  =
  GlueTableStorageDescriptor
  { _glueTableStorageDescriptorBucketColumns = Nothing
  , _glueTableStorageDescriptorColumns = Nothing
  , _glueTableStorageDescriptorCompressed = Nothing
  , _glueTableStorageDescriptorInputFormat = Nothing
  , _glueTableStorageDescriptorLocation = Nothing
  , _glueTableStorageDescriptorNumberOfBuckets = Nothing
  , _glueTableStorageDescriptorOutputFormat = Nothing
  , _glueTableStorageDescriptorParameters = Nothing
  , _glueTableStorageDescriptorSerdeInfo = Nothing
  , _glueTableStorageDescriptorSkewedInfo = Nothing
  , _glueTableStorageDescriptorSortColumns = Nothing
  , _glueTableStorageDescriptorStoredAsSubDirectories = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-storagedescriptor.html#cfn-glue-table-storagedescriptor-bucketcolumns
gtsdBucketColumns :: Lens' GlueTableStorageDescriptor (Maybe (ValList Text))
gtsdBucketColumns = lens _glueTableStorageDescriptorBucketColumns (\s a -> s { _glueTableStorageDescriptorBucketColumns = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-storagedescriptor.html#cfn-glue-table-storagedescriptor-columns
gtsdColumns :: Lens' GlueTableStorageDescriptor (Maybe [GlueTableColumn])
gtsdColumns = lens _glueTableStorageDescriptorColumns (\s a -> s { _glueTableStorageDescriptorColumns = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-storagedescriptor.html#cfn-glue-table-storagedescriptor-compressed
gtsdCompressed :: Lens' GlueTableStorageDescriptor (Maybe (Val Bool))
gtsdCompressed = lens _glueTableStorageDescriptorCompressed (\s a -> s { _glueTableStorageDescriptorCompressed = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-storagedescriptor.html#cfn-glue-table-storagedescriptor-inputformat
gtsdInputFormat :: Lens' GlueTableStorageDescriptor (Maybe (Val Text))
gtsdInputFormat = lens _glueTableStorageDescriptorInputFormat (\s a -> s { _glueTableStorageDescriptorInputFormat = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-storagedescriptor.html#cfn-glue-table-storagedescriptor-location
gtsdLocation :: Lens' GlueTableStorageDescriptor (Maybe (Val Text))
gtsdLocation = lens _glueTableStorageDescriptorLocation (\s a -> s { _glueTableStorageDescriptorLocation = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-storagedescriptor.html#cfn-glue-table-storagedescriptor-numberofbuckets
gtsdNumberOfBuckets :: Lens' GlueTableStorageDescriptor (Maybe (Val Integer))
gtsdNumberOfBuckets = lens _glueTableStorageDescriptorNumberOfBuckets (\s a -> s { _glueTableStorageDescriptorNumberOfBuckets = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-storagedescriptor.html#cfn-glue-table-storagedescriptor-outputformat
gtsdOutputFormat :: Lens' GlueTableStorageDescriptor (Maybe (Val Text))
gtsdOutputFormat = lens _glueTableStorageDescriptorOutputFormat (\s a -> s { _glueTableStorageDescriptorOutputFormat = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-storagedescriptor.html#cfn-glue-table-storagedescriptor-parameters
gtsdParameters :: Lens' GlueTableStorageDescriptor (Maybe Object)
gtsdParameters = lens _glueTableStorageDescriptorParameters (\s a -> s { _glueTableStorageDescriptorParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-storagedescriptor.html#cfn-glue-table-storagedescriptor-serdeinfo
gtsdSerdeInfo :: Lens' GlueTableStorageDescriptor (Maybe GlueTableSerdeInfo)
gtsdSerdeInfo = lens _glueTableStorageDescriptorSerdeInfo (\s a -> s { _glueTableStorageDescriptorSerdeInfo = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-storagedescriptor.html#cfn-glue-table-storagedescriptor-skewedinfo
gtsdSkewedInfo :: Lens' GlueTableStorageDescriptor (Maybe GlueTableSkewedInfo)
gtsdSkewedInfo = lens _glueTableStorageDescriptorSkewedInfo (\s a -> s { _glueTableStorageDescriptorSkewedInfo = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-storagedescriptor.html#cfn-glue-table-storagedescriptor-sortcolumns
gtsdSortColumns :: Lens' GlueTableStorageDescriptor (Maybe [GlueTableOrder])
gtsdSortColumns = lens _glueTableStorageDescriptorSortColumns (\s a -> s { _glueTableStorageDescriptorSortColumns = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-storagedescriptor.html#cfn-glue-table-storagedescriptor-storedassubdirectories
gtsdStoredAsSubDirectories :: Lens' GlueTableStorageDescriptor (Maybe (Val Bool))
gtsdStoredAsSubDirectories = lens _glueTableStorageDescriptorStoredAsSubDirectories (\s a -> s { _glueTableStorageDescriptorStoredAsSubDirectories = a })
