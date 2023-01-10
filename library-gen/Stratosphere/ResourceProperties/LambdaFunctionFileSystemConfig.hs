
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-filesystemconfig.html

module Stratosphere.ResourceProperties.LambdaFunctionFileSystemConfig where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for LambdaFunctionFileSystemConfig. See
-- 'lambdaFunctionFileSystemConfig' for a more convenient constructor.
data LambdaFunctionFileSystemConfig =
  LambdaFunctionFileSystemConfig
  { _lambdaFunctionFileSystemConfigArn :: Val Text
  , _lambdaFunctionFileSystemConfigLocalMountPath :: Val Text
  } deriving (Show, Eq)

instance ToJSON LambdaFunctionFileSystemConfig where
  toJSON LambdaFunctionFileSystemConfig{..} =
    object $
    catMaybes
    [ (Just . ("Arn",) . toJSON) _lambdaFunctionFileSystemConfigArn
    , (Just . ("LocalMountPath",) . toJSON) _lambdaFunctionFileSystemConfigLocalMountPath
    ]

-- | Constructor for 'LambdaFunctionFileSystemConfig' containing required
-- fields as arguments.
lambdaFunctionFileSystemConfig
  :: Val Text -- ^ 'lffscArn'
  -> Val Text -- ^ 'lffscLocalMountPath'
  -> LambdaFunctionFileSystemConfig
lambdaFunctionFileSystemConfig arnarg localMountPatharg =
  LambdaFunctionFileSystemConfig
  { _lambdaFunctionFileSystemConfigArn = arnarg
  , _lambdaFunctionFileSystemConfigLocalMountPath = localMountPatharg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-filesystemconfig.html#cfn-lambda-function-filesystemconfig-arn
lffscArn :: Lens' LambdaFunctionFileSystemConfig (Val Text)
lffscArn = lens _lambdaFunctionFileSystemConfigArn (\s a -> s { _lambdaFunctionFileSystemConfigArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-filesystemconfig.html#cfn-lambda-function-filesystemconfig-localmountpath
lffscLocalMountPath :: Lens' LambdaFunctionFileSystemConfig (Val Text)
lffscLocalMountPath = lens _lambdaFunctionFileSystemConfigLocalMountPath (\s a -> s { _lambdaFunctionFileSystemConfigLocalMountPath = a })
