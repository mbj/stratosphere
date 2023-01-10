
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-storageclassanalysis.html

module Stratosphere.ResourceProperties.S3BucketStorageClassAnalysis where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.S3BucketDataExport

-- | Full data type definition for S3BucketStorageClassAnalysis. See
-- 's3BucketStorageClassAnalysis' for a more convenient constructor.
data S3BucketStorageClassAnalysis =
  S3BucketStorageClassAnalysis
  { _s3BucketStorageClassAnalysisDataExport :: Maybe S3BucketDataExport
  } deriving (Show, Eq)

instance ToJSON S3BucketStorageClassAnalysis where
  toJSON S3BucketStorageClassAnalysis{..} =
    object $
    catMaybes
    [ fmap (("DataExport",) . toJSON) _s3BucketStorageClassAnalysisDataExport
    ]

-- | Constructor for 'S3BucketStorageClassAnalysis' containing required fields
-- as arguments.
s3BucketStorageClassAnalysis
  :: S3BucketStorageClassAnalysis
s3BucketStorageClassAnalysis  =
  S3BucketStorageClassAnalysis
  { _s3BucketStorageClassAnalysisDataExport = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-storageclassanalysis.html#cfn-s3-bucket-storageclassanalysis-dataexport
sbscaDataExport :: Lens' S3BucketStorageClassAnalysis (Maybe S3BucketDataExport)
sbscaDataExport = lens _s3BucketStorageClassAnalysisDataExport (\s a -> s { _s3BucketStorageClassAnalysisDataExport = a })
