module Stratosphere.Bedrock.Guardrail.ContextualGroundingPolicyConfigProperty (
        module Exports, ContextualGroundingPolicyConfigProperty(..),
        mkContextualGroundingPolicyConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.Guardrail.ContextualGroundingFilterConfigProperty as Exports
import Stratosphere.ResourceProperties
data ContextualGroundingPolicyConfigProperty
  = ContextualGroundingPolicyConfigProperty {filtersConfig :: [ContextualGroundingFilterConfigProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkContextualGroundingPolicyConfigProperty ::
  [ContextualGroundingFilterConfigProperty]
  -> ContextualGroundingPolicyConfigProperty
mkContextualGroundingPolicyConfigProperty filtersConfig
  = ContextualGroundingPolicyConfigProperty
      {filtersConfig = filtersConfig}
instance ToResourceProperties ContextualGroundingPolicyConfigProperty where
  toResourceProperties ContextualGroundingPolicyConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Guardrail.ContextualGroundingPolicyConfig",
         supportsTags = Prelude.False,
         properties = ["FiltersConfig" JSON..= filtersConfig]}
instance JSON.ToJSON ContextualGroundingPolicyConfigProperty where
  toJSON ContextualGroundingPolicyConfigProperty {..}
    = JSON.object ["FiltersConfig" JSON..= filtersConfig]
instance Property "FiltersConfig" ContextualGroundingPolicyConfigProperty where
  type PropertyType "FiltersConfig" ContextualGroundingPolicyConfigProperty = [ContextualGroundingFilterConfigProperty]
  set newValue ContextualGroundingPolicyConfigProperty {}
    = ContextualGroundingPolicyConfigProperty
        {filtersConfig = newValue, ..}