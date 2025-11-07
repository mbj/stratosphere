module Stratosphere.SES.MailManagerTrafficPolicy.IngressBooleanToEvaluateProperty (
        module Exports, IngressBooleanToEvaluateProperty(..),
        mkIngressBooleanToEvaluateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SES.MailManagerTrafficPolicy.IngressAnalysisProperty as Exports
import {-# SOURCE #-} Stratosphere.SES.MailManagerTrafficPolicy.IngressIsInAddressListProperty as Exports
import Stratosphere.ResourceProperties
data IngressBooleanToEvaluateProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagertrafficpolicy-ingressbooleantoevaluate.html>
    IngressBooleanToEvaluateProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagertrafficpolicy-ingressbooleantoevaluate.html#cfn-ses-mailmanagertrafficpolicy-ingressbooleantoevaluate-analysis>
                                      analysis :: (Prelude.Maybe IngressAnalysisProperty),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagertrafficpolicy-ingressbooleantoevaluate.html#cfn-ses-mailmanagertrafficpolicy-ingressbooleantoevaluate-isinaddresslist>
                                      isInAddressList :: (Prelude.Maybe IngressIsInAddressListProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIngressBooleanToEvaluateProperty ::
  IngressBooleanToEvaluateProperty
mkIngressBooleanToEvaluateProperty
  = IngressBooleanToEvaluateProperty
      {haddock_workaround_ = (), analysis = Prelude.Nothing,
       isInAddressList = Prelude.Nothing}
instance ToResourceProperties IngressBooleanToEvaluateProperty where
  toResourceProperties IngressBooleanToEvaluateProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::MailManagerTrafficPolicy.IngressBooleanToEvaluate",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Analysis" Prelude.<$> analysis,
                            (JSON..=) "IsInAddressList" Prelude.<$> isInAddressList])}
instance JSON.ToJSON IngressBooleanToEvaluateProperty where
  toJSON IngressBooleanToEvaluateProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Analysis" Prelude.<$> analysis,
               (JSON..=) "IsInAddressList" Prelude.<$> isInAddressList]))
instance Property "Analysis" IngressBooleanToEvaluateProperty where
  type PropertyType "Analysis" IngressBooleanToEvaluateProperty = IngressAnalysisProperty
  set newValue IngressBooleanToEvaluateProperty {..}
    = IngressBooleanToEvaluateProperty
        {analysis = Prelude.pure newValue, ..}
instance Property "IsInAddressList" IngressBooleanToEvaluateProperty where
  type PropertyType "IsInAddressList" IngressBooleanToEvaluateProperty = IngressIsInAddressListProperty
  set newValue IngressBooleanToEvaluateProperty {..}
    = IngressBooleanToEvaluateProperty
        {isInAddressList = Prelude.pure newValue, ..}