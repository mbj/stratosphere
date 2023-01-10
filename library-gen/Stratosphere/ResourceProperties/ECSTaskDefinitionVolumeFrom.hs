
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-volumesfrom.html

module Stratosphere.ResourceProperties.ECSTaskDefinitionVolumeFrom where

import Stratosphere.ResourceImports


-- | Full data type definition for ECSTaskDefinitionVolumeFrom. See
-- 'ecsTaskDefinitionVolumeFrom' for a more convenient constructor.
data ECSTaskDefinitionVolumeFrom =
  ECSTaskDefinitionVolumeFrom
  { _eCSTaskDefinitionVolumeFromReadOnly :: Maybe (Val Bool)
  , _eCSTaskDefinitionVolumeFromSourceContainer :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ECSTaskDefinitionVolumeFrom where
  toJSON ECSTaskDefinitionVolumeFrom{..} =
    object $
    catMaybes
    [ fmap (("ReadOnly",) . toJSON) _eCSTaskDefinitionVolumeFromReadOnly
    , fmap (("SourceContainer",) . toJSON) _eCSTaskDefinitionVolumeFromSourceContainer
    ]

-- | Constructor for 'ECSTaskDefinitionVolumeFrom' containing required fields
-- as arguments.
ecsTaskDefinitionVolumeFrom
  :: ECSTaskDefinitionVolumeFrom
ecsTaskDefinitionVolumeFrom  =
  ECSTaskDefinitionVolumeFrom
  { _eCSTaskDefinitionVolumeFromReadOnly = Nothing
  , _eCSTaskDefinitionVolumeFromSourceContainer = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-volumesfrom.html#cfn-ecs-taskdefinition-containerdefinition-volumesfrom-readonly
ecstdvfReadOnly :: Lens' ECSTaskDefinitionVolumeFrom (Maybe (Val Bool))
ecstdvfReadOnly = lens _eCSTaskDefinitionVolumeFromReadOnly (\s a -> s { _eCSTaskDefinitionVolumeFromReadOnly = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-volumesfrom.html#cfn-ecs-taskdefinition-containerdefinition-volumesfrom-sourcecontainer
ecstdvfSourceContainer :: Lens' ECSTaskDefinitionVolumeFrom (Maybe (Val Text))
ecstdvfSourceContainer = lens _eCSTaskDefinitionVolumeFromSourceContainer (\s a -> s { _eCSTaskDefinitionVolumeFromSourceContainer = a })
