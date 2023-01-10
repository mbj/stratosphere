
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-environmentfile.html

module Stratosphere.ResourceProperties.ECSTaskDefinitionEnvironmentFile where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for ECSTaskDefinitionEnvironmentFile. See
-- 'ecsTaskDefinitionEnvironmentFile' for a more convenient constructor.
data ECSTaskDefinitionEnvironmentFile =
  ECSTaskDefinitionEnvironmentFile
  { _eCSTaskDefinitionEnvironmentFileType :: Maybe (Val Text)
  , _eCSTaskDefinitionEnvironmentFileValue :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ECSTaskDefinitionEnvironmentFile where
  toJSON ECSTaskDefinitionEnvironmentFile{..} =
    object $
    catMaybes
    [ fmap (("Type",) . toJSON) _eCSTaskDefinitionEnvironmentFileType
    , fmap (("Value",) . toJSON) _eCSTaskDefinitionEnvironmentFileValue
    ]

-- | Constructor for 'ECSTaskDefinitionEnvironmentFile' containing required
-- fields as arguments.
ecsTaskDefinitionEnvironmentFile
  :: ECSTaskDefinitionEnvironmentFile
ecsTaskDefinitionEnvironmentFile  =
  ECSTaskDefinitionEnvironmentFile
  { _eCSTaskDefinitionEnvironmentFileType = Nothing
  , _eCSTaskDefinitionEnvironmentFileValue = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-environmentfile.html#cfn-ecs-taskdefinition-environmentfile-type
ecstdefType :: Lens' ECSTaskDefinitionEnvironmentFile (Maybe (Val Text))
ecstdefType = lens _eCSTaskDefinitionEnvironmentFileType (\s a -> s { _eCSTaskDefinitionEnvironmentFileType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-environmentfile.html#cfn-ecs-taskdefinition-environmentfile-value
ecstdefValue :: Lens' ECSTaskDefinitionEnvironmentFile (Maybe (Val Text))
ecstdefValue = lens _eCSTaskDefinitionEnvironmentFileValue (\s a -> s { _eCSTaskDefinitionEnvironmentFileValue = a })
