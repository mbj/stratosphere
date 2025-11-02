module Stratosphere.IoTAnalytics.Pipeline.AddAttributesProperty (
        AddAttributesProperty(..), mkAddAttributesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AddAttributesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-addattributes.html>
    AddAttributesProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-addattributes.html#cfn-iotanalytics-pipeline-addattributes-attributes>
                           attributes :: (Prelude.Map Prelude.Text (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-addattributes.html#cfn-iotanalytics-pipeline-addattributes-name>
                           name :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-addattributes.html#cfn-iotanalytics-pipeline-addattributes-next>
                           next :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAddAttributesProperty ::
  Prelude.Map Prelude.Text (Value Prelude.Text)
  -> Value Prelude.Text -> AddAttributesProperty
mkAddAttributesProperty attributes name
  = AddAttributesProperty
      {haddock_workaround_ = (), attributes = attributes, name = name,
       next = Prelude.Nothing}
instance ToResourceProperties AddAttributesProperty where
  toResourceProperties AddAttributesProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTAnalytics::Pipeline.AddAttributes",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Attributes" JSON..= attributes, "Name" JSON..= name]
                           (Prelude.catMaybes [(JSON..=) "Next" Prelude.<$> next]))}
instance JSON.ToJSON AddAttributesProperty where
  toJSON AddAttributesProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Attributes" JSON..= attributes, "Name" JSON..= name]
              (Prelude.catMaybes [(JSON..=) "Next" Prelude.<$> next])))
instance Property "Attributes" AddAttributesProperty where
  type PropertyType "Attributes" AddAttributesProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue AddAttributesProperty {..}
    = AddAttributesProperty {attributes = newValue, ..}
instance Property "Name" AddAttributesProperty where
  type PropertyType "Name" AddAttributesProperty = Value Prelude.Text
  set newValue AddAttributesProperty {..}
    = AddAttributesProperty {name = newValue, ..}
instance Property "Next" AddAttributesProperty where
  type PropertyType "Next" AddAttributesProperty = Value Prelude.Text
  set newValue AddAttributesProperty {..}
    = AddAttributesProperty {next = Prelude.pure newValue, ..}