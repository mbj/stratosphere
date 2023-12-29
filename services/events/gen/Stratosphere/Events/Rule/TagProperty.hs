module Stratosphere.Events.Rule.TagProperty (
        Tag(..), mkTag
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Tag
  = Tag {key :: (Prelude.Maybe (Value Prelude.Text)),
         value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTag :: Tag
mkTag = Tag {key = Prelude.Nothing, value = Prelude.Nothing}
instance ToResourceProperties Tag where
  toResourceProperties Tag {..}
    = ResourceProperties
        {awsType = "AWS::Events::Rule.Tag", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Key" Prelude.<$> key,
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON Tag where
  toJSON Tag {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Key" Prelude.<$> key,
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "Key" Tag where
  type PropertyType "Key" Tag = Value Prelude.Text
  set newValue Tag {..} = Tag {key = Prelude.pure newValue, ..}
instance Property "Value" Tag where
  type PropertyType "Value" Tag = Value Prelude.Text
  set newValue Tag {..} = Tag {value = Prelude.pure newValue, ..}