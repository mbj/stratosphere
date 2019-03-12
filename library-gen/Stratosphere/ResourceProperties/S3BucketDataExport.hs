{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-dataexport.html

module Stratosphere.ResourceProperties.S3BucketDataExport where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.S3BucketDestination

-- | Full data type definition for S3BucketDataExport. See
-- 's3BucketDataExport' for a more convenient constructor.
data S3BucketDataExport =
  S3BucketDataExport
  { _s3BucketDataExportDestination :: S3BucketDestination
  , _s3BucketDataExportOutputSchemaVersion :: Val Text
  } deriving (Show, Eq)

instance ToJSON S3BucketDataExport where
  toJSON S3BucketDataExport{..} =
    object $
    catMaybes
    [ (Just . ("Destination",) . toJSON) _s3BucketDataExportDestination
    , (Just . ("OutputSchemaVersion",) . toJSON) _s3BucketDataExportOutputSchemaVersion
    ]

-- | Constructor for 'S3BucketDataExport' containing required fields as
-- arguments.
s3BucketDataExport
  :: S3BucketDestination -- ^ 'sbdeDestination'
  -> Val Text -- ^ 'sbdeOutputSchemaVersion'
  -> S3BucketDataExport
s3BucketDataExport destinationarg outputSchemaVersionarg =
  S3BucketDataExport
  { _s3BucketDataExportDestination = destinationarg
  , _s3BucketDataExportOutputSchemaVersion = outputSchemaVersionarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-dataexport.html#cfn-s3-bucket-dataexport-destination
sbdeDestination :: Lens' S3BucketDataExport S3BucketDestination
sbdeDestination = lens _s3BucketDataExportDestination (\s a -> s { _s3BucketDataExportDestination = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-dataexport.html#cfn-s3-bucket-dataexport-outputschemaversion
sbdeOutputSchemaVersion :: Lens' S3BucketDataExport (Val Text)
sbdeOutputSchemaVersion = lens _s3BucketDataExportOutputSchemaVersion (\s a -> s { _s3BucketDataExportOutputSchemaVersion = a })
