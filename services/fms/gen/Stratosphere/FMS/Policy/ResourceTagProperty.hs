module Stratosphere.FMS.Policy.ResourceTagProperty (
        ResourceTagProperty(..), mkResourceTagProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResourceTagProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fms-policy-resourcetag.html>
    ResourceTagProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fms-policy-resourcetag.html#cfn-fms-policy-resourcetag-key>
                         key :: (Value Prelude.Text),
                         -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fms-policy-resourcetag.html#cfn-fms-policy-resourcetag-value>
                         value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResourceTagProperty :: Value Prelude.Text -> ResourceTagProperty
mkResourceTagProperty key
  = ResourceTagProperty {key = key, value = Prelude.Nothing}
instance ToResourceProperties ResourceTagProperty where
  toResourceProperties ResourceTagProperty {..}
    = ResourceProperties
        {awsType = "AWS::FMS::Policy.ResourceTag",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Key" JSON..= key]
                           (Prelude.catMaybes [(JSON..=) "Value" Prelude.<$> value]))}
instance JSON.ToJSON ResourceTagProperty where
  toJSON ResourceTagProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Key" JSON..= key]
              (Prelude.catMaybes [(JSON..=) "Value" Prelude.<$> value])))
instance Property "Key" ResourceTagProperty where
  type PropertyType "Key" ResourceTagProperty = Value Prelude.Text
  set newValue ResourceTagProperty {..}
    = ResourceTagProperty {key = newValue, ..}
instance Property "Value" ResourceTagProperty where
  type PropertyType "Value" ResourceTagProperty = Value Prelude.Text
  set newValue ResourceTagProperty {..}
    = ResourceTagProperty {value = Prelude.pure newValue, ..}