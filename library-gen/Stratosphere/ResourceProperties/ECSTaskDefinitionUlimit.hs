{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-ulimit.html

module Stratosphere.ResourceProperties.ECSTaskDefinitionUlimit where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for ECSTaskDefinitionUlimit. See
-- | 'ecsTaskDefinitionUlimit' for a more convenient constructor.
data ECSTaskDefinitionUlimit =
  ECSTaskDefinitionUlimit
  { _eCSTaskDefinitionUlimitHardLimit :: Val Integer'
  , _eCSTaskDefinitionUlimitName :: Val Text
  , _eCSTaskDefinitionUlimitSoftLimit :: Val Integer'
  } deriving (Show, Generic)

instance ToJSON ECSTaskDefinitionUlimit where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 24, omitNothingFields = True }

instance FromJSON ECSTaskDefinitionUlimit where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 24, omitNothingFields = True }

-- | Constructor for 'ECSTaskDefinitionUlimit' containing required fields as
-- | arguments.
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
