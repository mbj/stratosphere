
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-systemcontrol.html

module Stratosphere.ResourceProperties.ECSTaskDefinitionSystemControl where

import Stratosphere.ResourceImports


-- | Full data type definition for ECSTaskDefinitionSystemControl. See
-- 'ecsTaskDefinitionSystemControl' for a more convenient constructor.
data ECSTaskDefinitionSystemControl =
  ECSTaskDefinitionSystemControl
  { _eCSTaskDefinitionSystemControlNamespace :: Maybe (Val Text)
  , _eCSTaskDefinitionSystemControlValue :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ECSTaskDefinitionSystemControl where
  toJSON ECSTaskDefinitionSystemControl{..} =
    object $
    catMaybes
    [ fmap (("Namespace",) . toJSON) _eCSTaskDefinitionSystemControlNamespace
    , fmap (("Value",) . toJSON) _eCSTaskDefinitionSystemControlValue
    ]

-- | Constructor for 'ECSTaskDefinitionSystemControl' containing required
-- fields as arguments.
ecsTaskDefinitionSystemControl
  :: ECSTaskDefinitionSystemControl
ecsTaskDefinitionSystemControl  =
  ECSTaskDefinitionSystemControl
  { _eCSTaskDefinitionSystemControlNamespace = Nothing
  , _eCSTaskDefinitionSystemControlValue = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-systemcontrol.html#cfn-ecs-taskdefinition-systemcontrol-namespace
ecstdscNamespace :: Lens' ECSTaskDefinitionSystemControl (Maybe (Val Text))
ecstdscNamespace = lens _eCSTaskDefinitionSystemControlNamespace (\s a -> s { _eCSTaskDefinitionSystemControlNamespace = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-systemcontrol.html#cfn-ecs-taskdefinition-systemcontrol-value
ecstdscValue :: Lens' ECSTaskDefinitionSystemControl (Maybe (Val Text))
ecstdscValue = lens _eCSTaskDefinitionSystemControlValue (\s a -> s { _eCSTaskDefinitionSystemControlValue = a })
