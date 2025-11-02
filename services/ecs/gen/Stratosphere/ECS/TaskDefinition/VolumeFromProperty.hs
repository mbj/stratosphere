module Stratosphere.ECS.TaskDefinition.VolumeFromProperty (
        VolumeFromProperty(..), mkVolumeFromProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VolumeFromProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-volumefrom.html>
    VolumeFromProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-volumefrom.html#cfn-ecs-taskdefinition-volumefrom-readonly>
                        readOnly :: (Prelude.Maybe (Value Prelude.Bool)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-volumefrom.html#cfn-ecs-taskdefinition-volumefrom-sourcecontainer>
                        sourceContainer :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVolumeFromProperty :: VolumeFromProperty
mkVolumeFromProperty
  = VolumeFromProperty
      {haddock_workaround_ = (), readOnly = Prelude.Nothing,
       sourceContainer = Prelude.Nothing}
instance ToResourceProperties VolumeFromProperty where
  toResourceProperties VolumeFromProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::TaskDefinition.VolumeFrom",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ReadOnly" Prelude.<$> readOnly,
                            (JSON..=) "SourceContainer" Prelude.<$> sourceContainer])}
instance JSON.ToJSON VolumeFromProperty where
  toJSON VolumeFromProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ReadOnly" Prelude.<$> readOnly,
               (JSON..=) "SourceContainer" Prelude.<$> sourceContainer]))
instance Property "ReadOnly" VolumeFromProperty where
  type PropertyType "ReadOnly" VolumeFromProperty = Value Prelude.Bool
  set newValue VolumeFromProperty {..}
    = VolumeFromProperty {readOnly = Prelude.pure newValue, ..}
instance Property "SourceContainer" VolumeFromProperty where
  type PropertyType "SourceContainer" VolumeFromProperty = Value Prelude.Text
  set newValue VolumeFromProperty {..}
    = VolumeFromProperty {sourceContainer = Prelude.pure newValue, ..}