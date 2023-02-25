module Stratosphere.Pinpoint.Campaign.InAppMessageBodyConfigProperty (
        InAppMessageBodyConfigProperty(..),
        mkInAppMessageBodyConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InAppMessageBodyConfigProperty
  = InAppMessageBodyConfigProperty {alignment :: (Prelude.Maybe (Value Prelude.Text)),
                                    body :: (Prelude.Maybe (Value Prelude.Text)),
                                    textColor :: (Prelude.Maybe (Value Prelude.Text))}
mkInAppMessageBodyConfigProperty :: InAppMessageBodyConfigProperty
mkInAppMessageBodyConfigProperty
  = InAppMessageBodyConfigProperty
      {alignment = Prelude.Nothing, body = Prelude.Nothing,
       textColor = Prelude.Nothing}
instance ToResourceProperties InAppMessageBodyConfigProperty where
  toResourceProperties InAppMessageBodyConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::Campaign.InAppMessageBodyConfig",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Alignment" Prelude.<$> alignment,
                            (JSON..=) "Body" Prelude.<$> body,
                            (JSON..=) "TextColor" Prelude.<$> textColor])}
instance JSON.ToJSON InAppMessageBodyConfigProperty where
  toJSON InAppMessageBodyConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Alignment" Prelude.<$> alignment,
               (JSON..=) "Body" Prelude.<$> body,
               (JSON..=) "TextColor" Prelude.<$> textColor]))
instance Property "Alignment" InAppMessageBodyConfigProperty where
  type PropertyType "Alignment" InAppMessageBodyConfigProperty = Value Prelude.Text
  set newValue InAppMessageBodyConfigProperty {..}
    = InAppMessageBodyConfigProperty
        {alignment = Prelude.pure newValue, ..}
instance Property "Body" InAppMessageBodyConfigProperty where
  type PropertyType "Body" InAppMessageBodyConfigProperty = Value Prelude.Text
  set newValue InAppMessageBodyConfigProperty {..}
    = InAppMessageBodyConfigProperty {body = Prelude.pure newValue, ..}
instance Property "TextColor" InAppMessageBodyConfigProperty where
  type PropertyType "TextColor" InAppMessageBodyConfigProperty = Value Prelude.Text
  set newValue InAppMessageBodyConfigProperty {..}
    = InAppMessageBodyConfigProperty
        {textColor = Prelude.pure newValue, ..}