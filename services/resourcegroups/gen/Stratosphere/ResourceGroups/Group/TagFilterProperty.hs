module Stratosphere.ResourceGroups.Group.TagFilterProperty (
        TagFilterProperty(..), mkTagFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TagFilterProperty
  = TagFilterProperty {key :: (Prelude.Maybe (Value Prelude.Text)),
                       values :: (Prelude.Maybe (ValueList Prelude.Text))}
mkTagFilterProperty :: TagFilterProperty
mkTagFilterProperty
  = TagFilterProperty
      {key = Prelude.Nothing, values = Prelude.Nothing}
instance ToResourceProperties TagFilterProperty where
  toResourceProperties TagFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::ResourceGroups::Group.TagFilter",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Key" Prelude.<$> key,
                            (JSON..=) "Values" Prelude.<$> values])}
instance JSON.ToJSON TagFilterProperty where
  toJSON TagFilterProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Key" Prelude.<$> key,
               (JSON..=) "Values" Prelude.<$> values]))
instance Property "Key" TagFilterProperty where
  type PropertyType "Key" TagFilterProperty = Value Prelude.Text
  set newValue TagFilterProperty {..}
    = TagFilterProperty {key = Prelude.pure newValue, ..}
instance Property "Values" TagFilterProperty where
  type PropertyType "Values" TagFilterProperty = ValueList Prelude.Text
  set newValue TagFilterProperty {..}
    = TagFilterProperty {values = Prelude.pure newValue, ..}