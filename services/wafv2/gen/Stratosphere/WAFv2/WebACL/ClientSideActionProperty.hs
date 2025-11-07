module Stratosphere.WAFv2.WebACL.ClientSideActionProperty (
        module Exports, ClientSideActionProperty(..),
        mkClientSideActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.RegexProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ClientSideActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-clientsideaction.html>
    ClientSideActionProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-clientsideaction.html#cfn-wafv2-webacl-clientsideaction-exempturiregularexpressions>
                              exemptUriRegularExpressions :: (Prelude.Maybe [RegexProperty]),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-clientsideaction.html#cfn-wafv2-webacl-clientsideaction-sensitivity>
                              sensitivity :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-clientsideaction.html#cfn-wafv2-webacl-clientsideaction-usageofaction>
                              usageOfAction :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkClientSideActionProperty ::
  Value Prelude.Text -> ClientSideActionProperty
mkClientSideActionProperty usageOfAction
  = ClientSideActionProperty
      {haddock_workaround_ = (), usageOfAction = usageOfAction,
       exemptUriRegularExpressions = Prelude.Nothing,
       sensitivity = Prelude.Nothing}
instance ToResourceProperties ClientSideActionProperty where
  toResourceProperties ClientSideActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.ClientSideAction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["UsageOfAction" JSON..= usageOfAction]
                           (Prelude.catMaybes
                              [(JSON..=) "ExemptUriRegularExpressions"
                                 Prelude.<$> exemptUriRegularExpressions,
                               (JSON..=) "Sensitivity" Prelude.<$> sensitivity]))}
instance JSON.ToJSON ClientSideActionProperty where
  toJSON ClientSideActionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["UsageOfAction" JSON..= usageOfAction]
              (Prelude.catMaybes
                 [(JSON..=) "ExemptUriRegularExpressions"
                    Prelude.<$> exemptUriRegularExpressions,
                  (JSON..=) "Sensitivity" Prelude.<$> sensitivity])))
instance Property "ExemptUriRegularExpressions" ClientSideActionProperty where
  type PropertyType "ExemptUriRegularExpressions" ClientSideActionProperty = [RegexProperty]
  set newValue ClientSideActionProperty {..}
    = ClientSideActionProperty
        {exemptUriRegularExpressions = Prelude.pure newValue, ..}
instance Property "Sensitivity" ClientSideActionProperty where
  type PropertyType "Sensitivity" ClientSideActionProperty = Value Prelude.Text
  set newValue ClientSideActionProperty {..}
    = ClientSideActionProperty
        {sensitivity = Prelude.pure newValue, ..}
instance Property "UsageOfAction" ClientSideActionProperty where
  type PropertyType "UsageOfAction" ClientSideActionProperty = Value Prelude.Text
  set newValue ClientSideActionProperty {..}
    = ClientSideActionProperty {usageOfAction = newValue, ..}