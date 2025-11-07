module Stratosphere.SES.MailManagerTrafficPolicy.IngressStringToEvaluateProperty (
        module Exports, IngressStringToEvaluateProperty(..),
        mkIngressStringToEvaluateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SES.MailManagerTrafficPolicy.IngressAnalysisProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IngressStringToEvaluateProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagertrafficpolicy-ingressstringtoevaluate.html>
    IngressStringToEvaluateProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagertrafficpolicy-ingressstringtoevaluate.html#cfn-ses-mailmanagertrafficpolicy-ingressstringtoevaluate-analysis>
                                     analysis :: (Prelude.Maybe IngressAnalysisProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagertrafficpolicy-ingressstringtoevaluate.html#cfn-ses-mailmanagertrafficpolicy-ingressstringtoevaluate-attribute>
                                     attribute :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIngressStringToEvaluateProperty ::
  IngressStringToEvaluateProperty
mkIngressStringToEvaluateProperty
  = IngressStringToEvaluateProperty
      {haddock_workaround_ = (), analysis = Prelude.Nothing,
       attribute = Prelude.Nothing}
instance ToResourceProperties IngressStringToEvaluateProperty where
  toResourceProperties IngressStringToEvaluateProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::MailManagerTrafficPolicy.IngressStringToEvaluate",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Analysis" Prelude.<$> analysis,
                            (JSON..=) "Attribute" Prelude.<$> attribute])}
instance JSON.ToJSON IngressStringToEvaluateProperty where
  toJSON IngressStringToEvaluateProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Analysis" Prelude.<$> analysis,
               (JSON..=) "Attribute" Prelude.<$> attribute]))
instance Property "Analysis" IngressStringToEvaluateProperty where
  type PropertyType "Analysis" IngressStringToEvaluateProperty = IngressAnalysisProperty
  set newValue IngressStringToEvaluateProperty {..}
    = IngressStringToEvaluateProperty
        {analysis = Prelude.pure newValue, ..}
instance Property "Attribute" IngressStringToEvaluateProperty where
  type PropertyType "Attribute" IngressStringToEvaluateProperty = Value Prelude.Text
  set newValue IngressStringToEvaluateProperty {..}
    = IngressStringToEvaluateProperty
        {attribute = Prelude.pure newValue, ..}