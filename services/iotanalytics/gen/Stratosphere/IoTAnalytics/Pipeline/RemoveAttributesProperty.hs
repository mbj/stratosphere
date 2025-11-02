module Stratosphere.IoTAnalytics.Pipeline.RemoveAttributesProperty (
        RemoveAttributesProperty(..), mkRemoveAttributesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RemoveAttributesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-removeattributes.html>
    RemoveAttributesProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-removeattributes.html#cfn-iotanalytics-pipeline-removeattributes-attributes>
                              attributes :: (ValueList Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-removeattributes.html#cfn-iotanalytics-pipeline-removeattributes-name>
                              name :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-removeattributes.html#cfn-iotanalytics-pipeline-removeattributes-next>
                              next :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRemoveAttributesProperty ::
  ValueList Prelude.Text
  -> Value Prelude.Text -> RemoveAttributesProperty
mkRemoveAttributesProperty attributes name
  = RemoveAttributesProperty
      {haddock_workaround_ = (), attributes = attributes, name = name,
       next = Prelude.Nothing}
instance ToResourceProperties RemoveAttributesProperty where
  toResourceProperties RemoveAttributesProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTAnalytics::Pipeline.RemoveAttributes",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Attributes" JSON..= attributes, "Name" JSON..= name]
                           (Prelude.catMaybes [(JSON..=) "Next" Prelude.<$> next]))}
instance JSON.ToJSON RemoveAttributesProperty where
  toJSON RemoveAttributesProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Attributes" JSON..= attributes, "Name" JSON..= name]
              (Prelude.catMaybes [(JSON..=) "Next" Prelude.<$> next])))
instance Property "Attributes" RemoveAttributesProperty where
  type PropertyType "Attributes" RemoveAttributesProperty = ValueList Prelude.Text
  set newValue RemoveAttributesProperty {..}
    = RemoveAttributesProperty {attributes = newValue, ..}
instance Property "Name" RemoveAttributesProperty where
  type PropertyType "Name" RemoveAttributesProperty = Value Prelude.Text
  set newValue RemoveAttributesProperty {..}
    = RemoveAttributesProperty {name = newValue, ..}
instance Property "Next" RemoveAttributesProperty where
  type PropertyType "Next" RemoveAttributesProperty = Value Prelude.Text
  set newValue RemoveAttributesProperty {..}
    = RemoveAttributesProperty {next = Prelude.pure newValue, ..}