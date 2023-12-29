module Stratosphere.QuickSight.Template.ArcOptionsProperty (
        ArcOptionsProperty(..), mkArcOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ArcOptionsProperty
  = ArcOptionsProperty {arcThickness :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkArcOptionsProperty :: ArcOptionsProperty
mkArcOptionsProperty
  = ArcOptionsProperty {arcThickness = Prelude.Nothing}
instance ToResourceProperties ArcOptionsProperty where
  toResourceProperties ArcOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.ArcOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ArcThickness" Prelude.<$> arcThickness])}
instance JSON.ToJSON ArcOptionsProperty where
  toJSON ArcOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ArcThickness" Prelude.<$> arcThickness]))
instance Property "ArcThickness" ArcOptionsProperty where
  type PropertyType "ArcThickness" ArcOptionsProperty = Value Prelude.Text
  set newValue ArcOptionsProperty {}
    = ArcOptionsProperty {arcThickness = Prelude.pure newValue, ..}