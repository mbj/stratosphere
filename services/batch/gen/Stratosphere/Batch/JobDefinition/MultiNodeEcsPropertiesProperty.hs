module Stratosphere.Batch.JobDefinition.MultiNodeEcsPropertiesProperty (
        module Exports, MultiNodeEcsPropertiesProperty(..),
        mkMultiNodeEcsPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.MultiNodeEcsTaskPropertiesProperty as Exports
import Stratosphere.ResourceProperties
data MultiNodeEcsPropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-multinodeecsproperties.html>
    MultiNodeEcsPropertiesProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-multinodeecsproperties.html#cfn-batch-jobdefinition-multinodeecsproperties-taskproperties>
                                    taskProperties :: [MultiNodeEcsTaskPropertiesProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMultiNodeEcsPropertiesProperty ::
  [MultiNodeEcsTaskPropertiesProperty]
  -> MultiNodeEcsPropertiesProperty
mkMultiNodeEcsPropertiesProperty taskProperties
  = MultiNodeEcsPropertiesProperty
      {haddock_workaround_ = (), taskProperties = taskProperties}
instance ToResourceProperties MultiNodeEcsPropertiesProperty where
  toResourceProperties MultiNodeEcsPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.MultiNodeEcsProperties",
         supportsTags = Prelude.False,
         properties = ["TaskProperties" JSON..= taskProperties]}
instance JSON.ToJSON MultiNodeEcsPropertiesProperty where
  toJSON MultiNodeEcsPropertiesProperty {..}
    = JSON.object ["TaskProperties" JSON..= taskProperties]
instance Property "TaskProperties" MultiNodeEcsPropertiesProperty where
  type PropertyType "TaskProperties" MultiNodeEcsPropertiesProperty = [MultiNodeEcsTaskPropertiesProperty]
  set newValue MultiNodeEcsPropertiesProperty {..}
    = MultiNodeEcsPropertiesProperty {taskProperties = newValue, ..}