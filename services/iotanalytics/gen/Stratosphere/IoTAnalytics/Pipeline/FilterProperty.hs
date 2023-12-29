module Stratosphere.IoTAnalytics.Pipeline.FilterProperty (
        FilterProperty(..), mkFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FilterProperty
  = FilterProperty {filter :: (Value Prelude.Text),
                    name :: (Value Prelude.Text),
                    next :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFilterProperty ::
  Value Prelude.Text -> Value Prelude.Text -> FilterProperty
mkFilterProperty filter name
  = FilterProperty
      {filter = filter, name = name, next = Prelude.Nothing}
instance ToResourceProperties FilterProperty where
  toResourceProperties FilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTAnalytics::Pipeline.Filter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Filter" JSON..= filter, "Name" JSON..= name]
                           (Prelude.catMaybes [(JSON..=) "Next" Prelude.<$> next]))}
instance JSON.ToJSON FilterProperty where
  toJSON FilterProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Filter" JSON..= filter, "Name" JSON..= name]
              (Prelude.catMaybes [(JSON..=) "Next" Prelude.<$> next])))
instance Property "Filter" FilterProperty where
  type PropertyType "Filter" FilterProperty = Value Prelude.Text
  set newValue FilterProperty {..}
    = FilterProperty {filter = newValue, ..}
instance Property "Name" FilterProperty where
  type PropertyType "Name" FilterProperty = Value Prelude.Text
  set newValue FilterProperty {..}
    = FilterProperty {name = newValue, ..}
instance Property "Next" FilterProperty where
  type PropertyType "Next" FilterProperty = Value Prelude.Text
  set newValue FilterProperty {..}
    = FilterProperty {next = Prelude.pure newValue, ..}