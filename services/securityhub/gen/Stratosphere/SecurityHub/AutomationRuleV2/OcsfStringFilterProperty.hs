module Stratosphere.SecurityHub.AutomationRuleV2.OcsfStringFilterProperty (
        module Exports, OcsfStringFilterProperty(..),
        mkOcsfStringFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SecurityHub.AutomationRuleV2.StringFilterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OcsfStringFilterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrulev2-ocsfstringfilter.html>
    OcsfStringFilterProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrulev2-ocsfstringfilter.html#cfn-securityhub-automationrulev2-ocsfstringfilter-fieldname>
                              fieldName :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrulev2-ocsfstringfilter.html#cfn-securityhub-automationrulev2-ocsfstringfilter-filter>
                              filter :: StringFilterProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOcsfStringFilterProperty ::
  Value Prelude.Text
  -> StringFilterProperty -> OcsfStringFilterProperty
mkOcsfStringFilterProperty fieldName filter
  = OcsfStringFilterProperty
      {haddock_workaround_ = (), fieldName = fieldName, filter = filter}
instance ToResourceProperties OcsfStringFilterProperty where
  toResourceProperties OcsfStringFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::SecurityHub::AutomationRuleV2.OcsfStringFilter",
         supportsTags = Prelude.False,
         properties = ["FieldName" JSON..= fieldName,
                       "Filter" JSON..= filter]}
instance JSON.ToJSON OcsfStringFilterProperty where
  toJSON OcsfStringFilterProperty {..}
    = JSON.object
        ["FieldName" JSON..= fieldName, "Filter" JSON..= filter]
instance Property "FieldName" OcsfStringFilterProperty where
  type PropertyType "FieldName" OcsfStringFilterProperty = Value Prelude.Text
  set newValue OcsfStringFilterProperty {..}
    = OcsfStringFilterProperty {fieldName = newValue, ..}
instance Property "Filter" OcsfStringFilterProperty where
  type PropertyType "Filter" OcsfStringFilterProperty = StringFilterProperty
  set newValue OcsfStringFilterProperty {..}
    = OcsfStringFilterProperty {filter = newValue, ..}