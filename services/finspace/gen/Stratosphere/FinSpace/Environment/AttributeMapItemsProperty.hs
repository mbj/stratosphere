module Stratosphere.FinSpace.Environment.AttributeMapItemsProperty (
        AttributeMapItemsProperty(..), mkAttributeMapItemsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AttributeMapItemsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-finspace-environment-attributemapitems.html>
    AttributeMapItemsProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-finspace-environment-attributemapitems.html#cfn-finspace-environment-attributemapitems-key>
                               key :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-finspace-environment-attributemapitems.html#cfn-finspace-environment-attributemapitems-value>
                               value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAttributeMapItemsProperty :: AttributeMapItemsProperty
mkAttributeMapItemsProperty
  = AttributeMapItemsProperty
      {haddock_workaround_ = (), key = Prelude.Nothing,
       value = Prelude.Nothing}
instance ToResourceProperties AttributeMapItemsProperty where
  toResourceProperties AttributeMapItemsProperty {..}
    = ResourceProperties
        {awsType = "AWS::FinSpace::Environment.AttributeMapItems",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Key" Prelude.<$> key,
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON AttributeMapItemsProperty where
  toJSON AttributeMapItemsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Key" Prelude.<$> key,
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "Key" AttributeMapItemsProperty where
  type PropertyType "Key" AttributeMapItemsProperty = Value Prelude.Text
  set newValue AttributeMapItemsProperty {..}
    = AttributeMapItemsProperty {key = Prelude.pure newValue, ..}
instance Property "Value" AttributeMapItemsProperty where
  type PropertyType "Value" AttributeMapItemsProperty = Value Prelude.Text
  set newValue AttributeMapItemsProperty {..}
    = AttributeMapItemsProperty {value = Prelude.pure newValue, ..}