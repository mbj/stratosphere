module Stratosphere.Config.ConfigurationRecorder.ExclusionByResourceTypesProperty (
        ExclusionByResourceTypesProperty(..),
        mkExclusionByResourceTypesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ExclusionByResourceTypesProperty
  = ExclusionByResourceTypesProperty {resourceTypes :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkExclusionByResourceTypesProperty ::
  ValueList Prelude.Text -> ExclusionByResourceTypesProperty
mkExclusionByResourceTypesProperty resourceTypes
  = ExclusionByResourceTypesProperty {resourceTypes = resourceTypes}
instance ToResourceProperties ExclusionByResourceTypesProperty where
  toResourceProperties ExclusionByResourceTypesProperty {..}
    = ResourceProperties
        {awsType = "AWS::Config::ConfigurationRecorder.ExclusionByResourceTypes",
         supportsTags = Prelude.False,
         properties = ["ResourceTypes" JSON..= resourceTypes]}
instance JSON.ToJSON ExclusionByResourceTypesProperty where
  toJSON ExclusionByResourceTypesProperty {..}
    = JSON.object ["ResourceTypes" JSON..= resourceTypes]
instance Property "ResourceTypes" ExclusionByResourceTypesProperty where
  type PropertyType "ResourceTypes" ExclusionByResourceTypesProperty = ValueList Prelude.Text
  set newValue ExclusionByResourceTypesProperty {}
    = ExclusionByResourceTypesProperty {resourceTypes = newValue, ..}