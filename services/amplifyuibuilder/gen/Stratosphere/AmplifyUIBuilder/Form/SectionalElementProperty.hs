module Stratosphere.AmplifyUIBuilder.Form.SectionalElementProperty (
        module Exports, SectionalElementProperty(..),
        mkSectionalElementProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AmplifyUIBuilder.Form.FieldPositionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SectionalElementProperty
  = SectionalElementProperty {excluded :: (Prelude.Maybe (Value Prelude.Bool)),
                              level :: (Prelude.Maybe (Value Prelude.Double)),
                              orientation :: (Prelude.Maybe (Value Prelude.Text)),
                              position :: (Prelude.Maybe FieldPositionProperty),
                              text :: (Prelude.Maybe (Value Prelude.Text)),
                              type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSectionalElementProperty ::
  Value Prelude.Text -> SectionalElementProperty
mkSectionalElementProperty type'
  = SectionalElementProperty
      {type' = type', excluded = Prelude.Nothing,
       level = Prelude.Nothing, orientation = Prelude.Nothing,
       position = Prelude.Nothing, text = Prelude.Nothing}
instance ToResourceProperties SectionalElementProperty where
  toResourceProperties SectionalElementProperty {..}
    = ResourceProperties
        {awsType = "AWS::AmplifyUIBuilder::Form.SectionalElement",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "Excluded" Prelude.<$> excluded,
                               (JSON..=) "Level" Prelude.<$> level,
                               (JSON..=) "Orientation" Prelude.<$> orientation,
                               (JSON..=) "Position" Prelude.<$> position,
                               (JSON..=) "Text" Prelude.<$> text]))}
instance JSON.ToJSON SectionalElementProperty where
  toJSON SectionalElementProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "Excluded" Prelude.<$> excluded,
                  (JSON..=) "Level" Prelude.<$> level,
                  (JSON..=) "Orientation" Prelude.<$> orientation,
                  (JSON..=) "Position" Prelude.<$> position,
                  (JSON..=) "Text" Prelude.<$> text])))
instance Property "Excluded" SectionalElementProperty where
  type PropertyType "Excluded" SectionalElementProperty = Value Prelude.Bool
  set newValue SectionalElementProperty {..}
    = SectionalElementProperty {excluded = Prelude.pure newValue, ..}
instance Property "Level" SectionalElementProperty where
  type PropertyType "Level" SectionalElementProperty = Value Prelude.Double
  set newValue SectionalElementProperty {..}
    = SectionalElementProperty {level = Prelude.pure newValue, ..}
instance Property "Orientation" SectionalElementProperty where
  type PropertyType "Orientation" SectionalElementProperty = Value Prelude.Text
  set newValue SectionalElementProperty {..}
    = SectionalElementProperty
        {orientation = Prelude.pure newValue, ..}
instance Property "Position" SectionalElementProperty where
  type PropertyType "Position" SectionalElementProperty = FieldPositionProperty
  set newValue SectionalElementProperty {..}
    = SectionalElementProperty {position = Prelude.pure newValue, ..}
instance Property "Text" SectionalElementProperty where
  type PropertyType "Text" SectionalElementProperty = Value Prelude.Text
  set newValue SectionalElementProperty {..}
    = SectionalElementProperty {text = Prelude.pure newValue, ..}
instance Property "Type" SectionalElementProperty where
  type PropertyType "Type" SectionalElementProperty = Value Prelude.Text
  set newValue SectionalElementProperty {..}
    = SectionalElementProperty {type' = newValue, ..}