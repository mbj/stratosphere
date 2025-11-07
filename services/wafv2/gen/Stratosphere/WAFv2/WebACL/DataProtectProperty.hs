module Stratosphere.WAFv2.WebACL.DataProtectProperty (
        module Exports, DataProtectProperty(..), mkDataProtectProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.FieldToProtectProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataProtectProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-dataprotect.html>
    DataProtectProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-dataprotect.html#cfn-wafv2-webacl-dataprotect-action>
                         action :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-dataprotect.html#cfn-wafv2-webacl-dataprotect-excluderatebaseddetails>
                         excludeRateBasedDetails :: (Prelude.Maybe (Value Prelude.Bool)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-dataprotect.html#cfn-wafv2-webacl-dataprotect-excluderulematchdetails>
                         excludeRuleMatchDetails :: (Prelude.Maybe (Value Prelude.Bool)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-dataprotect.html#cfn-wafv2-webacl-dataprotect-field>
                         field :: FieldToProtectProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataProtectProperty ::
  Value Prelude.Text -> FieldToProtectProperty -> DataProtectProperty
mkDataProtectProperty action field
  = DataProtectProperty
      {haddock_workaround_ = (), action = action, field = field,
       excludeRateBasedDetails = Prelude.Nothing,
       excludeRuleMatchDetails = Prelude.Nothing}
instance ToResourceProperties DataProtectProperty where
  toResourceProperties DataProtectProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.DataProtect",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Action" JSON..= action, "Field" JSON..= field]
                           (Prelude.catMaybes
                              [(JSON..=) "ExcludeRateBasedDetails"
                                 Prelude.<$> excludeRateBasedDetails,
                               (JSON..=) "ExcludeRuleMatchDetails"
                                 Prelude.<$> excludeRuleMatchDetails]))}
instance JSON.ToJSON DataProtectProperty where
  toJSON DataProtectProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Action" JSON..= action, "Field" JSON..= field]
              (Prelude.catMaybes
                 [(JSON..=) "ExcludeRateBasedDetails"
                    Prelude.<$> excludeRateBasedDetails,
                  (JSON..=) "ExcludeRuleMatchDetails"
                    Prelude.<$> excludeRuleMatchDetails])))
instance Property "Action" DataProtectProperty where
  type PropertyType "Action" DataProtectProperty = Value Prelude.Text
  set newValue DataProtectProperty {..}
    = DataProtectProperty {action = newValue, ..}
instance Property "ExcludeRateBasedDetails" DataProtectProperty where
  type PropertyType "ExcludeRateBasedDetails" DataProtectProperty = Value Prelude.Bool
  set newValue DataProtectProperty {..}
    = DataProtectProperty
        {excludeRateBasedDetails = Prelude.pure newValue, ..}
instance Property "ExcludeRuleMatchDetails" DataProtectProperty where
  type PropertyType "ExcludeRuleMatchDetails" DataProtectProperty = Value Prelude.Bool
  set newValue DataProtectProperty {..}
    = DataProtectProperty
        {excludeRuleMatchDetails = Prelude.pure newValue, ..}
instance Property "Field" DataProtectProperty where
  type PropertyType "Field" DataProtectProperty = FieldToProtectProperty
  set newValue DataProtectProperty {..}
    = DataProtectProperty {field = newValue, ..}