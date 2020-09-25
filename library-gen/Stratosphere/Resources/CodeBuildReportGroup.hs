{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-reportgroup.html

module Stratosphere.Resources.CodeBuildReportGroup where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CodeBuildReportGroupReportExportConfig
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for CodeBuildReportGroup. See
-- 'codeBuildReportGroup' for a more convenient constructor.
data CodeBuildReportGroup =
  CodeBuildReportGroup
  { _codeBuildReportGroupDeleteReports :: Maybe (Val Bool)
  , _codeBuildReportGroupExportConfig :: CodeBuildReportGroupReportExportConfig
  , _codeBuildReportGroupName :: Maybe (Val Text)
  , _codeBuildReportGroupTags :: Maybe [Tag]
  , _codeBuildReportGroupType :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties CodeBuildReportGroup where
  toResourceProperties CodeBuildReportGroup{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::CodeBuild::ReportGroup"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
        [ fmap (("DeleteReports",) . toJSON) _codeBuildReportGroupDeleteReports
        , (Just . ("ExportConfig",) . toJSON) _codeBuildReportGroupExportConfig
        , fmap (("Name",) . toJSON) _codeBuildReportGroupName
        , fmap (("Tags",) . toJSON) _codeBuildReportGroupTags
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
  { _codeBuildReportGroupDeleteReports = Nothing
  , _codeBuildReportGroupExportConfig = exportConfigarg
  , _codeBuildReportGroupName = Nothing
  , _codeBuildReportGroupTags = Nothing
  , _codeBuildReportGroupType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-reportgroup.html#cfn-codebuild-reportgroup-deletereports
cbrgDeleteReports :: Lens' CodeBuildReportGroup (Maybe (Val Bool))
cbrgDeleteReports = lens _codeBuildReportGroupDeleteReports (\s a -> s { _codeBuildReportGroupDeleteReports = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-reportgroup.html#cfn-codebuild-reportgroup-exportconfig
cbrgExportConfig :: Lens' CodeBuildReportGroup CodeBuildReportGroupReportExportConfig
cbrgExportConfig = lens _codeBuildReportGroupExportConfig (\s a -> s { _codeBuildReportGroupExportConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-reportgroup.html#cfn-codebuild-reportgroup-name
cbrgName :: Lens' CodeBuildReportGroup (Maybe (Val Text))
cbrgName = lens _codeBuildReportGroupName (\s a -> s { _codeBuildReportGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-reportgroup.html#cfn-codebuild-reportgroup-tags
cbrgTags :: Lens' CodeBuildReportGroup (Maybe [Tag])
cbrgTags = lens _codeBuildReportGroupTags (\s a -> s { _codeBuildReportGroupTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-reportgroup.html#cfn-codebuild-reportgroup-type
cbrgType :: Lens' CodeBuildReportGroup (Val Text)
cbrgType = lens _codeBuildReportGroupType (\s a -> s { _codeBuildReportGroupType = a })
