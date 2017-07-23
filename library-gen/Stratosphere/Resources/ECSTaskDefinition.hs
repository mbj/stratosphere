{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskdefinition.html

module Stratosphere.Resources.ECSTaskDefinition where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.ECSTaskDefinitionContainerDefinition
import Stratosphere.ResourceProperties.ECSTaskDefinitionTaskDefinitionPlacementConstraint
import Stratosphere.ResourceProperties.ECSTaskDefinitionVolume

-- | Full data type definition for ECSTaskDefinition. See 'ecsTaskDefinition'
-- for a more convenient constructor.
data ECSTaskDefinition =
  ECSTaskDefinition
  { _eCSTaskDefinitionContainerDefinitions :: Maybe [ECSTaskDefinitionContainerDefinition]
  , _eCSTaskDefinitionFamily :: Maybe (Val Text)
  , _eCSTaskDefinitionNetworkMode :: Maybe (Val Text)
  , _eCSTaskDefinitionPlacementConstraints :: Maybe [ECSTaskDefinitionTaskDefinitionPlacementConstraint]
  , _eCSTaskDefinitionTaskRoleArn :: Maybe (Val Text)
  , _eCSTaskDefinitionVolumes :: Maybe [ECSTaskDefinitionVolume]
  } deriving (Show, Eq)

instance ToJSON ECSTaskDefinition where
  toJSON ECSTaskDefinition{..} =
    object $
    catMaybes
    [ fmap (("ContainerDefinitions",) . toJSON) _eCSTaskDefinitionContainerDefinitions
    , fmap (("Family",) . toJSON) _eCSTaskDefinitionFamily
    , fmap (("NetworkMode",) . toJSON) _eCSTaskDefinitionNetworkMode
    , fmap (("PlacementConstraints",) . toJSON) _eCSTaskDefinitionPlacementConstraints
    , fmap (("TaskRoleArn",) . toJSON) _eCSTaskDefinitionTaskRoleArn
    , fmap (("Volumes",) . toJSON) _eCSTaskDefinitionVolumes
    ]

instance FromJSON ECSTaskDefinition where
  parseJSON (Object obj) =
    ECSTaskDefinition <$>
      (obj .:? "ContainerDefinitions") <*>
      (obj .:? "Family") <*>
      (obj .:? "NetworkMode") <*>
      (obj .:? "PlacementConstraints") <*>
      (obj .:? "TaskRoleArn") <*>
      (obj .:? "Volumes")
  parseJSON _ = mempty

-- | Constructor for 'ECSTaskDefinition' containing required fields as
-- arguments.
ecsTaskDefinition
  :: ECSTaskDefinition
ecsTaskDefinition  =
  ECSTaskDefinition
  { _eCSTaskDefinitionContainerDefinitions = Nothing
  , _eCSTaskDefinitionFamily = Nothing
  , _eCSTaskDefinitionNetworkMode = Nothing
  , _eCSTaskDefinitionPlacementConstraints = Nothing
  , _eCSTaskDefinitionTaskRoleArn = Nothing
  , _eCSTaskDefinitionVolumes = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskdefinition.html#cfn-ecs-taskdefinition-containerdefinitions
ecstdContainerDefinitions :: Lens' ECSTaskDefinition (Maybe [ECSTaskDefinitionContainerDefinition])
ecstdContainerDefinitions = lens _eCSTaskDefinitionContainerDefinitions (\s a -> s { _eCSTaskDefinitionContainerDefinitions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskdefinition.html#cfn-ecs-taskdefinition-family
ecstdFamily :: Lens' ECSTaskDefinition (Maybe (Val Text))
ecstdFamily = lens _eCSTaskDefinitionFamily (\s a -> s { _eCSTaskDefinitionFamily = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskdefinition.html#cfn-ecs-taskdefinition-networkmode
ecstdNetworkMode :: Lens' ECSTaskDefinition (Maybe (Val Text))
ecstdNetworkMode = lens _eCSTaskDefinitionNetworkMode (\s a -> s { _eCSTaskDefinitionNetworkMode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskdefinition.html#cfn-ecs-taskdefinition-placementconstraints
ecstdPlacementConstraints :: Lens' ECSTaskDefinition (Maybe [ECSTaskDefinitionTaskDefinitionPlacementConstraint])
ecstdPlacementConstraints = lens _eCSTaskDefinitionPlacementConstraints (\s a -> s { _eCSTaskDefinitionPlacementConstraints = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskdefinition.html#cfn-ecs-taskdefinition-taskrolearn
ecstdTaskRoleArn :: Lens' ECSTaskDefinition (Maybe (Val Text))
ecstdTaskRoleArn = lens _eCSTaskDefinitionTaskRoleArn (\s a -> s { _eCSTaskDefinitionTaskRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskdefinition.html#cfn-ecs-taskdefinition-volumes
ecstdVolumes :: Lens' ECSTaskDefinition (Maybe [ECSTaskDefinitionVolume])
ecstdVolumes = lens _eCSTaskDefinitionVolumes (\s a -> s { _eCSTaskDefinitionVolumes = a })
