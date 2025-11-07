module Stratosphere.SecurityHub.AutomationRuleV2.OcsfDateFilterProperty (
        module Exports, OcsfDateFilterProperty(..),
        mkOcsfDateFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SecurityHub.AutomationRuleV2.DateFilterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OcsfDateFilterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrulev2-ocsfdatefilter.html>
    OcsfDateFilterProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrulev2-ocsfdatefilter.html#cfn-securityhub-automationrulev2-ocsfdatefilter-fieldname>
                            fieldName :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrulev2-ocsfdatefilter.html#cfn-securityhub-automationrulev2-ocsfdatefilter-filter>
                            filter :: DateFilterProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOcsfDateFilterProperty ::
  Value Prelude.Text -> DateFilterProperty -> OcsfDateFilterProperty
mkOcsfDateFilterProperty fieldName filter
  = OcsfDateFilterProperty
      {haddock_workaround_ = (), fieldName = fieldName, filter = filter}
instance ToResourceProperties OcsfDateFilterProperty where
  toResourceProperties OcsfDateFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::SecurityHub::AutomationRuleV2.OcsfDateFilter",
         supportsTags = Prelude.False,
         properties = ["FieldName" JSON..= fieldName,
                       "Filter" JSON..= filter]}
instance JSON.ToJSON OcsfDateFilterProperty where
  toJSON OcsfDateFilterProperty {..}
    = JSON.object
        ["FieldName" JSON..= fieldName, "Filter" JSON..= filter]
instance Property "FieldName" OcsfDateFilterProperty where
  type PropertyType "FieldName" OcsfDateFilterProperty = Value Prelude.Text
  set newValue OcsfDateFilterProperty {..}
    = OcsfDateFilterProperty {fieldName = newValue, ..}
instance Property "Filter" OcsfDateFilterProperty where
  type PropertyType "Filter" OcsfDateFilterProperty = DateFilterProperty
  set newValue OcsfDateFilterProperty {..}
    = OcsfDateFilterProperty {filter = newValue, ..}