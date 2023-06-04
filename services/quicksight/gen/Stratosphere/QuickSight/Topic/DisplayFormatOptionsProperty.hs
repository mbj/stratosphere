module Stratosphere.QuickSight.Topic.DisplayFormatOptionsProperty (
        module Exports, DisplayFormatOptionsProperty(..),
        mkDisplayFormatOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Topic.NegativeFormatProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DisplayFormatOptionsProperty
  = DisplayFormatOptionsProperty {blankCellFormat :: (Prelude.Maybe (Value Prelude.Text)),
                                  currencySymbol :: (Prelude.Maybe (Value Prelude.Text)),
                                  dateFormat :: (Prelude.Maybe (Value Prelude.Text)),
                                  decimalSeparator :: (Prelude.Maybe (Value Prelude.Text)),
                                  fractionDigits :: (Prelude.Maybe (Value Prelude.Double)),
                                  groupingSeparator :: (Prelude.Maybe (Value Prelude.Text)),
                                  negativeFormat :: (Prelude.Maybe NegativeFormatProperty),
                                  prefix :: (Prelude.Maybe (Value Prelude.Text)),
                                  suffix :: (Prelude.Maybe (Value Prelude.Text)),
                                  unitScaler :: (Prelude.Maybe (Value Prelude.Text)),
                                  useBlankCellFormat :: (Prelude.Maybe (Value Prelude.Bool)),
                                  useGrouping :: (Prelude.Maybe (Value Prelude.Bool))}
mkDisplayFormatOptionsProperty :: DisplayFormatOptionsProperty
mkDisplayFormatOptionsProperty
  = DisplayFormatOptionsProperty
      {blankCellFormat = Prelude.Nothing,
       currencySymbol = Prelude.Nothing, dateFormat = Prelude.Nothing,
       decimalSeparator = Prelude.Nothing,
       fractionDigits = Prelude.Nothing,
       groupingSeparator = Prelude.Nothing,
       negativeFormat = Prelude.Nothing, prefix = Prelude.Nothing,
       suffix = Prelude.Nothing, unitScaler = Prelude.Nothing,
       useBlankCellFormat = Prelude.Nothing,
       useGrouping = Prelude.Nothing}
instance ToResourceProperties DisplayFormatOptionsProperty where
  toResourceProperties DisplayFormatOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Topic.DisplayFormatOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BlankCellFormat" Prelude.<$> blankCellFormat,
                            (JSON..=) "CurrencySymbol" Prelude.<$> currencySymbol,
                            (JSON..=) "DateFormat" Prelude.<$> dateFormat,
                            (JSON..=) "DecimalSeparator" Prelude.<$> decimalSeparator,
                            (JSON..=) "FractionDigits" Prelude.<$> fractionDigits,
                            (JSON..=) "GroupingSeparator" Prelude.<$> groupingSeparator,
                            (JSON..=) "NegativeFormat" Prelude.<$> negativeFormat,
                            (JSON..=) "Prefix" Prelude.<$> prefix,
                            (JSON..=) "Suffix" Prelude.<$> suffix,
                            (JSON..=) "UnitScaler" Prelude.<$> unitScaler,
                            (JSON..=) "UseBlankCellFormat" Prelude.<$> useBlankCellFormat,
                            (JSON..=) "UseGrouping" Prelude.<$> useGrouping])}
instance JSON.ToJSON DisplayFormatOptionsProperty where
  toJSON DisplayFormatOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BlankCellFormat" Prelude.<$> blankCellFormat,
               (JSON..=) "CurrencySymbol" Prelude.<$> currencySymbol,
               (JSON..=) "DateFormat" Prelude.<$> dateFormat,
               (JSON..=) "DecimalSeparator" Prelude.<$> decimalSeparator,
               (JSON..=) "FractionDigits" Prelude.<$> fractionDigits,
               (JSON..=) "GroupingSeparator" Prelude.<$> groupingSeparator,
               (JSON..=) "NegativeFormat" Prelude.<$> negativeFormat,
               (JSON..=) "Prefix" Prelude.<$> prefix,
               (JSON..=) "Suffix" Prelude.<$> suffix,
               (JSON..=) "UnitScaler" Prelude.<$> unitScaler,
               (JSON..=) "UseBlankCellFormat" Prelude.<$> useBlankCellFormat,
               (JSON..=) "UseGrouping" Prelude.<$> useGrouping]))
instance Property "BlankCellFormat" DisplayFormatOptionsProperty where
  type PropertyType "BlankCellFormat" DisplayFormatOptionsProperty = Value Prelude.Text
  set newValue DisplayFormatOptionsProperty {..}
    = DisplayFormatOptionsProperty
        {blankCellFormat = Prelude.pure newValue, ..}
instance Property "CurrencySymbol" DisplayFormatOptionsProperty where
  type PropertyType "CurrencySymbol" DisplayFormatOptionsProperty = Value Prelude.Text
  set newValue DisplayFormatOptionsProperty {..}
    = DisplayFormatOptionsProperty
        {currencySymbol = Prelude.pure newValue, ..}
instance Property "DateFormat" DisplayFormatOptionsProperty where
  type PropertyType "DateFormat" DisplayFormatOptionsProperty = Value Prelude.Text
  set newValue DisplayFormatOptionsProperty {..}
    = DisplayFormatOptionsProperty
        {dateFormat = Prelude.pure newValue, ..}
instance Property "DecimalSeparator" DisplayFormatOptionsProperty where
  type PropertyType "DecimalSeparator" DisplayFormatOptionsProperty = Value Prelude.Text
  set newValue DisplayFormatOptionsProperty {..}
    = DisplayFormatOptionsProperty
        {decimalSeparator = Prelude.pure newValue, ..}
instance Property "FractionDigits" DisplayFormatOptionsProperty where
  type PropertyType "FractionDigits" DisplayFormatOptionsProperty = Value Prelude.Double
  set newValue DisplayFormatOptionsProperty {..}
    = DisplayFormatOptionsProperty
        {fractionDigits = Prelude.pure newValue, ..}
instance Property "GroupingSeparator" DisplayFormatOptionsProperty where
  type PropertyType "GroupingSeparator" DisplayFormatOptionsProperty = Value Prelude.Text
  set newValue DisplayFormatOptionsProperty {..}
    = DisplayFormatOptionsProperty
        {groupingSeparator = Prelude.pure newValue, ..}
instance Property "NegativeFormat" DisplayFormatOptionsProperty where
  type PropertyType "NegativeFormat" DisplayFormatOptionsProperty = NegativeFormatProperty
  set newValue DisplayFormatOptionsProperty {..}
    = DisplayFormatOptionsProperty
        {negativeFormat = Prelude.pure newValue, ..}
instance Property "Prefix" DisplayFormatOptionsProperty where
  type PropertyType "Prefix" DisplayFormatOptionsProperty = Value Prelude.Text
  set newValue DisplayFormatOptionsProperty {..}
    = DisplayFormatOptionsProperty {prefix = Prelude.pure newValue, ..}
instance Property "Suffix" DisplayFormatOptionsProperty where
  type PropertyType "Suffix" DisplayFormatOptionsProperty = Value Prelude.Text
  set newValue DisplayFormatOptionsProperty {..}
    = DisplayFormatOptionsProperty {suffix = Prelude.pure newValue, ..}
instance Property "UnitScaler" DisplayFormatOptionsProperty where
  type PropertyType "UnitScaler" DisplayFormatOptionsProperty = Value Prelude.Text
  set newValue DisplayFormatOptionsProperty {..}
    = DisplayFormatOptionsProperty
        {unitScaler = Prelude.pure newValue, ..}
instance Property "UseBlankCellFormat" DisplayFormatOptionsProperty where
  type PropertyType "UseBlankCellFormat" DisplayFormatOptionsProperty = Value Prelude.Bool
  set newValue DisplayFormatOptionsProperty {..}
    = DisplayFormatOptionsProperty
        {useBlankCellFormat = Prelude.pure newValue, ..}
instance Property "UseGrouping" DisplayFormatOptionsProperty where
  type PropertyType "UseGrouping" DisplayFormatOptionsProperty = Value Prelude.Bool
  set newValue DisplayFormatOptionsProperty {..}
    = DisplayFormatOptionsProperty
        {useGrouping = Prelude.pure newValue, ..}