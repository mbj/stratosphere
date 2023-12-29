module Stratosphere.QuickSight.Dashboard.CustomNarrativeOptionsProperty (
        CustomNarrativeOptionsProperty(..),
        mkCustomNarrativeOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomNarrativeOptionsProperty
  = CustomNarrativeOptionsProperty {narrative :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomNarrativeOptionsProperty ::
  Value Prelude.Text -> CustomNarrativeOptionsProperty
mkCustomNarrativeOptionsProperty narrative
  = CustomNarrativeOptionsProperty {narrative = narrative}
instance ToResourceProperties CustomNarrativeOptionsProperty where
  toResourceProperties CustomNarrativeOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.CustomNarrativeOptions",
         supportsTags = Prelude.False,
         properties = ["Narrative" JSON..= narrative]}
instance JSON.ToJSON CustomNarrativeOptionsProperty where
  toJSON CustomNarrativeOptionsProperty {..}
    = JSON.object ["Narrative" JSON..= narrative]
instance Property "Narrative" CustomNarrativeOptionsProperty where
  type PropertyType "Narrative" CustomNarrativeOptionsProperty = Value Prelude.Text
  set newValue CustomNarrativeOptionsProperty {}
    = CustomNarrativeOptionsProperty {narrative = newValue, ..}