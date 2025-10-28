module Stratosphere.Events.Rule.BatchArrayPropertiesProperty (
        BatchArrayPropertiesProperty(..), mkBatchArrayPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BatchArrayPropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-batcharrayproperties.html>
    BatchArrayPropertiesProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-batcharrayproperties.html#cfn-events-rule-batcharrayproperties-size>
                                  size :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBatchArrayPropertiesProperty :: BatchArrayPropertiesProperty
mkBatchArrayPropertiesProperty
  = BatchArrayPropertiesProperty
      {haddock_workaround_ = (), size = Prelude.Nothing}
instance ToResourceProperties BatchArrayPropertiesProperty where
  toResourceProperties BatchArrayPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::Events::Rule.BatchArrayProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Size" Prelude.<$> size])}
instance JSON.ToJSON BatchArrayPropertiesProperty where
  toJSON BatchArrayPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Size" Prelude.<$> size]))
instance Property "Size" BatchArrayPropertiesProperty where
  type PropertyType "Size" BatchArrayPropertiesProperty = Value Prelude.Integer
  set newValue BatchArrayPropertiesProperty {..}
    = BatchArrayPropertiesProperty {size = Prelude.pure newValue, ..}