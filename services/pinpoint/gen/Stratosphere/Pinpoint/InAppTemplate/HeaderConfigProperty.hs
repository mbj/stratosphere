module Stratosphere.Pinpoint.InAppTemplate.HeaderConfigProperty (
        HeaderConfigProperty(..), mkHeaderConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HeaderConfigProperty
  = HeaderConfigProperty {alignment :: (Prelude.Maybe (Value Prelude.Text)),
                          header :: (Prelude.Maybe (Value Prelude.Text)),
                          textColor :: (Prelude.Maybe (Value Prelude.Text))}
mkHeaderConfigProperty :: HeaderConfigProperty
mkHeaderConfigProperty
  = HeaderConfigProperty
      {alignment = Prelude.Nothing, header = Prelude.Nothing,
       textColor = Prelude.Nothing}
instance ToResourceProperties HeaderConfigProperty where
  toResourceProperties HeaderConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::InAppTemplate.HeaderConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Alignment" Prelude.<$> alignment,
                            (JSON..=) "Header" Prelude.<$> header,
                            (JSON..=) "TextColor" Prelude.<$> textColor])}
instance JSON.ToJSON HeaderConfigProperty where
  toJSON HeaderConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Alignment" Prelude.<$> alignment,
               (JSON..=) "Header" Prelude.<$> header,
               (JSON..=) "TextColor" Prelude.<$> textColor]))
instance Property "Alignment" HeaderConfigProperty where
  type PropertyType "Alignment" HeaderConfigProperty = Value Prelude.Text
  set newValue HeaderConfigProperty {..}
    = HeaderConfigProperty {alignment = Prelude.pure newValue, ..}
instance Property "Header" HeaderConfigProperty where
  type PropertyType "Header" HeaderConfigProperty = Value Prelude.Text
  set newValue HeaderConfigProperty {..}
    = HeaderConfigProperty {header = Prelude.pure newValue, ..}
instance Property "TextColor" HeaderConfigProperty where
  type PropertyType "TextColor" HeaderConfigProperty = Value Prelude.Text
  set newValue HeaderConfigProperty {..}
    = HeaderConfigProperty {textColor = Prelude.pure newValue, ..}