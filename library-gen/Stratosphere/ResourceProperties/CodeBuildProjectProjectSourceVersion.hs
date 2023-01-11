
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectsourceversion.html

module Stratosphere.ResourceProperties.CodeBuildProjectProjectSourceVersion where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for CodeBuildProjectProjectSourceVersion. See
-- 'codeBuildProjectProjectSourceVersion' for a more convenient constructor.
data CodeBuildProjectProjectSourceVersion =
  CodeBuildProjectProjectSourceVersion
  { _codeBuildProjectProjectSourceVersionSourceIdentifier :: Val Text
  , _codeBuildProjectProjectSourceVersionSourceVersion :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON CodeBuildProjectProjectSourceVersion where
  toJSON CodeBuildProjectProjectSourceVersion{..} =
    object $
    catMaybes
    [ (Just . ("SourceIdentifier",) . toJSON) _codeBuildProjectProjectSourceVersionSourceIdentifier
    , fmap (("SourceVersion",) . toJSON) _codeBuildProjectProjectSourceVersionSourceVersion
    ]

-- | Constructor for 'CodeBuildProjectProjectSourceVersion' containing
-- required fields as arguments.
codeBuildProjectProjectSourceVersion
  :: Val Text -- ^ 'cbppsvSourceIdentifier'
  -> CodeBuildProjectProjectSourceVersion
codeBuildProjectProjectSourceVersion sourceIdentifierarg =
  CodeBuildProjectProjectSourceVersion
  { _codeBuildProjectProjectSourceVersionSourceIdentifier = sourceIdentifierarg
  , _codeBuildProjectProjectSourceVersionSourceVersion = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectsourceversion.html#cfn-codebuild-project-projectsourceversion-sourceidentifier
cbppsvSourceIdentifier :: Lens' CodeBuildProjectProjectSourceVersion (Val Text)
cbppsvSourceIdentifier = lens _codeBuildProjectProjectSourceVersionSourceIdentifier (\s a -> s { _codeBuildProjectProjectSourceVersionSourceIdentifier = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectsourceversion.html#cfn-codebuild-project-projectsourceversion-sourceversion
cbppsvSourceVersion :: Lens' CodeBuildProjectProjectSourceVersion (Maybe (Val Text))
cbppsvSourceVersion = lens _codeBuildProjectProjectSourceVersionSourceVersion (\s a -> s { _codeBuildProjectProjectSourceVersionSourceVersion = a })
