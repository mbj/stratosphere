module Stratosphere.Pinpoint.Campaign.InAppMessageHeaderConfigProperty (
        InAppMessageHeaderConfigProperty(..),
        mkInAppMessageHeaderConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InAppMessageHeaderConfigProperty
  = InAppMessageHeaderConfigProperty {alignment :: (Prelude.Maybe (Value Prelude.Text)),
                                      header :: (Prelude.Maybe (Value Prelude.Text)),
                                      textColor :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInAppMessageHeaderConfigProperty ::
  InAppMessageHeaderConfigProperty
mkInAppMessageHeaderConfigProperty
  = InAppMessageHeaderConfigProperty
      {alignment = Prelude.Nothing, header = Prelude.Nothing,
       textColor = Prelude.Nothing}
instance ToResourceProperties InAppMessageHeaderConfigProperty where
  toResourceProperties InAppMessageHeaderConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::Campaign.InAppMessageHeaderConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Alignment" Prelude.<$> alignment,
                            (JSON..=) "Header" Prelude.<$> header,
                            (JSON..=) "TextColor" Prelude.<$> textColor])}
instance JSON.ToJSON InAppMessageHeaderConfigProperty where
  toJSON InAppMessageHeaderConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Alignment" Prelude.<$> alignment,
               (JSON..=) "Header" Prelude.<$> header,
               (JSON..=) "TextColor" Prelude.<$> textColor]))
instance Property "Alignment" InAppMessageHeaderConfigProperty where
  type PropertyType "Alignment" InAppMessageHeaderConfigProperty = Value Prelude.Text
  set newValue InAppMessageHeaderConfigProperty {..}
    = InAppMessageHeaderConfigProperty
        {alignment = Prelude.pure newValue, ..}
instance Property "Header" InAppMessageHeaderConfigProperty where
  type PropertyType "Header" InAppMessageHeaderConfigProperty = Value Prelude.Text
  set newValue InAppMessageHeaderConfigProperty {..}
    = InAppMessageHeaderConfigProperty
        {header = Prelude.pure newValue, ..}
instance Property "TextColor" InAppMessageHeaderConfigProperty where
  type PropertyType "TextColor" InAppMessageHeaderConfigProperty = Value Prelude.Text
  set newValue InAppMessageHeaderConfigProperty {..}
    = InAppMessageHeaderConfigProperty
        {textColor = Prelude.pure newValue, ..}