module Stratosphere.AmplifyUIBuilder.Component.ComponentVariantProperty (
        ComponentVariantProperty(..), mkComponentVariantProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ComponentVariantProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-componentvariant.html>
    ComponentVariantProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-componentvariant.html#cfn-amplifyuibuilder-component-componentvariant-overrides>
                              overrides :: (Prelude.Maybe JSON.Object),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-componentvariant.html#cfn-amplifyuibuilder-component-componentvariant-variantvalues>
                              variantValues :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkComponentVariantProperty :: ComponentVariantProperty
mkComponentVariantProperty
  = ComponentVariantProperty
      {haddock_workaround_ = (), overrides = Prelude.Nothing,
       variantValues = Prelude.Nothing}
instance ToResourceProperties ComponentVariantProperty where
  toResourceProperties ComponentVariantProperty {..}
    = ResourceProperties
        {awsType = "AWS::AmplifyUIBuilder::Component.ComponentVariant",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Overrides" Prelude.<$> overrides,
                            (JSON..=) "VariantValues" Prelude.<$> variantValues])}
instance JSON.ToJSON ComponentVariantProperty where
  toJSON ComponentVariantProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Overrides" Prelude.<$> overrides,
               (JSON..=) "VariantValues" Prelude.<$> variantValues]))
instance Property "Overrides" ComponentVariantProperty where
  type PropertyType "Overrides" ComponentVariantProperty = JSON.Object
  set newValue ComponentVariantProperty {..}
    = ComponentVariantProperty {overrides = Prelude.pure newValue, ..}
instance Property "VariantValues" ComponentVariantProperty where
  type PropertyType "VariantValues" ComponentVariantProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue ComponentVariantProperty {..}
    = ComponentVariantProperty
        {variantValues = Prelude.pure newValue, ..}