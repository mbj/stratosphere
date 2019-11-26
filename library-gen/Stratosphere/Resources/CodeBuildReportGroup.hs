{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-reportgroup.html

module Stratosphere.Resources.CodeBuildReportGroup where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CodeBuildReportGroupReportExportConfig

-- | Full data type definition for CodeBuildReportGroup. See
-- 'codeBuildReportGroup' for a more convenient constructor.
data CodeBuildReportGroup =
  CodeBuildReportGroup
  { _codeBuildReportGroupExportConfig :: CodeBuildReportGroupReportExportConfig
  , _codeBuildReportGroupName :: Maybe (Val Text)
  , _codeBuildReportGroupType :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties CodeBuildReportGroup where
  toResourceProperties CodeBuildReportGroup{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::CodeBuild::ReportGroup"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
        [ (Just . ("ExportConfig",) . toJSON) _codeBuildReportGroupExportConfig
        , fmap (("Name",) . toJSON) _codeBuildReportGroupName
        , (Just . ("Type",) . toJSON) _codeBuildReportGroupType
        ]
    }

-- | Constructor for 'CodeBuildReportGroup' containing required fields as
-- arguments.
codeBuildReportGroup
  :: CodeBuildReportGroupReportExportConfig -- ^ 'cbrgExportConfig'
  -> Val Text -- ^ 'cbrgType'
  -> CodeBuildReportGroup
codeBuildReportGroup exportConfigarg typearg =
  CodeBuildReportGroup
  { _codeBuildReportGroupExportConfig = exportConfigarg
  , _codeBuildReportGroupName = Nothing
  , _codeBuildReportGroupType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-reportgroup.html#cfn-codebuild-reportgroup-exportconfig
cbrgExportConfig :: Lens' CodeBuildReportGroup CodeBuildReportGroupReportExportConfig
cbrgExportConfig = lens _codeBuildReportGroupExportConfig (\s a -> s { _codeBuildReportGroupExportConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-reportgroup.html#cfn-codebuild-reportgroup-name
cbrgName :: Lens' CodeBuildReportGroup (Maybe (Val Text))
cbrgName = lens _codeBuildReportGroupName (\s a -> s { _codeBuildReportGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-reportgroup.html#cfn-codebuild-reportgroup-type
cbrgType :: Lens' CodeBuildReportGroup (Val Text)
cbrgType = lens _codeBuildReportGroupType (\s a -> s { _codeBuildReportGroupType = a })
