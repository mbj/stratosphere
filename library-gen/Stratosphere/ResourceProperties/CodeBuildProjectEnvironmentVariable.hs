
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environmentvariable.html

module Stratosphere.ResourceProperties.CodeBuildProjectEnvironmentVariable where

import Stratosphere.ResourceImports


-- | Full data type definition for CodeBuildProjectEnvironmentVariable. See
-- 'codeBuildProjectEnvironmentVariable' for a more convenient constructor.
data CodeBuildProjectEnvironmentVariable =
  CodeBuildProjectEnvironmentVariable
  { _codeBuildProjectEnvironmentVariableName :: Val Text
  , _codeBuildProjectEnvironmentVariableType :: Maybe (Val Text)
  , _codeBuildProjectEnvironmentVariableValue :: Val Text
  } deriving (Show, Eq)

instance ToJSON CodeBuildProjectEnvironmentVariable where
  toJSON CodeBuildProjectEnvironmentVariable{..} =
    object $
    catMaybes
    [ (Just . ("Name",) . toJSON) _codeBuildProjectEnvironmentVariableName
    , fmap (("Type",) . toJSON) _codeBuildProjectEnvironmentVariableType
    , (Just . ("Value",) . toJSON) _codeBuildProjectEnvironmentVariableValue
    ]

-- | Constructor for 'CodeBuildProjectEnvironmentVariable' containing required
-- fields as arguments.
codeBuildProjectEnvironmentVariable
  :: Val Text -- ^ 'cbpevName'
  -> Val Text -- ^ 'cbpevValue'
  -> CodeBuildProjectEnvironmentVariable
codeBuildProjectEnvironmentVariable namearg valuearg =
  CodeBuildProjectEnvironmentVariable
  { _codeBuildProjectEnvironmentVariableName = namearg
  , _codeBuildProjectEnvironmentVariableType = Nothing
  , _codeBuildProjectEnvironmentVariableValue = valuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environmentvariable.html#cfn-codebuild-project-environmentvariable-name
cbpevName :: Lens' CodeBuildProjectEnvironmentVariable (Val Text)
cbpevName = lens _codeBuildProjectEnvironmentVariableName (\s a -> s { _codeBuildProjectEnvironmentVariableName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environmentvariable.html#cfn-codebuild-project-environmentvariable-type
cbpevType :: Lens' CodeBuildProjectEnvironmentVariable (Maybe (Val Text))
cbpevType = lens _codeBuildProjectEnvironmentVariableType (\s a -> s { _codeBuildProjectEnvironmentVariableType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environmentvariable.html#cfn-codebuild-project-environmentvariable-value
cbpevValue :: Lens' CodeBuildProjectEnvironmentVariable (Val Text)
cbpevValue = lens _codeBuildProjectEnvironmentVariableValue (\s a -> s { _codeBuildProjectEnvironmentVariableValue = a })
