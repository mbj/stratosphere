module Stratosphere.AppFlow.Flow.LookoutMetricsDestinationPropertiesProperty (
        LookoutMetricsDestinationPropertiesProperty(..),
        mkLookoutMetricsDestinationPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LookoutMetricsDestinationPropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-lookoutmetricsdestinationproperties.html>
    LookoutMetricsDestinationPropertiesProperty {haddock_workaround_ :: (),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-lookoutmetricsdestinationproperties.html#cfn-appflow-flow-lookoutmetricsdestinationproperties-object>
                                                 object :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLookoutMetricsDestinationPropertiesProperty ::
  LookoutMetricsDestinationPropertiesProperty
mkLookoutMetricsDestinationPropertiesProperty
  = LookoutMetricsDestinationPropertiesProperty
      {haddock_workaround_ = (), object = Prelude.Nothing}
instance ToResourceProperties LookoutMetricsDestinationPropertiesProperty where
  toResourceProperties
    LookoutMetricsDestinationPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::Flow.LookoutMetricsDestinationProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Object" Prelude.<$> object])}
instance JSON.ToJSON LookoutMetricsDestinationPropertiesProperty where
  toJSON LookoutMetricsDestinationPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Object" Prelude.<$> object]))
instance Property "Object" LookoutMetricsDestinationPropertiesProperty where
  type PropertyType "Object" LookoutMetricsDestinationPropertiesProperty = Value Prelude.Text
  set newValue LookoutMetricsDestinationPropertiesProperty {..}
    = LookoutMetricsDestinationPropertiesProperty
        {object = Prelude.pure newValue, ..}