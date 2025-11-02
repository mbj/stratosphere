module Stratosphere.GameLift.ContainerGroupDefinition (
        module Exports, ContainerGroupDefinition(..),
        mkContainerGroupDefinition
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.GameLift.ContainerGroupDefinition.GameServerContainerDefinitionProperty as Exports
import {-# SOURCE #-} Stratosphere.GameLift.ContainerGroupDefinition.SupportContainerDefinitionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ContainerGroupDefinition
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-containergroupdefinition.html>
    ContainerGroupDefinition {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-containergroupdefinition.html#cfn-gamelift-containergroupdefinition-containergrouptype>
                              containerGroupType :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-containergroupdefinition.html#cfn-gamelift-containergroupdefinition-gameservercontainerdefinition>
                              gameServerContainerDefinition :: (Prelude.Maybe GameServerContainerDefinitionProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-containergroupdefinition.html#cfn-gamelift-containergroupdefinition-name>
                              name :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-containergroupdefinition.html#cfn-gamelift-containergroupdefinition-operatingsystem>
                              operatingSystem :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-containergroupdefinition.html#cfn-gamelift-containergroupdefinition-sourceversionnumber>
                              sourceVersionNumber :: (Prelude.Maybe (Value Prelude.Integer)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-containergroupdefinition.html#cfn-gamelift-containergroupdefinition-supportcontainerdefinitions>
                              supportContainerDefinitions :: (Prelude.Maybe [SupportContainerDefinitionProperty]),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-containergroupdefinition.html#cfn-gamelift-containergroupdefinition-tags>
                              tags :: (Prelude.Maybe [Tag]),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-containergroupdefinition.html#cfn-gamelift-containergroupdefinition-totalmemorylimitmebibytes>
                              totalMemoryLimitMebibytes :: (Value Prelude.Integer),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-containergroupdefinition.html#cfn-gamelift-containergroupdefinition-totalvcpulimit>
                              totalVcpuLimit :: (Value Prelude.Double),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-containergroupdefinition.html#cfn-gamelift-containergroupdefinition-versiondescription>
                              versionDescription :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkContainerGroupDefinition ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Integer
        -> Value Prelude.Double -> ContainerGroupDefinition
mkContainerGroupDefinition
  name
  operatingSystem
  totalMemoryLimitMebibytes
  totalVcpuLimit
  = ContainerGroupDefinition
      {haddock_workaround_ = (), name = name,
       operatingSystem = operatingSystem,
       totalMemoryLimitMebibytes = totalMemoryLimitMebibytes,
       totalVcpuLimit = totalVcpuLimit,
       containerGroupType = Prelude.Nothing,
       gameServerContainerDefinition = Prelude.Nothing,
       sourceVersionNumber = Prelude.Nothing,
       supportContainerDefinitions = Prelude.Nothing,
       tags = Prelude.Nothing, versionDescription = Prelude.Nothing}
instance ToResourceProperties ContainerGroupDefinition where
  toResourceProperties ContainerGroupDefinition {..}
    = ResourceProperties
        {awsType = "AWS::GameLift::ContainerGroupDefinition",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "OperatingSystem" JSON..= operatingSystem,
                            "TotalMemoryLimitMebibytes" JSON..= totalMemoryLimitMebibytes,
                            "TotalVcpuLimit" JSON..= totalVcpuLimit]
                           (Prelude.catMaybes
                              [(JSON..=) "ContainerGroupType" Prelude.<$> containerGroupType,
                               (JSON..=) "GameServerContainerDefinition"
                                 Prelude.<$> gameServerContainerDefinition,
                               (JSON..=) "SourceVersionNumber" Prelude.<$> sourceVersionNumber,
                               (JSON..=) "SupportContainerDefinitions"
                                 Prelude.<$> supportContainerDefinitions,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "VersionDescription" Prelude.<$> versionDescription]))}
instance JSON.ToJSON ContainerGroupDefinition where
  toJSON ContainerGroupDefinition {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "OperatingSystem" JSON..= operatingSystem,
               "TotalMemoryLimitMebibytes" JSON..= totalMemoryLimitMebibytes,
               "TotalVcpuLimit" JSON..= totalVcpuLimit]
              (Prelude.catMaybes
                 [(JSON..=) "ContainerGroupType" Prelude.<$> containerGroupType,
                  (JSON..=) "GameServerContainerDefinition"
                    Prelude.<$> gameServerContainerDefinition,
                  (JSON..=) "SourceVersionNumber" Prelude.<$> sourceVersionNumber,
                  (JSON..=) "SupportContainerDefinitions"
                    Prelude.<$> supportContainerDefinitions,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "VersionDescription" Prelude.<$> versionDescription])))
instance Property "ContainerGroupType" ContainerGroupDefinition where
  type PropertyType "ContainerGroupType" ContainerGroupDefinition = Value Prelude.Text
  set newValue ContainerGroupDefinition {..}
    = ContainerGroupDefinition
        {containerGroupType = Prelude.pure newValue, ..}
instance Property "GameServerContainerDefinition" ContainerGroupDefinition where
  type PropertyType "GameServerContainerDefinition" ContainerGroupDefinition = GameServerContainerDefinitionProperty
  set newValue ContainerGroupDefinition {..}
    = ContainerGroupDefinition
        {gameServerContainerDefinition = Prelude.pure newValue, ..}
instance Property "Name" ContainerGroupDefinition where
  type PropertyType "Name" ContainerGroupDefinition = Value Prelude.Text
  set newValue ContainerGroupDefinition {..}
    = ContainerGroupDefinition {name = newValue, ..}
instance Property "OperatingSystem" ContainerGroupDefinition where
  type PropertyType "OperatingSystem" ContainerGroupDefinition = Value Prelude.Text
  set newValue ContainerGroupDefinition {..}
    = ContainerGroupDefinition {operatingSystem = newValue, ..}
instance Property "SourceVersionNumber" ContainerGroupDefinition where
  type PropertyType "SourceVersionNumber" ContainerGroupDefinition = Value Prelude.Integer
  set newValue ContainerGroupDefinition {..}
    = ContainerGroupDefinition
        {sourceVersionNumber = Prelude.pure newValue, ..}
instance Property "SupportContainerDefinitions" ContainerGroupDefinition where
  type PropertyType "SupportContainerDefinitions" ContainerGroupDefinition = [SupportContainerDefinitionProperty]
  set newValue ContainerGroupDefinition {..}
    = ContainerGroupDefinition
        {supportContainerDefinitions = Prelude.pure newValue, ..}
instance Property "Tags" ContainerGroupDefinition where
  type PropertyType "Tags" ContainerGroupDefinition = [Tag]
  set newValue ContainerGroupDefinition {..}
    = ContainerGroupDefinition {tags = Prelude.pure newValue, ..}
instance Property "TotalMemoryLimitMebibytes" ContainerGroupDefinition where
  type PropertyType "TotalMemoryLimitMebibytes" ContainerGroupDefinition = Value Prelude.Integer
  set newValue ContainerGroupDefinition {..}
    = ContainerGroupDefinition
        {totalMemoryLimitMebibytes = newValue, ..}
instance Property "TotalVcpuLimit" ContainerGroupDefinition where
  type PropertyType "TotalVcpuLimit" ContainerGroupDefinition = Value Prelude.Double
  set newValue ContainerGroupDefinition {..}
    = ContainerGroupDefinition {totalVcpuLimit = newValue, ..}
instance Property "VersionDescription" ContainerGroupDefinition where
  type PropertyType "VersionDescription" ContainerGroupDefinition = Value Prelude.Text
  set newValue ContainerGroupDefinition {..}
    = ContainerGroupDefinition
        {versionDescription = Prelude.pure newValue, ..}