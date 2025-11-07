module Stratosphere.SecurityHub.AutomationRuleV2.OcsfMapFilterProperty (
        module Exports, OcsfMapFilterProperty(..), mkOcsfMapFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SecurityHub.AutomationRuleV2.MapFilterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OcsfMapFilterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrulev2-ocsfmapfilter.html>
    OcsfMapFilterProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrulev2-ocsfmapfilter.html#cfn-securityhub-automationrulev2-ocsfmapfilter-fieldname>
                           fieldName :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrulev2-ocsfmapfilter.html#cfn-securityhub-automationrulev2-ocsfmapfilter-filter>
                           filter :: MapFilterProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOcsfMapFilterProperty ::
  Value Prelude.Text -> MapFilterProperty -> OcsfMapFilterProperty
mkOcsfMapFilterProperty fieldName filter
  = OcsfMapFilterProperty
      {haddock_workaround_ = (), fieldName = fieldName, filter = filter}
instance ToResourceProperties OcsfMapFilterProperty where
  toResourceProperties OcsfMapFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::SecurityHub::AutomationRuleV2.OcsfMapFilter",
         supportsTags = Prelude.False,
         properties = ["FieldName" JSON..= fieldName,
                       "Filter" JSON..= filter]}
instance JSON.ToJSON OcsfMapFilterProperty where
  toJSON OcsfMapFilterProperty {..}
    = JSON.object
        ["FieldName" JSON..= fieldName, "Filter" JSON..= filter]
instance Property "FieldName" OcsfMapFilterProperty where
  type PropertyType "FieldName" OcsfMapFilterProperty = Value Prelude.Text
  set newValue OcsfMapFilterProperty {..}
    = OcsfMapFilterProperty {fieldName = newValue, ..}
instance Property "Filter" OcsfMapFilterProperty where
  type PropertyType "Filter" OcsfMapFilterProperty = MapFilterProperty
  set newValue OcsfMapFilterProperty {..}
    = OcsfMapFilterProperty {filter = newValue, ..}