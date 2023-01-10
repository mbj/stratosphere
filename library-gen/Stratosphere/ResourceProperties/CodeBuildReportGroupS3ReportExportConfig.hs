
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-reportgroup-s3reportexportconfig.html

module Stratosphere.ResourceProperties.CodeBuildReportGroupS3ReportExportConfig where

import Stratosphere.ResourceImports


-- | Full data type definition for CodeBuildReportGroupS3ReportExportConfig.
-- See 'codeBuildReportGroupS3ReportExportConfig' for a more convenient
-- constructor.
data CodeBuildReportGroupS3ReportExportConfig =
  CodeBuildReportGroupS3ReportExportConfig
  { _codeBuildReportGroupS3ReportExportConfigBucket :: Val Text
  , _codeBuildReportGroupS3ReportExportConfigEncryptionDisabled :: Maybe (Val Bool)
  , _codeBuildReportGroupS3ReportExportConfigEncryptionKey :: Maybe (Val Text)
  , _codeBuildReportGroupS3ReportExportConfigPackaging :: Maybe (Val Text)
  , _codeBuildReportGroupS3ReportExportConfigPath :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON CodeBuildReportGroupS3ReportExportConfig where
  toJSON CodeBuildReportGroupS3ReportExportConfig{..} =
    object $
    catMaybes
    [ (Just . ("Bucket",) . toJSON) _codeBuildReportGroupS3ReportExportConfigBucket
    , fmap (("EncryptionDisabled",) . toJSON) _codeBuildReportGroupS3ReportExportConfigEncryptionDisabled
    , fmap (("EncryptionKey",) . toJSON) _codeBuildReportGroupS3ReportExportConfigEncryptionKey
    , fmap (("Packaging",) . toJSON) _codeBuildReportGroupS3ReportExportConfigPackaging
    , fmap (("Path",) . toJSON) _codeBuildReportGroupS3ReportExportConfigPath
    ]

-- | Constructor for 'CodeBuildReportGroupS3ReportExportConfig' containing
-- required fields as arguments.
codeBuildReportGroupS3ReportExportConfig
  :: Val Text -- ^ 'cbrgsrecBucket'
  -> CodeBuildReportGroupS3ReportExportConfig
codeBuildReportGroupS3ReportExportConfig bucketarg =
  CodeBuildReportGroupS3ReportExportConfig
  { _codeBuildReportGroupS3ReportExportConfigBucket = bucketarg
  , _codeBuildReportGroupS3ReportExportConfigEncryptionDisabled = Nothing
  , _codeBuildReportGroupS3ReportExportConfigEncryptionKey = Nothing
  , _codeBuildReportGroupS3ReportExportConfigPackaging = Nothing
  , _codeBuildReportGroupS3ReportExportConfigPath = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-reportgroup-s3reportexportconfig.html#cfn-codebuild-reportgroup-s3reportexportconfig-bucket
cbrgsrecBucket :: Lens' CodeBuildReportGroupS3ReportExportConfig (Val Text)
cbrgsrecBucket = lens _codeBuildReportGroupS3ReportExportConfigBucket (\s a -> s { _codeBuildReportGroupS3ReportExportConfigBucket = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-reportgroup-s3reportexportconfig.html#cfn-codebuild-reportgroup-s3reportexportconfig-encryptiondisabled
cbrgsrecEncryptionDisabled :: Lens' CodeBuildReportGroupS3ReportExportConfig (Maybe (Val Bool))
cbrgsrecEncryptionDisabled = lens _codeBuildReportGroupS3ReportExportConfigEncryptionDisabled (\s a -> s { _codeBuildReportGroupS3ReportExportConfigEncryptionDisabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-reportgroup-s3reportexportconfig.html#cfn-codebuild-reportgroup-s3reportexportconfig-encryptionkey
cbrgsrecEncryptionKey :: Lens' CodeBuildReportGroupS3ReportExportConfig (Maybe (Val Text))
cbrgsrecEncryptionKey = lens _codeBuildReportGroupS3ReportExportConfigEncryptionKey (\s a -> s { _codeBuildReportGroupS3ReportExportConfigEncryptionKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-reportgroup-s3reportexportconfig.html#cfn-codebuild-reportgroup-s3reportexportconfig-packaging
cbrgsrecPackaging :: Lens' CodeBuildReportGroupS3ReportExportConfig (Maybe (Val Text))
cbrgsrecPackaging = lens _codeBuildReportGroupS3ReportExportConfigPackaging (\s a -> s { _codeBuildReportGroupS3ReportExportConfigPackaging = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-reportgroup-s3reportexportconfig.html#cfn-codebuild-reportgroup-s3reportexportconfig-path
cbrgsrecPath :: Lens' CodeBuildReportGroupS3ReportExportConfig (Maybe (Val Text))
cbrgsrecPath = lens _codeBuildReportGroupS3ReportExportConfigPath (\s a -> s { _codeBuildReportGroupS3ReportExportConfigPath = a })
