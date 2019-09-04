{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-systemcontrol.html

module Stratosphere.ResourceProperties.ECSTaskDefinitionSystemControl where

import Stratosphere.ResourceImports


-- | Full data type definition for ECSTaskDefinitionSystemControl. See
-- 'ecsTaskDefinitionSystemControl' for a more convenient constructor.
data ECSTaskDefinitionSystemControl =
  ECSTaskDefinitionSystemControl
  { _eCSTaskDefinitionSystemControlNamespace :: Val Text
  , _eCSTaskDefinitionSystemControlValue :: Val Text
  } deriving (Show, Eq)

instance ToJSON ECSTaskDefinitionSystemControl where
  toJSON ECSTaskDefinitionSystemControl{..} =
    object $
    catMaybes
    [ (Just . ("Namespace",) . toJSON) _eCSTaskDefinitionSystemControlNamespace
    , (Just . ("Value",) . toJSON) _eCSTaskDefinitionSystemControlValue
    ]

-- | Constructor for 'ECSTaskDefinitionSystemControl' containing required
-- fields as arguments.
ecsTaskDefinitionSystemControl
  :: Val Text -- ^ 'ecstdscNamespace'
  -> Val Text -- ^ 'ecstdscValue'
  -> ECSTaskDefinitionSystemControl
ecsTaskDefinitionSystemControl namespacearg valuearg =
  ECSTaskDefinitionSystemControl
  { _eCSTaskDefinitionSystemControlNamespace = namespacearg
  , _eCSTaskDefinitionSystemControlValue = valuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-systemcontrol.html#cfn-ecs-taskdefinition-systemcontrol-namespace
ecstdscNamespace :: Lens' ECSTaskDefinitionSystemControl (Val Text)
ecstdscNamespace = lens _eCSTaskDefinitionSystemControlNamespace (\s a -> s { _eCSTaskDefinitionSystemControlNamespace = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-systemcontrol.html#cfn-ecs-taskdefinition-systemcontrol-value
ecstdscValue :: Lens' ECSTaskDefinitionSystemControl (Val Text)
ecstdscValue = lens _eCSTaskDefinitionSystemControlValue (\s a -> s { _eCSTaskDefinitionSystemControlValue = a })
