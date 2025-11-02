module Stratosphere.IoTAnalytics.Pipeline.FilterProperty (
        FilterProperty(..), mkFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FilterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-filter.html>
    FilterProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-filter.html#cfn-iotanalytics-pipeline-filter-filter>
                    filter :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-filter.html#cfn-iotanalytics-pipeline-filter-name>
                    name :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-filter.html#cfn-iotanalytics-pipeline-filter-next>
                    next :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFilterProperty ::
  Value Prelude.Text -> Value Prelude.Text -> FilterProperty
mkFilterProperty filter name
  = FilterProperty
      {haddock_workaround_ = (), filter = filter, name = name,
       next = Prelude.Nothing}
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