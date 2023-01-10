
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-environmentvariable.html

module Stratosphere.ResourceProperties.AmplifyAppEnvironmentVariable where

import Stratosphere.ResourceImports


-- | Full data type definition for AmplifyAppEnvironmentVariable. See
-- 'amplifyAppEnvironmentVariable' for a more convenient constructor.
data AmplifyAppEnvironmentVariable =
  AmplifyAppEnvironmentVariable
  { _amplifyAppEnvironmentVariableName :: Val Text
  , _amplifyAppEnvironmentVariableValue :: Val Text
  } deriving (Show, Eq)

instance ToJSON AmplifyAppEnvironmentVariable where
  toJSON AmplifyAppEnvironmentVariable{..} =
    object $
    catMaybes
    [ (Just . ("Name",) . toJSON) _amplifyAppEnvironmentVariableName
    , (Just . ("Value",) . toJSON) _amplifyAppEnvironmentVariableValue
    ]

-- | Constructor for 'AmplifyAppEnvironmentVariable' containing required
-- fields as arguments.
amplifyAppEnvironmentVariable
  :: Val Text -- ^ 'aaevName'
  -> Val Text -- ^ 'aaevValue'
  -> AmplifyAppEnvironmentVariable
amplifyAppEnvironmentVariable namearg valuearg =
  AmplifyAppEnvironmentVariable
  { _amplifyAppEnvironmentVariableName = namearg
  , _amplifyAppEnvironmentVariableValue = valuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-environmentvariable.html#cfn-amplify-app-environmentvariable-name
aaevName :: Lens' AmplifyAppEnvironmentVariable (Val Text)
aaevName = lens _amplifyAppEnvironmentVariableName (\s a -> s { _amplifyAppEnvironmentVariableName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-environmentvariable.html#cfn-amplify-app-environmentvariable-value
aaevValue :: Lens' AmplifyAppEnvironmentVariable (Val Text)
aaevValue = lens _amplifyAppEnvironmentVariableValue (\s a -> s { _amplifyAppEnvironmentVariableValue = a })
