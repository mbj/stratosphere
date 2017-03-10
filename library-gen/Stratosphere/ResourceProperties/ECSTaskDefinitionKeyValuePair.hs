{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-environment.html

module Stratosphere.ResourceProperties.ECSTaskDefinitionKeyValuePair where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for ECSTaskDefinitionKeyValuePair. See
-- 'ecsTaskDefinitionKeyValuePair' for a more convenient constructor.
data ECSTaskDefinitionKeyValuePair =
  ECSTaskDefinitionKeyValuePair
  { _eCSTaskDefinitionKeyValuePairName :: Maybe (Val Text)
  , _eCSTaskDefinitionKeyValuePairValue :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ECSTaskDefinitionKeyValuePair where
  toJSON ECSTaskDefinitionKeyValuePair{..} =
    object $
    catMaybes
    [ ("Name" .=) <$> _eCSTaskDefinitionKeyValuePairName
    , ("Value" .=) <$> _eCSTaskDefinitionKeyValuePairValue
    ]

instance FromJSON ECSTaskDefinitionKeyValuePair where
  parseJSON (Object obj) =
    ECSTaskDefinitionKeyValuePair <$>
      obj .:? "Name" <*>
      obj .:? "Value"
  parseJSON _ = mempty

-- | Constructor for 'ECSTaskDefinitionKeyValuePair' containing required
-- fields as arguments.
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
