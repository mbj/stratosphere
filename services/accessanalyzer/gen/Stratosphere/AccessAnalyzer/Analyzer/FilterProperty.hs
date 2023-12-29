module Stratosphere.AccessAnalyzer.Analyzer.FilterProperty (
        FilterProperty(..), mkFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FilterProperty
  = FilterProperty {contains :: (Prelude.Maybe (ValueList Prelude.Text)),
                    eq :: (Prelude.Maybe (ValueList Prelude.Text)),
                    exists :: (Prelude.Maybe (Value Prelude.Bool)),
                    neq :: (Prelude.Maybe (ValueList Prelude.Text)),
                    property :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFilterProperty :: Value Prelude.Text -> FilterProperty
mkFilterProperty property
  = FilterProperty
      {property = property, contains = Prelude.Nothing,
       eq = Prelude.Nothing, exists = Prelude.Nothing,
       neq = Prelude.Nothing}
instance ToResourceProperties FilterProperty where
  toResourceProperties FilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::AccessAnalyzer::Analyzer.Filter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Property" JSON..= property]
                           (Prelude.catMaybes
                              [(JSON..=) "Contains" Prelude.<$> contains,
                               (JSON..=) "Eq" Prelude.<$> eq,
                               (JSON..=) "Exists" Prelude.<$> exists,
                               (JSON..=) "Neq" Prelude.<$> neq]))}
instance JSON.ToJSON FilterProperty where
  toJSON FilterProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Property" JSON..= property]
              (Prelude.catMaybes
                 [(JSON..=) "Contains" Prelude.<$> contains,
                  (JSON..=) "Eq" Prelude.<$> eq,
                  (JSON..=) "Exists" Prelude.<$> exists,
                  (JSON..=) "Neq" Prelude.<$> neq])))
instance Property "Contains" FilterProperty where
  type PropertyType "Contains" FilterProperty = ValueList Prelude.Text
  set newValue FilterProperty {..}
    = FilterProperty {contains = Prelude.pure newValue, ..}
instance Property "Eq" FilterProperty where
  type PropertyType "Eq" FilterProperty = ValueList Prelude.Text
  set newValue FilterProperty {..}
    = FilterProperty {eq = Prelude.pure newValue, ..}
instance Property "Exists" FilterProperty where
  type PropertyType "Exists" FilterProperty = Value Prelude.Bool
  set newValue FilterProperty {..}
    = FilterProperty {exists = Prelude.pure newValue, ..}
instance Property "Neq" FilterProperty where
  type PropertyType "Neq" FilterProperty = ValueList Prelude.Text
  set newValue FilterProperty {..}
    = FilterProperty {neq = Prelude.pure newValue, ..}
instance Property "Property" FilterProperty where
  type PropertyType "Property" FilterProperty = Value Prelude.Text
  set newValue FilterProperty {..}
    = FilterProperty {property = newValue, ..}