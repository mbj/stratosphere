module Stratosphere.SecurityHub.AutomationRule.MapFilterProperty (
        MapFilterProperty(..), mkMapFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MapFilterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrule-mapfilter.html>
    MapFilterProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrule-mapfilter.html#cfn-securityhub-automationrule-mapfilter-comparison>
                       comparison :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrule-mapfilter.html#cfn-securityhub-automationrule-mapfilter-key>
                       key :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrule-mapfilter.html#cfn-securityhub-automationrule-mapfilter-value>
                       value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMapFilterProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> MapFilterProperty
mkMapFilterProperty comparison key value
  = MapFilterProperty
      {haddock_workaround_ = (), comparison = comparison, key = key,
       value = value}
instance ToResourceProperties MapFilterProperty where
  toResourceProperties MapFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::SecurityHub::AutomationRule.MapFilter",
         supportsTags = Prelude.False,
         properties = ["Comparison" JSON..= comparison, "Key" JSON..= key,
                       "Value" JSON..= value]}
instance JSON.ToJSON MapFilterProperty where
  toJSON MapFilterProperty {..}
    = JSON.object
        ["Comparison" JSON..= comparison, "Key" JSON..= key,
         "Value" JSON..= value]
instance Property "Comparison" MapFilterProperty where
  type PropertyType "Comparison" MapFilterProperty = Value Prelude.Text
  set newValue MapFilterProperty {..}
    = MapFilterProperty {comparison = newValue, ..}
instance Property "Key" MapFilterProperty where
  type PropertyType "Key" MapFilterProperty = Value Prelude.Text
  set newValue MapFilterProperty {..}
    = MapFilterProperty {key = newValue, ..}
instance Property "Value" MapFilterProperty where
  type PropertyType "Value" MapFilterProperty = Value Prelude.Text
  set newValue MapFilterProperty {..}
    = MapFilterProperty {value = newValue, ..}