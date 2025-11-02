module Stratosphere.AppIntegrations.EventIntegration.EventFilterProperty (
        EventFilterProperty(..), mkEventFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EventFilterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appintegrations-eventintegration-eventfilter.html>
    EventFilterProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appintegrations-eventintegration-eventfilter.html#cfn-appintegrations-eventintegration-eventfilter-source>
                         source :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEventFilterProperty :: Value Prelude.Text -> EventFilterProperty
mkEventFilterProperty source
  = EventFilterProperty {haddock_workaround_ = (), source = source}
instance ToResourceProperties EventFilterProperty where
  toResourceProperties EventFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppIntegrations::EventIntegration.EventFilter",
         supportsTags = Prelude.False,
         properties = ["Source" JSON..= source]}
instance JSON.ToJSON EventFilterProperty where
  toJSON EventFilterProperty {..}
    = JSON.object ["Source" JSON..= source]
instance Property "Source" EventFilterProperty where
  type PropertyType "Source" EventFilterProperty = Value Prelude.Text
  set newValue EventFilterProperty {..}
    = EventFilterProperty {source = newValue, ..}