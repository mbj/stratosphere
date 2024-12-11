module Stratosphere.Bedrock.Guardrail.ContextualGroundingFilterConfigProperty (
        ContextualGroundingFilterConfigProperty(..),
        mkContextualGroundingFilterConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ContextualGroundingFilterConfigProperty
  = ContextualGroundingFilterConfigProperty {threshold :: (Value Prelude.Double),
                                             type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkContextualGroundingFilterConfigProperty ::
  Value Prelude.Double
  -> Value Prelude.Text -> ContextualGroundingFilterConfigProperty
mkContextualGroundingFilterConfigProperty threshold type'
  = ContextualGroundingFilterConfigProperty
      {threshold = threshold, type' = type'}
instance ToResourceProperties ContextualGroundingFilterConfigProperty where
  toResourceProperties ContextualGroundingFilterConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Guardrail.ContextualGroundingFilterConfig",
         supportsTags = Prelude.False,
         properties = ["Threshold" JSON..= threshold, "Type" JSON..= type']}
instance JSON.ToJSON ContextualGroundingFilterConfigProperty where
  toJSON ContextualGroundingFilterConfigProperty {..}
    = JSON.object ["Threshold" JSON..= threshold, "Type" JSON..= type']
instance Property "Threshold" ContextualGroundingFilterConfigProperty where
  type PropertyType "Threshold" ContextualGroundingFilterConfigProperty = Value Prelude.Double
  set newValue ContextualGroundingFilterConfigProperty {..}
    = ContextualGroundingFilterConfigProperty
        {threshold = newValue, ..}
instance Property "Type" ContextualGroundingFilterConfigProperty where
  type PropertyType "Type" ContextualGroundingFilterConfigProperty = Value Prelude.Text
  set newValue ContextualGroundingFilterConfigProperty {..}
    = ContextualGroundingFilterConfigProperty {type' = newValue, ..}