module Stratosphere.SES.MailManagerTrafficPolicy.IngressBooleanToEvaluateProperty (
        module Exports, IngressBooleanToEvaluateProperty(..),
        mkIngressBooleanToEvaluateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SES.MailManagerTrafficPolicy.IngressAnalysisProperty as Exports
import Stratosphere.ResourceProperties
data IngressBooleanToEvaluateProperty
  = IngressBooleanToEvaluateProperty {analysis :: IngressAnalysisProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIngressBooleanToEvaluateProperty ::
  IngressAnalysisProperty -> IngressBooleanToEvaluateProperty
mkIngressBooleanToEvaluateProperty analysis
  = IngressBooleanToEvaluateProperty {analysis = analysis}
instance ToResourceProperties IngressBooleanToEvaluateProperty where
  toResourceProperties IngressBooleanToEvaluateProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::MailManagerTrafficPolicy.IngressBooleanToEvaluate",
         supportsTags = Prelude.False,
         properties = ["Analysis" JSON..= analysis]}
instance JSON.ToJSON IngressBooleanToEvaluateProperty where
  toJSON IngressBooleanToEvaluateProperty {..}
    = JSON.object ["Analysis" JSON..= analysis]
instance Property "Analysis" IngressBooleanToEvaluateProperty where
  type PropertyType "Analysis" IngressBooleanToEvaluateProperty = IngressAnalysisProperty
  set newValue IngressBooleanToEvaluateProperty {}
    = IngressBooleanToEvaluateProperty {analysis = newValue, ..}