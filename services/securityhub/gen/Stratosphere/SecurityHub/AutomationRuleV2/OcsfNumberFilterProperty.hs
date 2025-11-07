module Stratosphere.SecurityHub.AutomationRuleV2.OcsfNumberFilterProperty (
        module Exports, OcsfNumberFilterProperty(..),
        mkOcsfNumberFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SecurityHub.AutomationRuleV2.NumberFilterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OcsfNumberFilterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrulev2-ocsfnumberfilter.html>
    OcsfNumberFilterProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrulev2-ocsfnumberfilter.html#cfn-securityhub-automationrulev2-ocsfnumberfilter-fieldname>
                              fieldName :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrulev2-ocsfnumberfilter.html#cfn-securityhub-automationrulev2-ocsfnumberfilter-filter>
                              filter :: NumberFilterProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOcsfNumberFilterProperty ::
  Value Prelude.Text
  -> NumberFilterProperty -> OcsfNumberFilterProperty
mkOcsfNumberFilterProperty fieldName filter
  = OcsfNumberFilterProperty
      {haddock_workaround_ = (), fieldName = fieldName, filter = filter}
instance ToResourceProperties OcsfNumberFilterProperty where
  toResourceProperties OcsfNumberFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::SecurityHub::AutomationRuleV2.OcsfNumberFilter",
         supportsTags = Prelude.False,
         properties = ["FieldName" JSON..= fieldName,
                       "Filter" JSON..= filter]}
instance JSON.ToJSON OcsfNumberFilterProperty where
  toJSON OcsfNumberFilterProperty {..}
    = JSON.object
        ["FieldName" JSON..= fieldName, "Filter" JSON..= filter]
instance Property "FieldName" OcsfNumberFilterProperty where
  type PropertyType "FieldName" OcsfNumberFilterProperty = Value Prelude.Text
  set newValue OcsfNumberFilterProperty {..}
    = OcsfNumberFilterProperty {fieldName = newValue, ..}
instance Property "Filter" OcsfNumberFilterProperty where
  type PropertyType "Filter" OcsfNumberFilterProperty = NumberFilterProperty
  set newValue OcsfNumberFilterProperty {..}
    = OcsfNumberFilterProperty {filter = newValue, ..}