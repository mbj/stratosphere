module Stratosphere.Pipes.Pipe.FilterProperty (
        FilterProperty(..), mkFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FilterProperty
  = FilterProperty {pattern :: (Prelude.Maybe (Value Prelude.Text))}
mkFilterProperty :: FilterProperty
mkFilterProperty = FilterProperty {pattern = Prelude.Nothing}
instance ToResourceProperties FilterProperty where
  toResourceProperties FilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe.Filter",
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Pattern" Prelude.<$> pattern])}
instance JSON.ToJSON FilterProperty where
  toJSON FilterProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Pattern" Prelude.<$> pattern]))
instance Property "Pattern" FilterProperty where
  type PropertyType "Pattern" FilterProperty = Value Prelude.Text
  set newValue FilterProperty {}
    = FilterProperty {pattern = Prelude.pure newValue, ..}