module Stratosphere.Pinpoint.InAppTemplate.BodyConfigProperty (
        BodyConfigProperty(..), mkBodyConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BodyConfigProperty
  = BodyConfigProperty {alignment :: (Prelude.Maybe (Value Prelude.Text)),
                        body :: (Prelude.Maybe (Value Prelude.Text)),
                        textColor :: (Prelude.Maybe (Value Prelude.Text))}
mkBodyConfigProperty :: BodyConfigProperty
mkBodyConfigProperty
  = BodyConfigProperty
      {alignment = Prelude.Nothing, body = Prelude.Nothing,
       textColor = Prelude.Nothing}
instance ToResourceProperties BodyConfigProperty where
  toResourceProperties BodyConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::InAppTemplate.BodyConfig",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Alignment" Prelude.<$> alignment,
                            (JSON..=) "Body" Prelude.<$> body,
                            (JSON..=) "TextColor" Prelude.<$> textColor])}
instance JSON.ToJSON BodyConfigProperty where
  toJSON BodyConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Alignment" Prelude.<$> alignment,
               (JSON..=) "Body" Prelude.<$> body,
               (JSON..=) "TextColor" Prelude.<$> textColor]))
instance Property "Alignment" BodyConfigProperty where
  type PropertyType "Alignment" BodyConfigProperty = Value Prelude.Text
  set newValue BodyConfigProperty {..}
    = BodyConfigProperty {alignment = Prelude.pure newValue, ..}
instance Property "Body" BodyConfigProperty where
  type PropertyType "Body" BodyConfigProperty = Value Prelude.Text
  set newValue BodyConfigProperty {..}
    = BodyConfigProperty {body = Prelude.pure newValue, ..}
instance Property "TextColor" BodyConfigProperty where
  type PropertyType "TextColor" BodyConfigProperty = Value Prelude.Text
  set newValue BodyConfigProperty {..}
    = BodyConfigProperty {textColor = Prelude.pure newValue, ..}