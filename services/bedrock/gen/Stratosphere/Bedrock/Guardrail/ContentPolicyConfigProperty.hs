module Stratosphere.Bedrock.Guardrail.ContentPolicyConfigProperty (
        module Exports, ContentPolicyConfigProperty(..),
        mkContentPolicyConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.Guardrail.ContentFilterConfigProperty as Exports
import Stratosphere.ResourceProperties
data ContentPolicyConfigProperty
  = ContentPolicyConfigProperty {filtersConfig :: [ContentFilterConfigProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkContentPolicyConfigProperty ::
  [ContentFilterConfigProperty] -> ContentPolicyConfigProperty
mkContentPolicyConfigProperty filtersConfig
  = ContentPolicyConfigProperty {filtersConfig = filtersConfig}
instance ToResourceProperties ContentPolicyConfigProperty where
  toResourceProperties ContentPolicyConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Guardrail.ContentPolicyConfig",
         supportsTags = Prelude.False,
         properties = ["FiltersConfig" JSON..= filtersConfig]}
instance JSON.ToJSON ContentPolicyConfigProperty where
  toJSON ContentPolicyConfigProperty {..}
    = JSON.object ["FiltersConfig" JSON..= filtersConfig]
instance Property "FiltersConfig" ContentPolicyConfigProperty where
  type PropertyType "FiltersConfig" ContentPolicyConfigProperty = [ContentFilterConfigProperty]
  set newValue ContentPolicyConfigProperty {}
    = ContentPolicyConfigProperty {filtersConfig = newValue, ..}