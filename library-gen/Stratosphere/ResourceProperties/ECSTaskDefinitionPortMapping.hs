{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-portmappings.html

module Stratosphere.ResourceProperties.ECSTaskDefinitionPortMapping where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for ECSTaskDefinitionPortMapping. See
-- | 'ecsTaskDefinitionPortMapping' for a more convenient constructor.
data ECSTaskDefinitionPortMapping =
  ECSTaskDefinitionPortMapping
  { _eCSTaskDefinitionPortMappingContainerPort :: Maybe (Val Integer')
  , _eCSTaskDefinitionPortMappingHostPort :: Maybe (Val Integer')
  , _eCSTaskDefinitionPortMappingProtocol :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON ECSTaskDefinitionPortMapping where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 29, omitNothingFields = True }

instance FromJSON ECSTaskDefinitionPortMapping where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 29, omitNothingFields = True }

-- | Constructor for 'ECSTaskDefinitionPortMapping' containing required fields
-- | as arguments.
ecsTaskDefinitionPortMapping
  :: ECSTaskDefinitionPortMapping
ecsTaskDefinitionPortMapping  =
  ECSTaskDefinitionPortMapping
  { _eCSTaskDefinitionPortMappingContainerPort = Nothing
  , _eCSTaskDefinitionPortMappingHostPort = Nothing
  , _eCSTaskDefinitionPortMappingProtocol = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-portmappings.html#cfn-ecs-taskdefinition-containerdefinition-portmappings-containerport
ecstdpmContainerPort :: Lens' ECSTaskDefinitionPortMapping (Maybe (Val Integer'))
ecstdpmContainerPort = lens _eCSTaskDefinitionPortMappingContainerPort (\s a -> s { _eCSTaskDefinitionPortMappingContainerPort = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-portmappings.html#cfn-ecs-taskdefinition-containerdefinition-portmappings-readonly
ecstdpmHostPort :: Lens' ECSTaskDefinitionPortMapping (Maybe (Val Integer'))
ecstdpmHostPort = lens _eCSTaskDefinitionPortMappingHostPort (\s a -> s { _eCSTaskDefinitionPortMappingHostPort = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-portmappings.html#cfn-ecs-taskdefinition-containerdefinition-portmappings-sourcevolume
ecstdpmProtocol :: Lens' ECSTaskDefinitionPortMapping (Maybe (Val Text))
ecstdpmProtocol = lens _eCSTaskDefinitionPortMappingProtocol (\s a -> s { _eCSTaskDefinitionPortMappingProtocol = a })
