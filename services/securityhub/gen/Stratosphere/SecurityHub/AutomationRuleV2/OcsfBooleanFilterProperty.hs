module Stratosphere.SecurityHub.AutomationRuleV2.OcsfBooleanFilterProperty (
        module Exports, OcsfBooleanFilterProperty(..),
        mkOcsfBooleanFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SecurityHub.AutomationRuleV2.BooleanFilterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OcsfBooleanFilterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrulev2-ocsfbooleanfilter.html>
    OcsfBooleanFilterProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrulev2-ocsfbooleanfilter.html#cfn-securityhub-automationrulev2-ocsfbooleanfilter-fieldname>
                               fieldName :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrulev2-ocsfbooleanfilter.html#cfn-securityhub-automationrulev2-ocsfbooleanfilter-filter>
                               filter :: BooleanFilterProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOcsfBooleanFilterProperty ::
  Value Prelude.Text
  -> BooleanFilterProperty -> OcsfBooleanFilterProperty
mkOcsfBooleanFilterProperty fieldName filter
  = OcsfBooleanFilterProperty
      {haddock_workaround_ = (), fieldName = fieldName, filter = filter}
instance ToResourceProperties OcsfBooleanFilterProperty where
  toResourceProperties OcsfBooleanFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::SecurityHub::AutomationRuleV2.OcsfBooleanFilter",
         supportsTags = Prelude.False,
         properties = ["FieldName" JSON..= fieldName,
                       "Filter" JSON..= filter]}
instance JSON.ToJSON OcsfBooleanFilterProperty where
  toJSON OcsfBooleanFilterProperty {..}
    = JSON.object
        ["FieldName" JSON..= fieldName, "Filter" JSON..= filter]
instance Property "FieldName" OcsfBooleanFilterProperty where
  type PropertyType "FieldName" OcsfBooleanFilterProperty = Value Prelude.Text
  set newValue OcsfBooleanFilterProperty {..}
    = OcsfBooleanFilterProperty {fieldName = newValue, ..}
instance Property "Filter" OcsfBooleanFilterProperty where
  type PropertyType "Filter" OcsfBooleanFilterProperty = BooleanFilterProperty
  set newValue OcsfBooleanFilterProperty {..}
    = OcsfBooleanFilterProperty {filter = newValue, ..}