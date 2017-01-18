{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-environment.html

module Stratosphere.ResourceProperties.ECSTaskDefinitionKeyValuePair where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for ECSTaskDefinitionKeyValuePair. See
-- | 'ecsTaskDefinitionKeyValuePair' for a more convenient constructor.
data ECSTaskDefinitionKeyValuePair =
  ECSTaskDefinitionKeyValuePair
  { _eCSTaskDefinitionKeyValuePairName :: Maybe (Val Text)
  , _eCSTaskDefinitionKeyValuePairValue :: Maybe (Val Text)
  } deriving (Show, Eq, Generic)

instance ToJSON ECSTaskDefinitionKeyValuePair where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 30, omitNothingFields = True }

instance FromJSON ECSTaskDefinitionKeyValuePair where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 30, omitNothingFields = True }

-- | Constructor for 'ECSTaskDefinitionKeyValuePair' containing required
-- | fields as arguments.
ecsTaskDefinitionKeyValuePair
  :: ECSTaskDefinitionKeyValuePair
ecsTaskDefinitionKeyValuePair  =
  ECSTaskDefinitionKeyValuePair
  { _eCSTaskDefinitionKeyValuePairName = Nothing
  , _eCSTaskDefinitionKeyValuePairValue = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-environment.html#cfn-ecs-taskdefinition-containerdefinition-environment-name
ecstdkvpName :: Lens' ECSTaskDefinitionKeyValuePair (Maybe (Val Text))
ecstdkvpName = lens _eCSTaskDefinitionKeyValuePairName (\s a -> s { _eCSTaskDefinitionKeyValuePairName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-environment.html#cfn-ecs-taskdefinition-containerdefinition-environment-value
ecstdkvpValue :: Lens' ECSTaskDefinitionKeyValuePair (Maybe (Val Text))
ecstdkvpValue = lens _eCSTaskDefinitionKeyValuePairValue (\s a -> s { _eCSTaskDefinitionKeyValuePairValue = a })
