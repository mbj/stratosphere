module Stratosphere.RDS.DBProxyEndpoint.TagFormatProperty (
        TagFormatProperty(..), mkTagFormatProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TagFormatProperty
  = TagFormatProperty {key :: (Prelude.Maybe (Value Prelude.Text)),
                       value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTagFormatProperty :: TagFormatProperty
mkTagFormatProperty
  = TagFormatProperty
      {key = Prelude.Nothing, value = Prelude.Nothing}
instance ToResourceProperties TagFormatProperty where
  toResourceProperties TagFormatProperty {..}
    = ResourceProperties
        {awsType = "AWS::RDS::DBProxyEndpoint.TagFormat",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Key" Prelude.<$> key,
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON TagFormatProperty where
  toJSON TagFormatProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Key" Prelude.<$> key,
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "Key" TagFormatProperty where
  type PropertyType "Key" TagFormatProperty = Value Prelude.Text
  set newValue TagFormatProperty {..}
    = TagFormatProperty {key = Prelude.pure newValue, ..}
instance Property "Value" TagFormatProperty where
  type PropertyType "Value" TagFormatProperty = Value Prelude.Text
  set newValue TagFormatProperty {..}
    = TagFormatProperty {value = Prelude.pure newValue, ..}