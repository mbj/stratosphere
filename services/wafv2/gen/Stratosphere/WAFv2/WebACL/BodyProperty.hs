module Stratosphere.WAFv2.WebACL.BodyProperty (
        BodyProperty(..), mkBodyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BodyProperty
  = BodyProperty {oversizeHandling :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBodyProperty :: BodyProperty
mkBodyProperty = BodyProperty {oversizeHandling = Prelude.Nothing}
instance ToResourceProperties BodyProperty where
  toResourceProperties BodyProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.Body", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "OversizeHandling" Prelude.<$> oversizeHandling])}
instance JSON.ToJSON BodyProperty where
  toJSON BodyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "OversizeHandling" Prelude.<$> oversizeHandling]))
instance Property "OversizeHandling" BodyProperty where
  type PropertyType "OversizeHandling" BodyProperty = Value Prelude.Text
  set newValue BodyProperty {}
    = BodyProperty {oversizeHandling = Prelude.pure newValue, ..}