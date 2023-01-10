
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-sourceauth.html

module Stratosphere.ResourceProperties.CodeBuildProjectSourceAuth where

import Stratosphere.ResourceImports


-- | Full data type definition for CodeBuildProjectSourceAuth. See
-- 'codeBuildProjectSourceAuth' for a more convenient constructor.
data CodeBuildProjectSourceAuth =
  CodeBuildProjectSourceAuth
  { _codeBuildProjectSourceAuthResource :: Maybe (Val Text)
  , _codeBuildProjectSourceAuthType :: Val Text
  } deriving (Show, Eq)

instance ToJSON CodeBuildProjectSourceAuth where
  toJSON CodeBuildProjectSourceAuth{..} =
    object $
    catMaybes
    [ fmap (("Resource",) . toJSON) _codeBuildProjectSourceAuthResource
    , (Just . ("Type",) . toJSON) _codeBuildProjectSourceAuthType
    ]

-- | Constructor for 'CodeBuildProjectSourceAuth' containing required fields
-- as arguments.
codeBuildProjectSourceAuth
  :: Val Text -- ^ 'cbpsaType'
  -> CodeBuildProjectSourceAuth
codeBuildProjectSourceAuth typearg =
  CodeBuildProjectSourceAuth
  { _codeBuildProjectSourceAuthResource = Nothing
  , _codeBuildProjectSourceAuthType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-sourceauth.html#cfn-codebuild-project-sourceauth-resource
cbpsaResource :: Lens' CodeBuildProjectSourceAuth (Maybe (Val Text))
cbpsaResource = lens _codeBuildProjectSourceAuthResource (\s a -> s { _codeBuildProjectSourceAuthResource = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-sourceauth.html#cfn-codebuild-project-sourceauth-type
cbpsaType :: Lens' CodeBuildProjectSourceAuth (Val Text)
cbpsaType = lens _codeBuildProjectSourceAuthType (\s a -> s { _codeBuildProjectSourceAuthType = a })
