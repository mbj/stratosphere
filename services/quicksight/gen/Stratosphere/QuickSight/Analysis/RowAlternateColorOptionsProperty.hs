module Stratosphere.QuickSight.Analysis.RowAlternateColorOptionsProperty (
        RowAlternateColorOptionsProperty(..),
        mkRowAlternateColorOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RowAlternateColorOptionsProperty
  = RowAlternateColorOptionsProperty {rowAlternateColors :: (Prelude.Maybe (ValueList Prelude.Text)),
                                      status :: (Prelude.Maybe (Value Prelude.Text)),
                                      usePrimaryBackgroundColor :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRowAlternateColorOptionsProperty ::
  RowAlternateColorOptionsProperty
mkRowAlternateColorOptionsProperty
  = RowAlternateColorOptionsProperty
      {rowAlternateColors = Prelude.Nothing, status = Prelude.Nothing,
       usePrimaryBackgroundColor = Prelude.Nothing}
instance ToResourceProperties RowAlternateColorOptionsProperty where
  toResourceProperties RowAlternateColorOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.RowAlternateColorOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "RowAlternateColors" Prelude.<$> rowAlternateColors,
                            (JSON..=) "Status" Prelude.<$> status,
                            (JSON..=) "UsePrimaryBackgroundColor"
                              Prelude.<$> usePrimaryBackgroundColor])}
instance JSON.ToJSON RowAlternateColorOptionsProperty where
  toJSON RowAlternateColorOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "RowAlternateColors" Prelude.<$> rowAlternateColors,
               (JSON..=) "Status" Prelude.<$> status,
               (JSON..=) "UsePrimaryBackgroundColor"
                 Prelude.<$> usePrimaryBackgroundColor]))
instance Property "RowAlternateColors" RowAlternateColorOptionsProperty where
  type PropertyType "RowAlternateColors" RowAlternateColorOptionsProperty = ValueList Prelude.Text
  set newValue RowAlternateColorOptionsProperty {..}
    = RowAlternateColorOptionsProperty
        {rowAlternateColors = Prelude.pure newValue, ..}
instance Property "Status" RowAlternateColorOptionsProperty where
  type PropertyType "Status" RowAlternateColorOptionsProperty = Value Prelude.Text
  set newValue RowAlternateColorOptionsProperty {..}
    = RowAlternateColorOptionsProperty
        {status = Prelude.pure newValue, ..}
instance Property "UsePrimaryBackgroundColor" RowAlternateColorOptionsProperty where
  type PropertyType "UsePrimaryBackgroundColor" RowAlternateColorOptionsProperty = Value Prelude.Text
  set newValue RowAlternateColorOptionsProperty {..}
    = RowAlternateColorOptionsProperty
        {usePrimaryBackgroundColor = Prelude.pure newValue, ..}