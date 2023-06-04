module Stratosphere.Shield.Protection.ActionProperty (
        ActionProperty(..), mkActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
data ActionProperty
  = ActionProperty {block :: (Prelude.Maybe JSON.Object),
                    count :: (Prelude.Maybe JSON.Object)}
mkActionProperty :: ActionProperty
mkActionProperty
  = ActionProperty {block = Prelude.Nothing, count = Prelude.Nothing}
instance ToResourceProperties ActionProperty where
  toResourceProperties ActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Shield::Protection.Action",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Block" Prelude.<$> block,
                            (JSON..=) "Count" Prelude.<$> count])}
instance JSON.ToJSON ActionProperty where
  toJSON ActionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Block" Prelude.<$> block,
               (JSON..=) "Count" Prelude.<$> count]))
instance Property "Block" ActionProperty where
  type PropertyType "Block" ActionProperty = JSON.Object
  set newValue ActionProperty {..}
    = ActionProperty {block = Prelude.pure newValue, ..}
instance Property "Count" ActionProperty where
  type PropertyType "Count" ActionProperty = JSON.Object
  set newValue ActionProperty {..}
    = ActionProperty {count = Prelude.pure newValue, ..}