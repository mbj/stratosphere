
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-branch-environmentvariable.html

module Stratosphere.ResourceProperties.AmplifyBranchEnvironmentVariable where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for AmplifyBranchEnvironmentVariable. See
-- 'amplifyBranchEnvironmentVariable' for a more convenient constructor.
data AmplifyBranchEnvironmentVariable =
  AmplifyBranchEnvironmentVariable
  { _amplifyBranchEnvironmentVariableName :: Val Text
  , _amplifyBranchEnvironmentVariableValue :: Val Text
  } deriving (Show, Eq)

instance ToJSON AmplifyBranchEnvironmentVariable where
  toJSON AmplifyBranchEnvironmentVariable{..} =
    object $
    catMaybes
    [ (Just . ("Name",) . toJSON) _amplifyBranchEnvironmentVariableName
    , (Just . ("Value",) . toJSON) _amplifyBranchEnvironmentVariableValue
    ]

-- | Constructor for 'AmplifyBranchEnvironmentVariable' containing required
-- fields as arguments.
amplifyBranchEnvironmentVariable
  :: Val Text -- ^ 'abevName'
  -> Val Text -- ^ 'abevValue'
  -> AmplifyBranchEnvironmentVariable
amplifyBranchEnvironmentVariable namearg valuearg =
  AmplifyBranchEnvironmentVariable
  { _amplifyBranchEnvironmentVariableName = namearg
  , _amplifyBranchEnvironmentVariableValue = valuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-branch-environmentvariable.html#cfn-amplify-branch-environmentvariable-name
abevName :: Lens' AmplifyBranchEnvironmentVariable (Val Text)
abevName = lens _amplifyBranchEnvironmentVariableName (\s a -> s { _amplifyBranchEnvironmentVariableName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-branch-environmentvariable.html#cfn-amplify-branch-environmentvariable-value
abevValue :: Lens' AmplifyBranchEnvironmentVariable (Val Text)
abevValue = lens _amplifyBranchEnvironmentVariableValue (\s a -> s { _amplifyBranchEnvironmentVariableValue = a })
