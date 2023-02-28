module Stratosphere.SageMaker.EndpointConfig.ClarifyTextConfigProperty (
        ClarifyTextConfigProperty(..), mkClarifyTextConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ClarifyTextConfigProperty
  = ClarifyTextConfigProperty {granularity :: (Value Prelude.Text),
                               language :: (Value Prelude.Text)}
mkClarifyTextConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ClarifyTextConfigProperty
mkClarifyTextConfigProperty granularity language
  = ClarifyTextConfigProperty
      {granularity = granularity, language = language}
instance ToResourceProperties ClarifyTextConfigProperty where
  toResourceProperties ClarifyTextConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::EndpointConfig.ClarifyTextConfig",
         supportsTags = Prelude.False,
         properties = ["Granularity" JSON..= granularity,
                       "Language" JSON..= language]}
instance JSON.ToJSON ClarifyTextConfigProperty where
  toJSON ClarifyTextConfigProperty {..}
    = JSON.object
        ["Granularity" JSON..= granularity, "Language" JSON..= language]
instance Property "Granularity" ClarifyTextConfigProperty where
  type PropertyType "Granularity" ClarifyTextConfigProperty = Value Prelude.Text
  set newValue ClarifyTextConfigProperty {..}
    = ClarifyTextConfigProperty {granularity = newValue, ..}
instance Property "Language" ClarifyTextConfigProperty where
  type PropertyType "Language" ClarifyTextConfigProperty = Value Prelude.Text
  set newValue ClarifyTextConfigProperty {..}
    = ClarifyTextConfigProperty {language = newValue, ..}