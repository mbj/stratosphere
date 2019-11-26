{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-reportgroup-reportexportconfig.html

module Stratosphere.ResourceProperties.CodeBuildReportGroupReportExportConfig where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CodeBuildReportGroupS3ReportExportConfig

-- | Full data type definition for CodeBuildReportGroupReportExportConfig. See
-- 'codeBuildReportGroupReportExportConfig' for a more convenient
-- constructor.
data CodeBuildReportGroupReportExportConfig =
  CodeBuildReportGroupReportExportConfig
  { _codeBuildReportGroupReportExportConfigExportConfigType :: Val Text
  , _codeBuildReportGroupReportExportConfigS3Destination :: Maybe CodeBuildReportGroupS3ReportExportConfig
  } deriving (Show, Eq)

instance ToJSON CodeBuildReportGroupReportExportConfig where
  toJSON CodeBuildReportGroupReportExportConfig{..} =
    object $
    catMaybes
    [ (Just . ("ExportConfigType",) . toJSON) _codeBuildReportGroupReportExportConfigExportConfigType
    , fmap (("S3Destination",) . toJSON) _codeBuildReportGroupReportExportConfigS3Destination
    ]

-- | Constructor for 'CodeBuildReportGroupReportExportConfig' containing
-- required fields as arguments.
codeBuildReportGroupReportExportConfig
  :: Val Text -- ^ 'cbrgrecExportConfigType'
  -> CodeBuildReportGroupReportExportConfig
codeBuildReportGroupReportExportConfig exportConfigTypearg =
  CodeBuildReportGroupReportExportConfig
  { _codeBuildReportGroupReportExportConfigExportConfigType = exportConfigTypearg
  , _codeBuildReportGroupReportExportConfigS3Destination = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-reportgroup-reportexportconfig.html#cfn-codebuild-reportgroup-reportexportconfig-exportconfigtype
cbrgrecExportConfigType :: Lens' CodeBuildReportGroupReportExportConfig (Val Text)
cbrgrecExportConfigType = lens _codeBuildReportGroupReportExportConfigExportConfigType (\s a -> s { _codeBuildReportGroupReportExportConfigExportConfigType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-reportgroup-reportexportconfig.html#cfn-codebuild-reportgroup-reportexportconfig-s3destination
cbrgrecS3Destination :: Lens' CodeBuildReportGroupReportExportConfig (Maybe CodeBuildReportGroupS3ReportExportConfig)
cbrgrecS3Destination = lens _codeBuildReportGroupReportExportConfigS3Destination (\s a -> s { _codeBuildReportGroupReportExportConfigS3Destination = a })
