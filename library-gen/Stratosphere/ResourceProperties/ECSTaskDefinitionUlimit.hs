{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-ulimit.html

module Stratosphere.ResourceProperties.ECSTaskDefinitionUlimit where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for ECSTaskDefinitionUlimit. See
-- 'ecsTaskDefinitionUlimit' for a more convenient constructor.
data ECSTaskDefinitionUlimit =
  ECSTaskDefinitionUlimit
  { _eCSTaskDefinitionUlimitHardLimit :: Val Integer'
  , _eCSTaskDefinitionUlimitName :: Val Text
  , _eCSTaskDefinitionUlimitSoftLimit :: Val Integer'
  } deriving (Show, Eq)

instance ToJSON ECSTaskDefinitionUlimit where
  toJSON ECSTaskDefinitionUlimit{..} =
    object $
    catMaybes
    [ Just ("HardLimit" .= _eCSTaskDefinitionUlimitHardLimit)
    , Just ("Name" .= _eCSTaskDefinitionUlimitName)
    , Just ("SoftLimit" .= _eCSTaskDefinitionUlimitSoftLimit)
    ]

instance FromJSON ECSTaskDefinitionUlimit where
  parseJSON (Object obj) =
    ECSTaskDefinitionUlimit <$>
      obj .: "HardLimit" <*>
      obj .: "Name" <*>
      obj .: "SoftLimit"
  parseJSON _ = mempty

-- | Constructor for 'ECSTaskDefinitionUlimit' containing required fields as
-- arguments.
ecsTaskDefinitionUlimit
  :: Val Integer' -- ^ 'ecstduHardLimit'
  -> Val Text -- ^ 'ecstduName'
  -> Val Integer' -- ^ 'ecstduSoftLimit'
  -> ECSTaskDefinitionUlimit
ecsTaskDefinitionUlimit hardLimitarg namearg softLimitarg =
  ECSTaskDefinitionUlimit
  { _eCSTaskDefinitionUlimitHardLimit = hardLimitarg
  , _eCSTaskDefinitionUlimitName = namearg
  , _eCSTaskDefinitionUlimitSoftLimit = softLimitarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-ulimit.html#cfn-ecs-taskdefinition-containerdefinition-ulimit-hardlimit
ecstduHardLimit :: Lens' ECSTaskDefinitionUlimit (Val Integer')
ecstduHardLimit = lens _eCSTaskDefinitionUlimitHardLimit (\s a -> s { _eCSTaskDefinitionUlimitHardLimit = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-ulimit.html#cfn-ecs-taskdefinition-containerdefinition-ulimit-name
ecstduName :: Lens' ECSTaskDefinitionUlimit (Val Text)
ecstduName = lens _eCSTaskDefinitionUlimitName (\s a -> s { _eCSTaskDefinitionUlimitName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-ulimit.html#cfn-ecs-taskdefinition-containerdefinition-ulimit-softlimit
ecstduSoftLimit :: Lens' ECSTaskDefinitionUlimit (Val Integer')
ecstduSoftLimit = lens _eCSTaskDefinitionUlimitSoftLimit (\s a -> s { _eCSTaskDefinitionUlimitSoftLimit = a })
