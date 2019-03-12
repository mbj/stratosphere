{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-ulimit.html

module Stratosphere.ResourceProperties.ECSTaskDefinitionUlimit where

import Stratosphere.ResourceImports


-- | Full data type definition for ECSTaskDefinitionUlimit. See
-- 'ecsTaskDefinitionUlimit' for a more convenient constructor.
data ECSTaskDefinitionUlimit =
  ECSTaskDefinitionUlimit
  { _eCSTaskDefinitionUlimitHardLimit :: Val Integer
  , _eCSTaskDefinitionUlimitName :: Val Text
  , _eCSTaskDefinitionUlimitSoftLimit :: Val Integer
  } deriving (Show, Eq)

instance ToJSON ECSTaskDefinitionUlimit where
  toJSON ECSTaskDefinitionUlimit{..} =
    object $
    catMaybes
    [ (Just . ("HardLimit",) . toJSON) _eCSTaskDefinitionUlimitHardLimit
    , (Just . ("Name",) . toJSON) _eCSTaskDefinitionUlimitName
    , (Just . ("SoftLimit",) . toJSON) _eCSTaskDefinitionUlimitSoftLimit
    ]

-- | Constructor for 'ECSTaskDefinitionUlimit' containing required fields as
-- arguments.
ecsTaskDefinitionUlimit
  :: Val Integer -- ^ 'ecstduHardLimit'
  -> Val Text -- ^ 'ecstduName'
  -> Val Integer -- ^ 'ecstduSoftLimit'
  -> ECSTaskDefinitionUlimit
ecsTaskDefinitionUlimit hardLimitarg namearg softLimitarg =
  ECSTaskDefinitionUlimit
  { _eCSTaskDefinitionUlimitHardLimit = hardLimitarg
  , _eCSTaskDefinitionUlimitName = namearg
  , _eCSTaskDefinitionUlimitSoftLimit = softLimitarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-ulimit.html#cfn-ecs-taskdefinition-containerdefinition-ulimit-hardlimit
ecstduHardLimit :: Lens' ECSTaskDefinitionUlimit (Val Integer)
ecstduHardLimit = lens _eCSTaskDefinitionUlimitHardLimit (\s a -> s { _eCSTaskDefinitionUlimitHardLimit = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-ulimit.html#cfn-ecs-taskdefinition-containerdefinition-ulimit-name
ecstduName :: Lens' ECSTaskDefinitionUlimit (Val Text)
ecstduName = lens _eCSTaskDefinitionUlimitName (\s a -> s { _eCSTaskDefinitionUlimitName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-ulimit.html#cfn-ecs-taskdefinition-containerdefinition-ulimit-softlimit
ecstduSoftLimit :: Lens' ECSTaskDefinitionUlimit (Val Integer)
ecstduSoftLimit = lens _eCSTaskDefinitionUlimitSoftLimit (\s a -> s { _eCSTaskDefinitionUlimitSoftLimit = a })
